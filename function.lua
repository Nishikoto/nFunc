------------------------------------
-- Nishikoto - License Libre
------------------------------------
-- Version 0.1 -- NHK_Source
------------------------------------

------------------------------------
-- Invocation ESX (Obligatoire)

ESX                                = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    Citizen.Wait(5000)
    PlayerData = ESX.GetPlayerData()
end)

------------------------------------
-- Contenu Function



------------------------------------
-- Function NHK

function NHK_Visual_Freeze(Label,Time)
    local answer = Time * 1000
    local answer2 = answer - 50
    ESX.DrawMissionText("~y~Veuillez patienter "..Label.." seconde...",answer2)
    Citizen.Wait(answer)
end

function NHK_WaitVisual_3()
    ESX.DrawMissionText("Veuillez patientez 3 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 2 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 1 seconde...",950)
    Citizen.Wait(1000)
end

function NHK_WaitVisual_5()
    ESX.DrawMissionText("Veuillez patientez 5 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 4 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 3 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 2 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 1 seconde...",950)
    Citizen.Wait(1000)
end

function NHK_WaitVisual_7()
    ESX.DrawMissionText("Veuillez patientez 7 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 6 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 5 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 4 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 3 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 2 seconde...",950)
    Citizen.Wait(1000)
    ESX.DrawMissionText("Veuillez patientez 1 seconde...",950)
    Citizen.Wait(1000)
end

function NHK_Ped(LabelPed,HashPed,CoordPed,HeaderPed,Invincibility)
    if true then
        function LoadModel(model)
            while not HasModelLoaded(model) do
                RequestModel(model)
                Wait(1)
            end
        end
        LoadModel(HashPed)
        Ped = CreatePed(2, GetHashKey(HashPed), CoordPed, HeaderPed, 0, 0)
        DecorSetInt(Ped, LabelPed, 5431)
        FreezeEntityPosition(Ped, 1)
        SetEntityInvincible(Ped, Invincibility)
        SetBlockingOfNonTemporaryEvents(Ped, 1)
    end
end