#ifndef ME_KERNEL_H
  #define ME_KERNEL_H

#ifndef ME_UINT_32_BIT
  #define ME_UINT_32_BIT
#endif

#define ME_FINE           0
#define ME_ERR            1

#define ME_DEBUG

#ifdef ME_UINT_32_BIT
  #define _uint_t unsigned int
#elif ME_UINT_16_BIT
  #define _uint_t unsigned short
#elif ME_UINT_8_BIT
  #define _uint_t unsigned char
#elif ME_UINT_64_BIT
  #define _uint_t unsigned long
#endif

#include <stdint.h>

#ifdef __cplusplus
  #include "string.h"
#endif

#endif