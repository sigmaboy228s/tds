# tds
---

# TDS Automation API 🛠️

A comprehensive Luau library designed to streamline and automate match logic for Tower Defense Simulator.

---

## 🧩 Core Engine Methods

| Method | Parameters | Description |
| --- | --- | --- |
| `Place` | `name, x, y, z` | Places a tower. Returns `tower_index`. |
| `Upgrade` | `index, path` | Upgrades the tower at the index. |
| `Sell` | `index` | Sells the tower at the specified index. |
| `SetTarget` | `index, mode` | Changes targeting (e.g., `"Strong"`, `"Last"`). |
| `Ability` | `idx, name, data, loop` | Activates an ability. Set `loop` to `true` for auto-use. |

---

## 🎮 Match Control

* **`TDS:Ready()`** Initializes state and handles the starting webhook/skipping.
* **`TDS:VoteSkip()`** Sends a skip request with a built-in retry loop.
* **`TDS:UseTimeScale(value)`** Sets game speed (`0.5` to `2`). *Requires tickets.*
* **`TDS:RestartGame()`** Monitors the rewards screen and triggers a restart vote.

---

## 🔄 Infinite Loop Configuration (24/7 AFK)

For advanced users running strategies without manual intervention. Save these in your executor's **'Autoexec'** folder.

> [!IMPORTANT]
> **Setup:** Upload your strategy to GitHub, get the **Raw** link, and replace the URL in the `loadstring` lines below.

### **Option A: Windows / PC (Xeno, Wave, etc.)**

Uses `Queue On Teleport` to ensure the script persists through game transitions.

```lua
local QOT = queue_on_teleport or (syn and syn.queue_on_teleport)
local script_content = [[
    _G.AutoStrat = true
    local Difficulty = "Fallen" -- Replace this with the Difficulty you want to use (Examples: Easy, Intermediate, Molten, Fallen, Frost)
    local function IsLobby() return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyGui") end
    local function IsInGame() return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("GameGui") end

    while _G.AutoStrat do
        task.wait(1)
        if IsLobby() then
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Multiplayer","v2:start",{difficulty=Difficulty,mode="survival",count=1})
        elseif IsInGame() then
            task.wait(10)
            loadstring(game:HttpGet("YOUR_GITHUB_RAW_URL_HERE"))()
            repeat task.wait(1) until IsLobby()
        end
    end
]]
if QOT then QOT(script_content) end
loadstring(script_content)()

```

### **Option B: Android (Delta, Arceus X, etc.)**

Place this directly in your **Autoexec** folder.

```lua
_G.AutoStrat = true
local Difficulty = "Fallen" -- Replace this with the Difficulty you want to use (Examples: Easy, Intermediate, Molten, Fallen, Frost)
while _G.AutoStrat do
    task.wait(1)
    local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
    if PlayerGui:FindFirstChild("LobbyGui") then
        game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Multiplayer","v2:start",{difficulty=Difficulty,mode="survival",count=1})
    elseif PlayerGui:FindFirstChild("GameGui") then
        task.wait(10)
        loadstring(game:HttpGet("YOUR_GITHUB_RAW_URL_HERE"))()
        repeat task.wait(1) until PlayerGui:FindFirstChild("LobbyGui")
    end
end

```

---

## 📜 Usage Policy & Copyright

**Copyright © 2025 Duxii. All Rights Reserved.**

* **Modification:** Permitted for personal use or free strategies.
* **Non-Commercial:** Strictly prohibited from selling this script or using it for paid services.
* **Attribution:** Credit the original author if redistributing modified versions.

**Questions?** Contact duxii. on Discord.
