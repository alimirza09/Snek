function love.load()
    snekDirection = "right"
    snek = {}
    snek.x = 100
    snek.y = 100
    score = 0
    turnpointX = 0
    turnpointY = 0
end
function love.update(dt)
    if love.keyboard.isDown("w") and snekDirection ~= "down" then
        snekDirection = "up"
        turnpointX = snek.x
        turnpointY = snek.y
    elseif love.keyboard.isDown("s") and snekDirection ~= "up" then
        snekDirection = "down"
        turnpointX = snek.x
        turnpointY = snek.y
    elseif love.keyboard.isDown("a") and snekDirection ~= "right" then
        snekDirection = "left"
        turnpointX = snek.x
        turnpointY = snek.y
    elseif love.keyboard.isDown("d") and snekDirection ~= "left" then
        snekDirection = "right"
        turnpointX = snek.x
        turnpointY = snek.y
    end
    if snekDirection == "right" then
        snek.x = snek.x + 4
    elseif snekDirection == "left" then
        snek.x = snek.x - 4
    elseif snekDirection == "up" then
        snek.y = snek.y - 4
    elseif snekDirection == "down" then
        snek.y = snek.y + 4
    end
end
function love.draw()
    love.graphics.setColor(0.07451, 0.960784, 0.019608)
    love.graphics.rectangle("fill", snek.x, snek.y, 20, 20)
    i = 1
    if snekDirection == "right" or snekDirection == "left" then
        while (i <= score + 3) do
            love.graphics.rectangle("fill", snek.x + (28 * i), snek.y, 20, 20)
            i = i + 1
        end
    end
    if snekDirection == "up" or snekDirection == "down" then
        while (i <= score + 3) do
            love.graphics.rectangle("fill", snek.x, snek.y + (28 * i), 20, 20)
            i = i + 1
        end
    end
end