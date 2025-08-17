if not _G.Dex_Key then return end

local RAS = game:GetService("RbxAnalyticsService")
local UserClientID = RAS:GetClientId()
local UserKey = tostring(_G.Dex_Key)

local DexKeys = {
  "AD275A5E-A797-4C7B-B605-4FDE30657B8C"
}

-- Check if the key is whitelisted
if table.find(DexKeys, UserKey) then
  if UserKey == UserClientID then
    print("HWID matches key")
  else
    print("HWID does not match key")
  end
else
  print("Key not found")
end
