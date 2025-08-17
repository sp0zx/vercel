--// i will be adding notes for my future self if i forget

if not _G.Dex_Key then return print("No '_G.Dex_Key' Found") end -- checks for _g.Dex_Key (required for plr key)

local RAS = game:GetService("RbxAnalyticsService")
local UserClientID = RAS:GetClientId() -- gets the hwid of the plr
local UserKey = tostring(_G.Dex_Key) -- _G.Dex_Key (turns the current plrs key into a string)

local DexKeys = { -- all of the whitelisted hwid
  "AD275A5E-A797-4C7B-B605-4FDE30657B8C" 
}

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
