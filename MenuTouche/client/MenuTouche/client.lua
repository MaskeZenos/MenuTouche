Touche = {
    {Touche = "F1" , Action = "Telephone"},
    {Touche = "F2" , Action = "Inventaire"},
    {Touche = "F5" , Action = "Menu F5"},
    {Touche = "F6" , Action = "Menu Job"},
    {Touche = "F7" , Action = "Menu Gang / Organisation"},
    {Touche = "U" , Action = "Fermer / Ouvrir le véhicule"},
    {Touche = "K" , Action = "Ouvrir le coffre"},
    {Touche = "ALT" , Action = "Context Menu"},
    --{Touche = "F10" , Action = "Menu Admin"},
}

RMenu.Add('Touche', 'mainTouche', RageUI.CreateMenu("Touche", "Touche"))

Citizen.CreateThread(function()

    while true do
        if Command.ToucheOpen ~= nil then 
            if IsControlJustPressed(1, Command.ToucheOpen) then
                RageUI.Visible(RMenu:Get('Touche', 'mainTouche'), not RageUI.Visible(RMenu:Get('Touche', 'mainTouche')))
            end
        end

        RageUI.IsVisible(RMenu:Get('Touche', 'mainTouche'), function()
            RageUI.Separator("↓ ~b~ Touche ~s~↓")
            RageUI.Line()

            for k,v in pairs(Touche) do
                RageUI.Button("~b~" .. v.Touche, nil, { RightLabel = v.Action }, true, {
                    onSelected = function()
                    end
                })
            end
        
        end,function()
        end)
        Wait (0)
    end 
end)

RegisterCommand(Command.Command, function()
    RageUI.Visible(RMenu:Get('Touche', 'mainTouche'), not RageUI.Visible(RMenu:Get('Touche', 'mainTouche')))
end, false)