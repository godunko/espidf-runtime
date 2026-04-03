
package System.FreeRTOS is
   pragma Preelaborate;

   type TaskHandle_t is private;

   Null_TaskHandle_t : constant TaskHandle_t;

   function xTaskGetCurrentTaskHandle return TaskHandle_t
     with Import, Convention => C,
          External_Name => "xTaskGetCurrentTaskHandle";

private

   type TaskHandle_t is new System.Address;

   Null_TaskHandle_t : constant TaskHandle_t :=
     TaskHandle_t (System.Null_Address);

end System.FreeRTOS;
