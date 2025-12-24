-- Tower 1: Crook Boss
-- Tower 2: Trapper

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
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Multiplayer", "v2:start", { count = 1, mode = "hardcore"})
        elseif IsInGame() then
            task.wait(10)
            local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/sigmaboy228s/tds/refs/heads/main/main.lua"))() -- Library
            -- GLOBALS:
            _G.AutoStrat = true
            _G.Webhook = "YOUR-WEBHOOK-URL-HERE"
            _G.SendWebhook = false
            _G.BackToLobby =  true
            _G.AutoSkip = true
            _G.AutoSnowballs = true

            while _G.AutoStrat do
                TDS:SelectMap("Crossroads") -- Only use this if you have VIP
                TDS:VoteMap("Crossroads", Vector3.new(12.59, 10.64, 52.01)) -- Keep the Vectors as is, don't change them

                TDS:StartGame()

                task.wait(7)

                TDS:Ready()

                TDS:Place("Crook Boss", 11.0746298, 2.349998, 12.0490465, -0.79561305, 0, 0.605805159, 0, 0.99999994, -0, -0.605805218, 0, -0.795612931) -- 1

                TDS:Upgrade(1)
                TDS:Upgrade(1)

                TDS:Place("Trapper", 2.67028093, 2.3500061, -37.728653, 0.753201902, 0, 0.657789409, -0, 1, -0, -0.657789409, 0, 0.753201902) -- 2
                TDS:Upgrade(2)

                TDS:Place("Trapper", -2.75824738, 2.35000801, -37.4817963, 0.670723617, 0, -0.741707385, -0, 1, -0, 0.741707444, 0, 0.670723557) -- 3
                TDS:Upgrade(3)

                TDS:Place("Trapper", -2.59712791, 2.35000801, -34.3472252, -0.967946351, -0, -0.251156926, -0, 1, -0, 0.251156926, 0, -0.967946351) -- 4
                TDS:Upgrade(4)

                TDS:Upgrade(2)
                TDS:Upgrade(3)
                TDS:Upgrade(4)

                TDS:Place("Crook Boss", 11.1872864, 2.34999847, 9.03640366, 0.534949243, 0, 0.844884217, 0, 1, -0, -0.844884217, 0, 0.534949243) -- 5
                TDS:Upgrade(5)
                TDS:Upgrade(5)
                TDS:Place("Crook Boss", 8.48154449, 2.34999824, 10.3917332, 0.441145629, 0, 0.897435606, 0, 1, -0, -0.897435486, 0, 0.441145688) -- 6
                TDS:Upgrade(6)
                TDS:Upgrade(6)
                TDS:Place("Crook Boss", 8.38963127, 2.34999776, 13.472085, -0.830651522, 0, 0.556792676, 0, 1, -0, -0.556792676, 0, -0.830651522) -- 7
                TDS:Upgrade(7)
                TDS:Upgrade(7)
                TDS:Place("Crook Boss", 5.63429737, 2.34999847, 9.24946213, -0.993264973, 0, -0.11586494, 0, 1, -0, 0.11586494, -0, -0.993264973) -- 8
                TDS:Upgrade(8)
                TDS:Upgrade(8)

                TDS:SellAll(24)
            end
            repeat task.wait(1) until IsLobby()
        end
    end
]]

if QOT then
    QOT(script_content)
end

loadstring(script_content)()
