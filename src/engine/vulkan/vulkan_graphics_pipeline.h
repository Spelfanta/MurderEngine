#ifndef VULKAN_GRAPHICS_PIPELINE_H
  #define VULKAN_GRAPHICS_PIPELINE_H

VkShaderModule me::vulkan_api::setup_shader_module(char* source, uint32_t size)
{
  VkShaderModuleCreateInfo create_info = {};
  create_info.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
  create_info.codeSize = size;
  create_info.pCode = reinterpret_cast<const uint32_t*>(source);
  VkShaderModule shader_module;
  VkResult result = vkCreateShaderModule(device, &create_info, nullptr, &shader_module);
  if (result != VK_SUCCESS)
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to create shader module\n" << LOG_ANSI_RESET;
  return shader_module;
}

int me::vulkan_api::add_viewport(int x, int y, uint32_t width, uint32_t height)
{
  /* viewport */
  VkViewport viewport = {};
  viewport.x = x;
  viewport.y = y;
  viewport.width = (float) width; // swap_chain_extent.width
  viewport.height = (float) height; // swap_chain_extent.height
  viewport.minDepth = 0.0F;
  viewport.maxDepth = 1.0F;

  /* scissor */
  VkRect2D scissor = {};
  scissor.offset = {0, 0};
  scissor.extent = swap_chain_extent;

  /* adding to vector */
  viewports.push_back(viewport);
  scissors.push_back(scissor);
  return ME_FINE;
}

int me::vulkan_api::setup_viewports(VkPipelineViewportStateCreateInfo &viewport_state)
{
  viewport_state.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO;
  viewport_state.viewportCount = viewports.size();
  viewport_state.pViewports = &viewports[0];
  viewport_state.scissorCount = scissors.size();
  viewport_state.pScissors = &scissors[0];
  return ME_FINE;
}

int me::vulkan_api::setup_rasterization_state(
  VkPipelineRasterizationStateCreateInfo &rasterizer,
  VkPipelineMultisampleStateCreateInfo &multisampling,
  VkPipelineColorBlendAttachmentState &color_blend_attachment,
  VkPipelineColorBlendStateCreateInfo &color_blending,
  VkPipelineDynamicStateCreateInfo &dynamic_state
)
{
  rasterizer.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
  rasterizer.depthClampEnable = VK_FALSE;
  rasterizer.rasterizerDiscardEnable = VK_FALSE;
  rasterizer.polygonMode = VK_POLYGON_MODE_FILL;
  rasterizer.lineWidth = 1.0F;
  rasterizer.cullMode = VK_CULL_MODE_BACK_BIT;
  rasterizer.frontFace = VK_FRONT_FACE_CLOCKWISE;
  rasterizer.depthBiasEnable = VK_FALSE;
  rasterizer.depthBiasConstantFactor = 0.0F;
  rasterizer.depthBiasClamp = 0.0F;
  rasterizer.depthBiasSlopeFactor = 0.0F;

  multisampling.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
  multisampling.sampleShadingEnable = VK_FALSE;
  multisampling.rasterizationSamples = VK_SAMPLE_COUNT_1_BIT;
  multisampling.minSampleShading = 1.0F;
  multisampling.pSampleMask = nullptr;
  multisampling.alphaToCoverageEnable = VK_FALSE;
  multisampling.alphaToOneEnable = VK_FALSE;

  color_blend_attachment.colorWriteMask =
  VK_COLOR_COMPONENT_R_BIT |
  VK_COLOR_COMPONENT_G_BIT |
  VK_COLOR_COMPONENT_B_BIT |
  VK_COLOR_COMPONENT_A_BIT;
  color_blend_attachment.blendEnable = VK_FALSE;
  color_blend_attachment.srcColorBlendFactor = VK_BLEND_FACTOR_ONE;
  color_blend_attachment.dstColorBlendFactor = VK_BLEND_FACTOR_ZERO;
  color_blend_attachment.colorBlendOp = VK_BLEND_OP_ADD;
  color_blend_attachment.srcAlphaBlendFactor = VK_BLEND_FACTOR_ONE;
  color_blend_attachment.dstAlphaBlendFactor = VK_BLEND_FACTOR_ZERO;
  color_blend_attachment.alphaBlendOp = VK_BLEND_OP_ADD;

/*
  if (color_blend_attachment.blendEnable)
  {
    color_blend_attachment.finalColor.rgb = (
      color_blend_attachment.srcColorBlendFactor *
      color_blend_attachment.newColor.rgb) <color_blend_attachment.colorBlendOp> (
        color_blend_attachment.dstColorBlendFactor * color_blend_attachment.oldColor.rgb);
    color_blend_attachment.finalColor.a = (
      color_blend_attachment.srcAlphaBlendFactor *
      color_blend_attachment.newColor.a) <color_blend_attachment.alphaBlendOp> (
        color_blend_attachment.dstAlphaBlendFactor * color_blend_attachment.oldColor.a);
  }else
    color_blend_attachment.finalColor = color_blend_attachment.newColor;
  color_blend_attachment.finalColor = color_blend_attachment.finalColor & color_blend_attachment.colorWriteMask;

  color_blend_attachment.finalColor.rgb = color_blend_attachment.newAlpha * color_blend_attachment.newColor + (1 - color_blend_attachment.newAlpha) * color_blend_attachment.oldColor;
  color_blend_attachment.finalColor.a = color_blend_attachment.newAlpha.a;
  */

  color_blending.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
  color_blending.logicOpEnable = VK_FALSE;
  color_blending.logicOp = VK_LOGIC_OP_COPY;
  color_blending.attachmentCount = 1;
  color_blending.pAttachments = &color_blend_attachment;
  color_blending.blendConstants[0] = 0.0F;
  color_blending.blendConstants[1] = 0.0F;
  color_blending.blendConstants[2] = 0.0F;
  color_blending.blendConstants[3] = 0.0F;

  VkDynamicState dynamic_states[] = {
    VK_DYNAMIC_STATE_VIEWPORT,
    VK_DYNAMIC_STATE_LINE_WIDTH
  };

  dynamic_state.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO;
  dynamic_state.dynamicStateCount = 2;
  dynamic_state.pDynamicStates = dynamic_states;
  return ME_FINE;
}

