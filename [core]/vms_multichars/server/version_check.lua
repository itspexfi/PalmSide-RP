Citizen.CreateThread(function()
    Citizen.Wait(5000)
    local function ToNumber(str)
        return tonumber(str)
    end
    local resourceName = GetCurrentResourceName()
    local currentVersion = GetResourceMetadata(resourceName, 'version', 0)

    PerformHttpRequest('https://your.version.url', function(errorCode, resultData, resultHeaders)
        if not resultData then 
            return print('^1The version check failed, github is down.^0') 
        end
        local result = json.decode(resultData:sub(1, -2))
        if ToNumber(result.version:gsub('%.', '')) > ToNumber(currentVersion:gsub('%.', '')) then
            local symbols = '^9'
            for cd = 1, 26+#resourceName do
                symbols = symbols..'-'
            end
            symbols = symbols..'^0'
            print(symbols)
            print('^3['..resourceName..'] - New update available now!^0\nCurrent Version: ^1'..currentVersion..'^0.\nNew Version: ^2'..result.version..'^0.\nNews: ^2'..result.news..'^0.\n\n^5Download it now on your keymaster.fivem.net^0.')
            print(symbols)
        end
    end, 'GET')
end)