#include <freertos/FreeRTOS.h>
#include <freertos/semphr.h>

TickType_t __gnat_pdMS_TO_TICKS(unsigned ms)
{
  return pdMS_TO_TICKS(ms);
}

unsigned __gnat_pdTICKS_TO_MS(TickType_t ticks)
{
  return pdTICKS_TO_MS(ticks);
}

SemaphoreHandle_t __gnat_xSemaphoreCreateBinary()
{
  return xSemaphoreCreateBinary();
}

SemaphoreHandle_t __gnat_xSemaphoreCreateMutex()
{
  return xSemaphoreCreateMutex();
}

SemaphoreHandle_t __gnat_xSemaphoreCreateRecursiveMutex()
{
  return xSemaphoreCreateRecursiveMutex();
}

void __gnat_vSemaphoreDelete(SemaphoreHandle_t xSemaphore)
{
  vSemaphoreDelete(xSemaphore);
}

BaseType_t __gnat_xSemaphoreGive(SemaphoreHandle_t xSemaphore)
{
  return xSemaphoreGive(xSemaphore);
}

BaseType_t __gnat_xSemaphoreGiveRecursive(SemaphoreHandle_t xSemaphore)
{
  return xSemaphoreGiveRecursive(xSemaphore);
}

BaseType_t __gnat_xSemaphoreTake(SemaphoreHandle_t xSemaphore, TickType_t xTicksToWait)
{
  return xSemaphoreTake(xSemaphore, xTicksToWait);
}

BaseType_t __gnat_xSemaphoreTakeRecursive(SemaphoreHandle_t xSemaphore, TickType_t xTicksToWait)
{
  return xSemaphoreTakeRecursive(xSemaphore, xTicksToWait);
}
