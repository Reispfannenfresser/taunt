--server->all
util.AddNetworkString("TAUNT_Send_Taunts")
--client->server
util.AddNetworkString("TAUNT_Taunt")

--add resources
resource.AddFile("materials/vgui/taunt_ic_fav.vmt")
resource.AddFile("materials/vgui/taunt_ic_nofav.vmt")

TAUNT.current_taunts_end_at = {}
TAUNT.taunts = {}

hook.Add("PlayerInitialSpawn", "TAUNT_PlayerSpawned", function(ply, transition)
    TAUNT.SendTaunts(ply)
end)

hook.Add("Initialize", "TAUNT_RegisterTaunts", function()
    TAUNT.LoadTaunts()
end)