int me::vulkan_api::setup_render_pass()
{
  VkAttachmentDescription color_attachment = {};
  color_attachment.format = swap_chain_image_format;
  color_attachment.samples = VK_SAMPLE_COUNT_1_BIT;
  color_attachment.loadOp = VK_ATTACHMENT_LOAD_OP_CLEAR;
  color_attachment.storeOp = VK_ATTACHMENT_STORE_OP_STORE;
  color_attachment.stencilLoadOp = VK_ATTACHMENT_LOAD_OP_DONT_CARE;
  color_attachment.stencilStoreOp = VK_ATTACHMENT_STORE_OP_DONT_CARE;
  color_attachment.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;
  color_attachment.finalLayout = VK_IMAGE_LAYOUT_PRESENT_SRC_KHR;

  VkAttachmentReference color_attachment_ref = {};
  color_attachment_ref.attachment = 0;
  color_attachment_ref.layout = VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL;

  VkSubpassDescription subpass = {};
  subpass.pipelineBindPoint = VK_PIPELINE_BIND_POINT_GRAPHICS;
  subpass.colorAttachmentCount = 1;
  subpass.pColorAttachments = &color_attachment_ref;

  VkSubpassDependency dependency = {};
  dependency.srcSubpass = VK_SUBPASS_EXTERNAL;
  dependency.dstSubpass = 0;
  dependency.srcStageMask = VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT;
  dependency.srcAccessMask = 0;
  dependency.dstStageMask = VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT;
  dependency.dstAccessMask = VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT;

  VkRenderPassCreateInfo render_pass_info = {};
  render_pass_info.sType = VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO;
  render_pass_info.attachmentCount = 1;
  render_pass_info.pAttachments = &color_attachment;
  render_pass_info.subpassCount = 1;
  render_pass_info.pSubpasses = &subpass;
  render_pass_info.dependencyCount = 1;
  render_pass_info.pDependencies = &dependency;
  VkResult result = vkCreateRenderPass(device, &render_pass_info, nullptr, &render_pass);
  if (result != VK_SUCCESS)
  {
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to create render pass\n" << LOG_ANSI_RESET;
    return ME_ERR;
  }
  return ME_FINE;
}

