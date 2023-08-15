-- Global variable module is only used to define global variables and module functions. The motion command cannot be called here.
-- Version: Lua 5.3.5
OBJECT_HEIGHT = 18.5 -- mm
NumBlocks = 4
SelectStack = true -- Right Stack = True, Left Stack = False

RightStack = P1 -- Aliasing for cartesian positions
LeftStack = P2

function pickup_Object(offset)
    DO(1,ON)
    notoffset = -offset
    RelMovL({0,0,notoffset,0})
    Wait(750)
    DO(1,OFF)
    RelMovL({0,0,offset,0})
end

function place_Object(offset)
    notoffset = -offset
    RelMovL({0,0,notoffset,0})
    DO(2,ON)
    Wait(400)
    DO(2,OFF)
    RelMovL({0,0,offset,0})
end

function offset_Calc(count)



end