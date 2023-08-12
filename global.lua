-- Global variable module is only used to define global variables and module functions. The motion command cannot be called here.
-- Version: Lua 5.3.5
OBJECT_HEIGHT = 18.5 -- mm
RESTING_OFFSET = -5
NumBlocks = 4
SelectStack = true -- Right Stack = True, Left Stack = False

RightStack = P1 -- Aliasing for cartesian positions
LeftStack = P2

function pickup_Object(offset)
    DO(1,ON)
    local a = {0,0,offset,0}
    RelMovL(a)
    Wait(500)
    DO(1,OFF)
end

function place_Object(offset)
    local a = offset
    RelMovL(a)
    DO(2,ON)
    Wait(400)
    DO(2,OFF)
end