int me::vulkan_api::setup_graphics_pipeline(me::shader_program* program)
{
  /* shaders */
  std::map<me::shader_type, std::string> &shaders = program->shaders;
  std::map<me::shader_type, VkShaderModule> shader_modules;
  for (auto const &[key, value] : shaders)
    shader_modules[key] = setup_shader_module((char*)value.c_str(), value.size());

  VkPipelineShaderStageCreateInfo shader_stages[shader_modules.size()];
  uint32_t i = 0;
  for (auto const &[key, value] : shader_modules)
  {
    VkPipelineShaderStageCreateInfo create_info = {};
    create_info.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
    if (key==me::shader_type::VERTEX) create_info.stage = VK_SHADER_STAGE_VERTEX_BIT;
    else if (key==me::shader_type::FRAGMENT) create_info.stage = VK_SHADER_STAGE_FRAGMENT_BIT;
    create_info.module = value;
    create_info.pName = "main";
    shader_stages[i] = create_info;
    i++;
  }

  auto binding_description = vvertex::get_binding_description();
  auto attribute_descriptions = vvertex::get_attribute_descriptions();
  VkPipelineVertexInputStateCreateInfo vertex_input_info = {};
  vertex_input_info.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;
  vertex_input_info.vertexBindingDescriptionCount = 1;
  vertex_input_info.vertexAttributeDescriptionCount = static_cast<uint32_t>(attribute_descriptions.size());
  vertex_input_info.pVertexBindingDescriptions = &binding_description;
  vertex_input_info.pVertexAttributeDescriptions = attribute_descriptions.data();

  VkPipelineInputAssemblyStateCreateInfo input_assembly = {};
  input_assembly.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
  input_assembly.topology = VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;
  input_assembly.primitiveRestartEnable = VK_FALSE;

  /* layout */
  VkPipelineLayoutCreateInfo pipeline_layout_info = {};
  pipeline_layout_info.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
  pipeline_layout_info.setLayoutCount = 0;
  pipeline_layout_info.pSetLayouts = nullptr;
  pipeline_layout_info.pushConstantRangeCount = 0;
  pipeline_layout_info.pPushConstantRanges = nullptr;

  /* viewport */
  VkPipelineViewportStateCreateInfo viewport_state = {};
  add_viewport(0, 0, window_width, window_height);
  setup_viewports(viewport_state);

  /* rasterizer */
  VkPipelineRasterizationStateCreateInfo rasterizer = {};
  VkPipelineMultisampleStateCreateInfo multisampling = {};
  VkPipelineColorBlendAttachmentState color_blend_attachment = {};
  VkPipelineColorBlendStateCreateInfo color_blending = {};
  VkPipelineDynamicStateCreateInfo dynamic_state = {};
  setup_rasterization_state(rasterizer, multisampling, color_blend_attachment, color_blending, dynamic_state);

  VkResult result = vkCreatePipelineLayout(device, &pipeline_layout_info, nullptr, &pipeline_layout);
  if (result != VK_SUCCESS)
  {
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to create pipeline layout\n" << LOG_ANSI_RESET;
    return ME_ERR;
  }

  VkGraphicsPipelineCreateInfo pipeline_info = {};
  pipeline_info.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO;
  pipeline_info.stageCount = 2;
  pipeline_info.pStages = shader_stages;
  pipeline_info.pVertexInputState = &vertex_input_info;
  pipeline_info.pInputAssemblyState = &input_assembly;
  pipeline_info.pViewportState = &viewport_state;
  pipeline_info.pRasterizationState = &rasterizer;
  pipeline_info.pMultisampleState = &multisampling;
  pipeline_info.pDepthStencilState = nullptr;
  pipeline_info.pColorBlendState = &color_blending;
  pipeline_info.pDynamicState = nullptr; // TODO: maybe set it to "dynamic_state"?

  pipeline_info.layout = pipeline_layout;
  pipeline_info.renderPass = render_pass;
  pipeline_info.subpass = 0;
  pipeline_info.basePipelineHandle = VK_NULL_HANDLE;
  pipeline_info.basePipelineIndex = -1;

  result = vkCreateGraphicsPipelines(device, VK_NULL_HANDLE, 1, &pipeline_info, nullptr, &graphics_pipeline);
  if (result != VK_SUCCESS)
  {
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to create graphics pipeline\n" << LOG_ANSI_RESET;
    return ME_ERR;
  }

  for (auto const &[key, value] : shader_modules)
    vkDestroyShaderModule(device, value, nullptr);
  return ME_FINE;
}

int me::vulkan_api::setup_buffer(VkDeviceSize size, VkBufferUsageFlags usage, VkMemoryPropertyFlags properties, VkBuffer &buffer, VkDeviceMemory &buffer_mem)
{
  VkBufferCreateInfo buffer_info = {};
  buffer_info.sType = VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO;
  buffer_info.size = size;
  buffer_info.usage = VK_BUFFER_USAGE_VERTEX_BUFFER_BIT;
  buffer_info.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
  VkResult result = vkCreateBuffer(device, &buffer_info, nullptr, &buffer);
  if (result != VK_SUCCESS)
  {
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to create vertex buffer\n" << LOG_ANSI_RESET;
    return ME_ERR;
  }
  VkMemoryRequirements mem_requirements;
  vkGetBufferMemoryRequirements(device, buffer, &mem_requirements);
  VkMemoryAllocateInfo alloc_info = {};
  alloc_info.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
  alloc_info.allocationSize = mem_requirements.size;
  alloc_info.memoryTypeIndex = find_memory_type(mem_requirements.memoryTypeBits, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
  result = vkAllocateMemory(device, &alloc_info, nullptr, &buffer_mem);
  if (result != VK_SUCCESS)
  {
    std::cout << LOG_COLOR_RED << "[Vulkan] [ERR]: failed to allocate memory for the vertex buffer\n" << LOG_ANSI_RESET;
    return ME_ERR;
  }
  vkBindBufferMemory(device, buffer, buffer_mem, 0);
  return ME_FINE;
}

int me::vulkan_api::setup_vertex_buffer(me::vulkan_api::vmesh &mesh)
{
  VkDeviceSize buffer_size = sizeof(vvertex) * mesh.vertices.size();
  setup_buffer(buffer_size, VK_BUFFER_USAGE_VERTEX_BUFFER_BIT, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, mesh.vertex_buffer, mesh.vertex_buffer_mem);
  void* data;
  vkMapMemory(device, mesh.vertex_buffer_mem, 0, buffer_size, 0, &data);
  memcpy(data, mesh.vertices.data(), (size_t) buffer_size);
  vkUnmapMemory(device, mesh.vertex_buffer_mem);
  meshes.push_back(&mesh);
  return ME_FINE;
}

#endif
