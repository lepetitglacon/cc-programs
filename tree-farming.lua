function plant()
    place()
    isPlanted = true
end

local isPlanted = false

while true do
    sleep(1)

    if (not isPlanted) then
        plant()
        turtle.up()
    end

    local hasBlock, blockData = turtle.inspect()
    if (hasBlock) then
        turtle.dig()
        turtle.forward()
        turtle.digDown()
        turtle.digUp()
        turtle.up()

        local hasBlockUp, blockDataUp = turtle.inspectUp()
        if (hasBlockUp) then
            turtle.digUp()
            turtle.down()
        end

        turtle.back()
        turtle.down()

        isPlanted = false
    end

end