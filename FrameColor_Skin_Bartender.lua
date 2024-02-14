local info = {
    moduleName = "Bartender4",
    color1 = {
        name = "Color",
        desc = "",
    },
}

local module = FrameColor_CreateSkinModule(info)


function module:OnEnable()
    print("|cffF4A460 FrameColor: Bartender4 Skin:|r You can uninstall the \"FrameColor: Bartender4 Skin\" plugin, as it's functionality has been integrated into the main add-on. |r ")
end

function module:OnDisable()
 
end

