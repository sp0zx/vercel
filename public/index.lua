if not _G.Dex_Key then return end

local DexKeys = {
  "12345"
}

if table.find(DexKeys,tostring(_G.Dex_Key) then
    print("Whitelisted")
  else
    print("Not whitelisted")
  end
