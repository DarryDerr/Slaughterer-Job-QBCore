local QBCore = exports['qb-core']:GetCoreObject()
---------------------------------------------
-------you better not touch this below-------
---------------------------------------------
local chicken1
local chicken2
local chicken3
local Caught1 = 0
local Caught2 = 0
local Caught3 = 0
local NumberOfCaught = 0
local share = false
local prop
local PackedChck = false
local carton
local meat
local packs = 0

--------------
local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function DrawText3D2(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local function startProgressBar(label, text, timeMin, timeMax, onSuccess)
    local animDict = "mini@repair"
    local animName = "fixing_a_player"

    LoadDict(animDict)

    QBCore.Functions.Progressbar(label, text, math.random(timeMin, timeMax), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animDict,
        anim = animName,
        flags = 1,
    }, {}, {}, onSuccess, function()
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Canceled", "error")
    end)
end

--------------------Start Chicken---------------------------------------
local startCoords = Config.ChickenCoords
local processingCoords = Config.ProcessingCoords
local packingCoords = Config.PackingCoords
local wareHouseChicken = Config.SlaughterBlip

Citizen.CreateThread(function()
    if wareHouseChicken.Blip.Enable then
        local blip = AddBlipForCoord(wareHouseChicken.Blip.Coord)

        SetBlipSprite(blip, wareHouseChicken.Blip.Sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, wareHouseChicken.Blip.Scale)
        SetBlipColour(blip, wareHouseChicken.Blip.Color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(wareHouseChicken.Blip.Name)
        EndTextCommandSetBlipName(blip)
    end
end)

RegisterNetEvent('ult:client:checkKnifeAndProcess', function(type)
    local ped = PlayerPedId()
    local currentWeapon = GetSelectedPedWeapon(ped)

    if currentWeapon ~= GetHashKey("weapon_knife") then
        QBCore.Functions.Notify("You must hold the knife to process!", "error")
        return
    end

    TriggerEvent('ult:client:beginChickenProcess', type)
end)

-- Register event
RegisterNetEvent("ult:client:startCatchChicken", function()
    startProgressBar("chicken_", "Gathering Alive Chicken", 15000, 20000, function()
        TriggerServerEvent("ult:server:putchicken")
    end)
end)

RegisterNetEvent("ult:client:portionChicken", function()
    TriggerServerEvent("ult:server:canProcessChicken", "portion")
end)

RegisterNetEvent("ult:client:packChicken", function()
    TriggerServerEvent("ult:server:canProcessChicken", "pack")
end)

RegisterNetEvent("ult:client:beginChickenProcess", function(type)
    local playerPed = PlayerPedId()
    local pedCoords = GetEntityCoords(playerPed)

    local label = "chicken_process"
    local message = type == "portion" and "Slaughtering the Chicken..." or "Packing the Chicken..."
    local time = type == "portion" and math.random(5000, 10000) or math.random(15000, 20000)

    -- Local entity holders
    local chickenObj, meatObj, cartonObj

    -- Play animation & attach object
    if type == "portion" then
        local dict = 'anim@amb@business@coc@coc_unpack_cut_left@'
        LoadDict(dict)
        TaskPlayAnim(playerPed, dict, "coke_cut_v1_coccutter", 3.0, -8, -1, 1, 0, 0, 0, 0)

        -- Chicken
        chickenObj = CreateObject(GetHashKey('prop_int_cf_chick_01'), pedCoords.x + 1, pedCoords.y, pedCoords.z - 0.95, true, true, true)
        SetEntityRotation(chickenObj, 90.0, 0.0, 45.0, 1, true)

    elseif type == "pack" then
        LoadDict("anim@heists@ornate_bank@grab_cash_heels")
        TaskPlayAnim(playerPed, "anim@heists@ornate_bank@grab_cash_heels", "grab", 8.0, -8.0, -1, 1, 0, false, false, false)

        -- Meat & carton
        meatObj = CreateObject(GetHashKey('prop_cs_steak'), pedCoords.x, pedCoords.y, pedCoords.z, true, true, true)
        AttachEntityToEntity(meatObj, playerPed, GetPedBoneIndex(playerPed, 0x49D9), 0.15, 0.0, 0.01, 0.0, 0.0, 0.0, false, false, false, false, 2, true)

        cartonObj = CreateObject(GetHashKey('prop_cs_clothes_box'), pedCoords.x, pedCoords.y, pedCoords.z, true, true, true)
        AttachEntityToEntity(cartonObj, playerPed, GetPedBoneIndex(playerPed, 57005), 0.13, 0.0, -0.16, 250.0, -30.0, 0.0, false, false, false, false, 2, true)
    end

    -- Start progress bar
    QBCore.Functions.Progressbar(label, message, time, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- onSuccess
        print("Progressbar selesai")
        ClearPedTasks(playerPed)
        if knifeObj then DeleteEntity(knifeObj) end
        if chickenObj then DeleteEntity(chickenObj) end
        if meatObj then DeleteEntity(meatObj) end
        if cartonObj then DeleteEntity(cartonObj) end

        TriggerServerEvent("ult:server:giveChickenResult", type)
    end, function() -- onCancel
        print("Progressbar dibatalkan")
        ClearPedTasks(playerPed)
        if knifeObj then DeleteEntity(knifeObj) end
        if chickenObj then DeleteEntity(chickenObj) end
        if meatObj then DeleteEntity(meatObj) end
        if cartonObj then DeleteEntity(cartonObj) end

        QBCore.Functions.Notify("Canceled", "error")
    end)
end)

if Config.Interaction then
    -- Custom resource interaction mode
    local function registerTextUI(id, coords, text, event)
        exports['ult-textui-2']:create3DTextUI(id, {
            coords = coords,
            displayDist = 6.0,
            interactDist = 2.0,
            enableKeyClick = true,
            keyNum = 38,
            key = "E",
            text = text,
            theme = "green",
            job = "all",
            canInteract = function() return true end,
            triggerData = {
                triggerName = event,
                args = {}
            }
        })
    end

    registerTextUI("ult-chicken", startCoords, "Start catching chickens", "ult:client:startCatchChicken")
    registerTextUI("ult-chicken-portion", processingCoords, "Portion the chicken", "ult:client:portionChicken")
    registerTextUI("ult-chicken-pack", packingCoords, "Pack the chicken", "ult:client:packChicken")

else
    -- Manual interaction mode
    Citizen.CreateThread(function()
        while true do
            local sleep = 1500
            local ped = PlayerPedId()
            local plyCoords = GetEntityCoords(ped)

            local distCatch = #(plyCoords - startCoords)
            if distCatch <= 20.0 then
                sleep = 0
                DrawMarker(27, startCoords.x, startCoords.y, startCoords.z - 0.97, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90, 255, 255, 255, 200, 0, 0, 0, 0)
            end
            if distCatch <= 2.5 then
                DrawText3D2(startCoords.x, startCoords.y, startCoords.z, "~g~[E]~w~ To start catching chickens")
            end
            if distCatch <= 1.0 and IsControlJustPressed(0, 38) then
                TriggerEvent("ult:client:startCatchChicken")
            end

            local distPortion = #(plyCoords - processingCoords)
            if distPortion <= 20.0 then
                sleep = 0
                DrawMarker(27, processingCoords.x, processingCoords.y, processingCoords.z - 0.97, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90, 255, 255, 255, 200, 0, 0, 0, 0)
            end
            if distPortion <= 2.5 then
                DrawText3D2(processingCoords.x, processingCoords.y, processingCoords.z, "~g~[E]~w~ To portion the chicken")
            end
            if distPortion <= 1.0 and IsControlJustPressed(0, 38) then
                TriggerEvent("ult:client:portionChicken")
            end

            local distPack = #(plyCoords - packingCoords)
            if distPack <= 20.0 then
                sleep = 0
                DrawMarker(27, packingCoords.x, packingCoords.y, packingCoords.z - 0.97, 0, 0, 0, 0, 0, 0, 0.90, 0.90, 0.90, 255, 255, 255, 200, 0, 0, 0, 0)
            end
            if distPack <= 2.5 then
                DrawText3D2(packingCoords.x, packingCoords.y, packingCoords.z, "~g~[E]~w~ To pack the chicken")
            end
            if distPack <= 1.0 and IsControlJustPressed(0, 38) then
                TriggerEvent("ult:client:packChicken")
            end

            Citizen.Wait(sleep)
        end
    end)
end
--------------------End Chicken-----------------------------------------

function LoadDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(10)
    end
end