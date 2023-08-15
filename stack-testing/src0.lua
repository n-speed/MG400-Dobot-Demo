-- Version: Lua 5.3.5
SelectStack = true -- Right Stack = True, Left Stack = False
local Block_Count = 0
Offset_Prep = 7.5

MovJ(InitialPose)
while(true)
do 
  MovJ(RightStack)
  pickup_Object(Offset_Prep)
  MovJ(LeftStack)
  place_Object(Offset_Prep)
end