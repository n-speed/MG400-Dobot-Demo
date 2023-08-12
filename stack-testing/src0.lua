-- Version: Lua 5.3.5
while(true)
do
  MovJ(InitialPose)
  MovL(RightStack)
  pickup_Object(RESTING_OFFSET)
  local Option = {SpeedL=50, AccL=20, Start=10, ZLimit=80, End=50}
  Jump(LeftStack, Option)
  local Offset = {0,0,-60,0}
  place_Object(Offset)
end