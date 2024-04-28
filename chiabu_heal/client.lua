RegisterCommand ("heal" ,function()
   healplayer ()
end)

function healplayer()
   SetEntityHealth(GetPlayerPed(-1), 200)
end

RegisterCommand ("armor" ,function()
   armor ()
end)


function armor()
   AddArmourToPed(GetPlayerPed(-1), 100)
end

RegisterNetEvent('chivazfix')

