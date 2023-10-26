local info = {
    moduleName = "Bartender4",
    color1 = {
        name = "Color",
        desc = "",
    },
}

local module = FrameColor_CreateSkinModule(info)

local _G = _G
local pairs = pairs
local SetDesaturation = SetDesaturation
local SetVertexColor = SetVertexColor

function module:OnEnable()
    local main_color = self:GetColor1()
    self:Recolor(main_color, 1)
end

function module:OnDisable()
    local color = {r=1,g=1,b=1,a=1}
    self:Recolor(color, 0)
end

function module:Recolor(main_color, desaturation)
    --actionbars 1 to 14
    for i=1,180 do
        local BartenderActionButton = _G["BT4Button"..i.."NormalTexture"] 
        if BartenderActionButton then
            BartenderActionButton:SetDesaturation(desaturation)
            BartenderActionButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
    --shapeshift bar
    for i=1, GetNumShapeshiftForms() do
        local BartenderStanceButton = _G["BT4StanceButton"..i.."NormalTexture"] 
        if BartenderStanceButton then
            BartenderStanceButton:SetDesaturation(desaturation)
            BartenderStanceButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
    --pet bar
    for i=1,10 do
        local BartenderPetActionButton = _G["BT4PetButton"..i.."NormalTexture"] 
        if BartenderPetActionButton then
            BartenderPetActionButton:SetDesaturation(desaturation)
            BartenderPetActionButton:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
    end
    local BT4BarBlizzardArt = BT4BarBlizzardArt
    if BT4BarBlizzardArt then
        for _,v in pairs({
            BlizzardArtRightCap,
            BlizzardArtLeftCap,
        }) do
            v:SetDesaturation(desaturation)
            v:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
        end
        if BT4BarBlizzardArt.nineSliceParent then
            for _,v in pairs({BT4BarBlizzardArt.nineSliceParent:GetChildren()}) do
                if v.Divider then 
                    for _,region in pairs({
                        "TopEdge",
                        "Center",
                        "BottomEdge",
                    }) do
                        v.Divider[region]:SetDesaturation(desaturation)
                        v.Divider[region]:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
                    end
                end
                for _,child in pairs({v:GetRegions()}) do
                    child:SetDesaturation(desaturation)
                    child:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
                end
            end
        end
        if BT4BarBlizzardArt.nineSliceMenuBagParent then
            for _,v in pairs({BT4BarBlizzardArt.nineSliceMenuBagParent:GetChildren()}) do
                if v.Divider then 
                    for _,region in pairs({
                        "TopEdge",
                        "Center",
                        "BottomEdge",
                    }) do
                        v.Divider[region]:SetDesaturation(desaturation)
                        v.Divider[region]:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
                    end
                end
                for _,child in pairs({v:GetRegions()}) do
                    child:SetDesaturation(desaturation)
                    child:SetVertexColor(main_color.r,main_color.g,main_color.b,main_color.a)
                end
            end
        end
    end
end

