-- // Loader
local script_url = "https://raw.githubusercontent.com/sigmaboy228s/tds/refs/heads/main/main.lua"
local success, TDS = pcall(function()
    return loadstring(game:HttpGet(script_url))()
end)

if not success or not TDS then
    warn("Failed to load tds-autostrat-lib")
    return
end

-- Example Usage:
-- TDS:VoteMap("Simplicity")
-- TDS:Ready()
