
package body System.FreeRTOS is

   --------------------------
   -- To_FreeRTOS_Priority --
   --------------------------

   function To_FreeRTOS_Priority
     (Priority : System.Priority) return UBaseType_t is
   begin
      return
        UBaseType_t
          (((Priority - System.Any_Priority'First) * configMAX_PRIORITIES)
             / (System.Priority'Last - System.Priority'First + 1));
   end To_FreeRTOS_Priority;

end System.FreeRTOS;
