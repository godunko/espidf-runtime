
--  This is a FreeRTOS version of this package

with Interfaces.C;
with System.FreeRTOS;

package System.OS_Locks is
   pragma Preelaborate;

   type Priority_Type is (Prio_None, Prio_Protect, Prio_Inherit);

   type RTS_Lock is record
      Mutex        : System.FreeRTOS.SemaphoreHandle_t :=
        System.FreeRTOS.Null_SemaphoreHandle_t;
      Protocol     : Priority_Type;
      Prio_Ceiling : Interfaces.C.int;
   end record;
   --  Should be used inside the runtime system. The difference between Lock
   --  and the RTS_Lock is that the latter serves only as a semaphore so that
   --  we do not check for ceiling violations.

end System.OS_Locks;
