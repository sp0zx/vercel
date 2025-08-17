--// i will be adding notes for my future self if i forget

if not _G.Dex_Key then return print("No '_G.Dex_Key' Found") end -- checks for _g.Dex_Key (required for plr key)

local RAS = game:GetService("RbxAnalyticsService")
local UserClientID = RAS:GetClientId() -- gets the hwid of the plr
local UserKey = tostring(_G.Dex_Key) -- _G.Dex_Key (turns the current plrs key into a string)

local DexKeys = loadstring(game:HttpGet("https://dex-suite.vercel.app/rbx-api.lua"))() -- a list of whitelisted keys/hwid's
if not DexKeys then return end

-- Check if the key is whitelisted
if table.find(DexKeys, UserKey) then -- checks the dex key table for the UserKey
  if UserKey == UserClientID then -- final check, checks to see if the users hwid is the same as their key.
    print("HWID matches key")
  else
    print("HWID does not match key")
  end
else
  print("Key not found") -- if it didnt find the dex key it fails to find key
end
