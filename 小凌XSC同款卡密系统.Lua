local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Key = "XiaoLing-EAB36-C51EC-06F8F-89A8A-793ED"

local function onSuccess()
    print("功能加载完成")
    XiaoLing = "By：小凌" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoLingUwU/Xiao-Ling-ai-nicai/main/%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83UwU.XiaoLing.AEX.Lua"))("冬凌你好")
end

local function onFail()
    OrionLib:MakeNotification({
        Name = "卡密失败",
        Content = "验证失败请重新输入卡密",
        Duration = 5
    })
end

local function verifyKey(input)
    if input == Key then
        OrionLib:MakeNotification({
            Name = "卡密成功正在进入",
            Content = "验证成功正在打开冬凌中心.",
            Duration = 5
        })
        wait(5)
        OrionLib:Destroy()
        onSuccess()
    else
        onFail()
    end
end

local Window = OrionLib:MakeWindow({
    Name = "卡密页面",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "By:小凌、Krx"
})

local Tab = Window:MakeTab({
    Name = "卡密系统V3",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local KeySection = Tab:AddSection({
    Name = "获取卡密：767836834 卡密3天一换别想白嫖"
})

Tab:AddTextbox({
    Name = "输入卡密", 
    Default = "",
    TextDisappear = true,
    Callback = verifyKey
})

OrionLib:Init()