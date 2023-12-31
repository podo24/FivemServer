function PD.Base.Start(Self)
    Citizen.CreateThread(function()
        while true do
            if NetworkIsSessionStarted() then
                TriggerEvent('PD-Base:Start')  
                TriggerServerEvent('PD-Base:ServerStart')
                break
            end
        end
    end)
end

PD.Base.Start(self)

RegisterNetEvent('PD-Base:client:getObject')
AddEventHandler('PD-Base:client:getObject', function(callback)
    callback(PD)
    print('Called Back ' .. PD .. )
end)
