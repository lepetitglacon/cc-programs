while true do
    sleep(1)
    plant()
end

function plant()
    local hasBlock, data = turtle.inspect()
    print(hasBlock, textutils.serialize(data))
end