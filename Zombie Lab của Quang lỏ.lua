-- https://scriptblox.com/script/Zombie-lab-Hotfix-OP-Gun-mod-45487

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

if not getgc then
    warn("Needs executor that supports 'getgc' cuz then it broke a script if not supports")
    return
else
print("Executor that supports 'getgc'")
print("Checking game...")
end

task.wait(1)

if game.PlaceId == 6741970382 then

local garbage = getgc(true)
local settings = {
    MinigunEnabled = false, -- Idk what is that if u know = make it true
    FireRate = 0, -- Slowdown (W)
    BaseDamage = 10000000, -- Damage gives gun (W)
    ReloadTime = 0, -- Reload time (W)
    AmmoPerClip = 1e300, -- Ammo (W)
    Lifesteal = 100, -- Gives health when killed zombie (W)
    CameraShakingEnabled = false, -- stops annoying camera shaking when shoting (W)
    HeadshotEnabled = 10000, -- If u lucky = change big number but else: make it 0 (if u want)
    HeadshotDamageMultiplier = 1000, -- Multiplier a damage if shots on head 
     -- (for example with HeadshotDamageMultiplier: 10 x 10 = 100)
     -- (for example without: 10 x 0 = 10)
}

-- don't change anything in the script --
-- thx to random ppl ;) --
for i, table in pairs(garbage) do
    if type(table) == "table" then
        for key, value in pairs(settings) do
            if rawget(table, key) then
                rawset(table, key, value)
            end
        end
    end
end

Fluent:Notify({
        Title = "em ơi lâu đài tình ái đó :)))",
        Content = "chó cali súc vật như khăn lau nhà",
        SubContent = "ai làm: Quang lỏ",
        Duration = 5
    })
    task.wait(3)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

else
Fluent:Notify({
        Title = "vô lộn game rồi kìa trời :)))",
        Content = "Không phải Zombie Lab m ơi :)))",
        SubContent = "ai làm: Quang lỏ",
        Duration = 10
    })
end