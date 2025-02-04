local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("newscam", "Grab a news camera", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "reporter" or Player.PlayerData.job.name == "rockfordrecords" then
        TriggerClientEvent("Cam:ToggleCam", source)
    end
end)

QBCore.Commands.Add("newsmic", "Grab a news microphone", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "reporter" or Player.PlayerData.job.name == "rockfordrecords" then
        TriggerClientEvent("Mic:ToggleMic", source)
    end
end)

QBCore.Commands.Add("newsbmic", "Grab a Boom microphone", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.PlayerData.job.name == "reporter" or Player.PlayerData.job.name == "rockfordrecords" then
        TriggerClientEvent("Mic:ToggleBMic", source)
    end
end)
