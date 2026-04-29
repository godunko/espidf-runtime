
--  This is the dummy version

separate (GNAT.Exception_Actions)
procedure Core_Dump (Occurrence : Exception_Occurrence) is
   pragma Unreferenced (Occurrence);

begin
   null;
end Core_Dump;
