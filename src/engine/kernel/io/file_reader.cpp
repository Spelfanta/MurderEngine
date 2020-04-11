#include "file_reader.h"
#include "../../utilities/Logger.h"
#include <stdio.h>

static me::log* FILE_LOGGER = new me::log("EngineManager",
"\e[32m[%N] %T #%M \e[0m",
"\e[32m[%N] %T\e[0m \e[33m#%M \e[0m",
"\e[32m[%N] %T\e[0m \e[31m#%M \e[0m",
"\e[34m[%N] %T #%M \e[0m"
);

static std::vector<me::filebuff*> buffers;

me::fileattr* me::read_file(const char* filepath)
{
  #ifdef ME_DEBUG
    printf("reading file from \"%s\"\n", filepath);
  #endif

  FILE* file = fopen(filepath, "rb");
  if (file==nullptr)
  {
    FILE_LOGGER->err(std::string("failed to read file \"") + filepath + std::string("\"\n"));
    return nullptr;
  }
  fseek(file, 0, SEEK_END);
  uint64_t file_size = ftell(file);
  rewind(file);
  char* data = new char[file_size];
  fread(data, file_size, 1, file);
  fclose(file);
  me::filebuff* buffer = new me::filebuff((unsigned char*)data, file_size);
  buffers.push_back(buffer);
  return new me::fileattr(filepath, file_access::ALL, 0L, 0L, buffer);
}

void me::write_file(const char* filepath, unsigned char* data, uint64_t off, uint64_t len)
{

}

int me::cleanup_buffers()
{
  int count = 0;
  for (me::filebuff* buffer : buffers)
  {
    if (buffer==nullptr)
      continue;
    delete buffer;
    count++;
  }
  return count;
}