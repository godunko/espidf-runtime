
package System.FreeRTOS is
   pragma Preelaborate;

   type TaskHandle_t is private;

   function xTaskGetCurrentTaskHandle return TaskHandle_t
     with Import, Convention => C,
          External_Name => "xTaskGetCurrentTaskHandle";

private

   type TaskHandle_t is new System.Address;

end System.FreeRTOS;
