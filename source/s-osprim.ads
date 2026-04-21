
--  This package provides low level primitives used to implement clock and
--  delays in non tasking applications.

--  The choice of the real clock/delay implementation (depending on whether
--  tasking is involved or not) is done via soft links (see s-soflin.ads)

--  NEVER add any dependency to tasking packages here

package System.OS_Primitives is
   pragma Preelaborate;

   Relative          : constant := 0;
   Absolute_Calendar : constant := 1;
   Absolute_RT       : constant := 2;
   --  Values for Mode call below. Note that the compiler (exp_ch9.adb) relies
   --  on these values. So any change here must be reflected in corresponding
   --  changes in the compiler.

end System.OS_Primitives;
