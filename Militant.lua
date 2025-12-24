-- Tower 1: Militant

local QOT = queue_on_teleport or (syn and syn.queue_on_teleport)

local script_content = [[
    _G.AutoStrat = true

    local function IsLobby()
        return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyGui")
    end

    local function IsInGame()
        return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("GameGui")
    end

    while _G.AutoStrat do
        task.wait(1)

        if IsLobby() then
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Multiplayer", "v2:start", { count = 1, mode = "badlands"})
        elseif IsInGame() then
            task.wait(10)
            local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaboy228s/tds/refs/heads/main/main.lua"))() -- Library
            -- GLOBALS:
            _G.AutoStrat = true
            _G.Webhook = "PROVIDE_YOUR_WEBHOOK_HERE"
            _G.SendWebhook = false
            _G.BackToLobby =  true
            _G.AutoSkip = true
            _G.AutoSnowballs = true

            while _G.AutoStrat do
                TDS:StartGame()

                task.wait(7)

                TDS:Ready()

                TDS:Place("Militant", 0.939294815, 2.35000229, 6.6834383, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 1

                TDS:Place("Militant", -4.94221687, 2.35000229, 6.70664358, -0.358740032, 0, 0.933437526, 0, 1, -0, -0.933437526, 0, -0.358740032) -- 2

                TDS:Upgrade(2)

                TDS:Place("Militant", -5.20255947, 2.35000229, 12.3935184, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 3

                TDS:Upgrade(3)

                TDS:Place("Militant", -13.3957405, 2.35000229, 12.5268297, 0.910867631, 0, 0.412698597, 0, 1, -0, -0.412698597, 0, 0.910867631) -- 4

                TDS:Upgrade(4)

                TDS:Place("Militant", -13.9051371, 2.35000229, 6.99918747, 0.258768588, 0, 0.965939283, 0, 1, -0, -0.965939403, 0, 0.258768559) -- 5

                TDS:Upgrade(5)

                TDS:Place("Militant", -0.0289177895, 2.35000229, 12.547184, 0.403506219, 0, 0.914976895, 0, 1, -0, -0.914976895, 0, 0.403506219) -- 6

                TDS:Upgrade(6)

                TDS:Place("Militant", -5.04769468, 2.35000229, 3.53575706, -0.787894845, 0, 0.615809798, 0, 1, -0, -0.615809798, 0, -0.787894845) -- 7

                TDS:Upgrade(7)

                TDS:Place("Militant", 1.0866549, 2.35000229, 2.17819786, 0.962173223, 0, 0.272438675, 0, 1, -0, -0.272438705, 0, 0.962173104) -- 8

                TDS:Upgrade(8)

                TDS:Place("Militant", -8.99530029, 2.35000229, 12.5791712, 0.612788618, 0, 0.790246904, 0, 1, -0, -0.790246904, 0, 0.612788618) -- 9

                TDS:Upgrade(9)

                TDS:Upgrade(9)

                TDS:Place("Militant", -9.37679672, 2.35000229, 6.68610287, -0.334642828, 0, 0.942345023, 0, 1.00000012, -0, -0.942345142, 0, -0.334642798) -- 10

                TDS:Upgrade(10)

                TDS:Upgrade(10)

                TDS:Upgrade(1)

                TDS:Upgrade(1)

                TDS:Upgrade(2)

                TDS:Place("Militant", 3.00046253, 2.35000229, 12.7598476, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 11

                TDS:Upgrade(11)

                TDS:Place("Militant", 1.51840353, 2.35000229, -1.05097485, 0.0890004933, 0, -0.996031582, -0, 1, -0, 0.996031582, 0, 0.0890004933) -- 12

                TDS:Upgrade(12)

                TDS:Upgrade(12)

                TDS:Place("Militant", -4.96987629, 2.35000229, 0.425239563, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 13

                TDS:Upgrade(13)

                TDS:Upgrade(13)
            end
            repeat task.wait(1) until IsLobby()
        end
    end
]]

if QOT then
    QOT(script_content)
end

loadstring(script_content)()
