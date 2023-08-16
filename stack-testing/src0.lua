-- Version: Lua 5.3.5
SelectStack = true
local destack_count = NumBlocks
local stack_count = 0
local jump_params = "{SpeedL = 50, Accl = 25, Start = 10, ZLimit = 50, End =10, Sync = 0}"
Offset_Prep = 7.0


MovJ(InitialPose)
while(true)
do
  if (SelectStack == true)
  then
    while(destack_count ~= 0)
    do
      destack_count = destack_count - 1
      MovL(RightStack)
      local a = -(stack_count * OBJECT_HEIGHT)
      RelMovL({0,0,a,0})
      pickup_Object(Offset_Prep)
      Jump(LeftStack, jump_params)
      local b = -(destack_count* OBJECT_HEIGHT)
      RelMovL({0,0,b,0})
      place_Object(Offset_Prep)
      stack_count = stack_count + 1
    end
    SelectStack = false
    destack_count = NumBlocks
    stack_count = 0
  end
  MovJ(InitialPose)

  if (SelectStack == false)
  then
    while(destack_count ~= 0)
    do
      destack_count = destack_count - 1
      MovL(LeftStack)
      local a = -(stack_count * OBJECT_HEIGHT)
      RelMovL({0,0,a,0})
      pickup_Object(Offset_Prep)
      Jump(RightStack, jump_params)
      local b = -(destack_count* OBJECT_HEIGHT)
      RelMovL({0,0,b,0})
      place_Object(Offset_Prep)
      stack_count = stack_count + 1
    end
    SelectStack = true
    destack_count = NumBlocks
    stack_count = 0
  end   
  MovJ(InitialPose)
end