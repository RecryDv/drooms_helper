--!server
local Players = game:GetService("Players")
local p = Players:GetPlayers()
for i,v in pairs(p) do 
  v.PlayerStats.TypeRun.Value = "RoomsExit"
end
local t = game:GetService("TeleportService")
local g = game.PlaceId
local r = t:ReserveServer(g)
t:TeleportToPrivateServer(g, r, p)
