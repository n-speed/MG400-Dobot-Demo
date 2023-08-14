-- Version: Lua 5.3.5
SelectStack = true -- Right Stack = True, Left Stack = False
local Block_Count = 0
Offset_Prep = {0,0,-7.5,0}

MovJ(InitialPose)
while(true)
do 
  MovL(RightStack)
  pickup_Object(Offset_Prep)
  MovL(LeftStack)
  place_Object(Offset_Prep)
end