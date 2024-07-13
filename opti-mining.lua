local args = { ... }

if #args ~= 2 then
    print("Usage: opti <depth> <branchRadius>")
    return
end

local depth = tonumber(args[1])
local branchRadius = tonumber(args[2])

local turnRight = true
local position = {0, 0}
local direction = {0, 1}

print( "Going dark !", gps.locate() )

function inspect()
    turtle.dig()
    turtle.digUp()
    turtle.digDown()
end

function turn(keepSide)

    if turnRight then
        turtle.turnRight()
    else
        turtle.turnLeft()
    end

    if not keepSide then
        turnRight = not turnRight
    end
end

for i = 0, depth, 1 do
    for j = 0, branchRadius * 2, 1 do
        if (j == 0) then
            turn()
        end

        inspect()
        turtle.forward()

        if (j == branchRadius * 2) then
            turn(true)
            inspect()
            turtle.forward()
            inspect()
            turtle.forward()
            inspect()
            turtle.forward()
            inspect()
        end
    end
end

print( "Arrived. Starting branching..." )


print( "Mined x items total." )