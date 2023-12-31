RegisterServerEvent('PD-Base:ServerStart')
AddEventHandler('PD-Base:ServerStart', function()
    local civ = source
    Citizen.CreateThread(function()
        local Identifier = GetPlayerIdentifiers(civ)[1] -- 스팀 ID를 가져옴.
        if not Identifier then
            DropPlayer(civ, 'Unable to get your identifier. Please restart FiveM and try again.') -- ID가 없으면 사용자를 킥함.
        end
        return
    end)
end)

RegisterNetEvent('PD-Base:server:getObject')
AddEventHandler('PD-Base:server:getObject', function(callback)
    callback(PD)
end)
