local currentVersion = "1.5"  -- Versi lokal yang sekarang

local function checkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/DarryDerr/qb-slaughtererjob/main/version.txt", function(errorCode, result, headers)
        if errorCode == 200 then
            local latestVersion = result:gsub("%s+", "") -- hapus whitespace
            if latestVersion ~= currentVersion then
                print("^1[Version Check]^7 Update available! Current Version: " .. currentVersion .. " | Latest: " .. latestVersion)
                TriggerEvent('chat:addMessage', {
                    args = {"^1[Update]^7 New version available: " .. latestVersion .. ". Please update your resource."}
                })
                -- Bisa juga trigger notif / popup dll di client
            else
                print("^2[Version Check]^7 You have the latest version: " .. currentVersion)
            end
        else
            print("^3[Version Check]^7 Failed to check latest version. HTTP error: " .. errorCode)
        end
    end, "GET")
end

-- Panggil cek versi saat resource start
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        checkVersion()
    end
end)
