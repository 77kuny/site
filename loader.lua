print("✅ Loader загружен!")

-- Пример подключения других модулей
local scripts = {
    ESP = "https://raw.githubusercontent.com/77kuny/RB/refs/heads/modules/ESP.lua",
    Fly = "https://raw.githubusercontent.com/77kuny/RB/refs/heads/modules/Fly.lua"
}

for name, url in pairs(scripts) do
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if ok then
        print(name .. " загружен!")
    else
        warn(name .. " не удалось загрузить: " .. err)
    end
end
