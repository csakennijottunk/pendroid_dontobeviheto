gameTable = {
    functions = {
        setup = function ()
            suit = require("Framework.suit")
            time = 0
        end,
        update = nil,
        draw = nil,
    },
    buttons = {
        {
            name = "Vissza",
            y = 5,
            x = 5,
            w = 100,
            h = 30,
            click = function ()
                main.setScreen(main.screens.menu)
            end
        },
    }
}

function gameTable.functions.update(dt)
    for i,v in pairs(gameTable.buttons) do
        if suit.Button(v.name,v.x,v.y,v.w,v.h).hit then
            v.click()
        end
    end
end

function gameTable.functions.draw()
    suit.draw()
end