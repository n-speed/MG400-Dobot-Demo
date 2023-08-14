-- Global variable module is only used to define global variables and module functions. The motion command cannot be called here.
-- Version: Lua 5.3.5
OBJECT_HEIGHT = 18.5 -- mm
NumBlocks = 4
SelectStack = true -- Right Stack = True, Left Stack = False

RightStack = {270,300,-100,0} -- Aliasing for cartesian positions
LeftStack = {270,-300,-100,90}

function pickup_Object(offset)
    DO(1,ON)
    RelMovL(offset)
    Wait(750)
    DO(1,OFF)
    RelMovL(-offset)
end

function place_Object(offset)
    RelMovL(offset)
    DO(2,ON)
    Wait(400)
    DO(2,OFF)
    RelMovL(-offset)
end

function offset_Calc(count)



end