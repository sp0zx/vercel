if not _G.Dex_Key then return end

local RAS = game:GetService("RbxAnalyticsService")
local UserClientID = RAS:GetClientId()
local UserKey = tostring(_G.Dex_Key)

local DexKeys = {
  "AD275A5E-A797-4C7B-B605-4FDE30657B8C"
}

if UserKey == UserClientID then
  print("key and hwid matches")
end
