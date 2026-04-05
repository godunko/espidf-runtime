
with Interfaces.C;

package System.FreeRTOS is
   pragma Preelaborate;

   type BaseType_t is new Interfaces.C.int;

   pdFALSE : constant BaseType_t := 0;
   pdTRUE  : constant BaseType_t := 1;

   type TickType_t is new Interfaces.Unsigned_32;

   portMAX_DELAY : constant TickType_t := TickType_t'Last;

   type TaskHandle_t is private;

   Null_TaskHandle_t : constant TaskHandle_t;

   function xTaskGetCurrentTaskHandle return TaskHandle_t
     with Import, Convention => C,
          External_Name => "xTaskGetCurrentTaskHandle";

   type SemaphoreHandle_t is private;

   Null_SemaphoreHandle_t : constant SemaphoreHandle_t;

   function xSemaphoreCreateBinary return SemaphoreHandle_t
     with Import, Convention => C,
          External_Name => "__gnat_xSemaphoreCreateBinary";

   function xSemaphoreCreateMutex return SemaphoreHandle_t
     with Import, Convention => C,
          External_Name => "__gnat_xSemaphoreCreateMutex";

   function xSemaphoreCreateRecursiveMutex return SemaphoreHandle_t
     with Import, Convention => C,
          External_Name => "__gnat_xSemaphoreCreateRecursiveMutex";

   procedure vSemaphoreDelete
     (xSemaphore : SemaphoreHandle_t)
     with Import, Convention => C, External_Name => "__gnat_vSemaphoreDelete";

   function xSemaphoreTake
     (xSemaphore   : SemaphoreHandle_t;
      xTicksToWait : TickType_t) return BaseType_t
     with Import, Convention => C, External_Name => "__gnat_xSemaphoreTake";

   function xSemaphoreTakeRecursive
     (xMutex       : SemaphoreHandle_t;
      xTicksToWait : TickType_t) return BaseType_t
     with Import, Convention => C,
          External_Name => "__gnat_xSemaphoreTakeRecursive";

   function xSemaphoreGive (xSemaphore : SemaphoreHandle_t) return BaseType_t
     with Import, Convention => C, External_Name => "__gnat_xSemaphoreGive";

   function xSemaphoreGiveRecursive
     (xMutex : SemaphoreHandle_t) return BaseType_t
     with Import, Convention => C,
          External_Name => "__gnat_xSemaphoreGiveRecursive";

private

   type TaskHandle_t is new System.Address;

   Null_TaskHandle_t : constant TaskHandle_t :=
     TaskHandle_t (System.Null_Address);

   type SemaphoreHandle_t is new System.Address;

   Null_SemaphoreHandle_t : constant SemaphoreHandle_t :=
     SemaphoreHandle_t (System.Null_Address);

end System.FreeRTOS;
