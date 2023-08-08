# MenuTouche
Un menu très facilement configurable pour que vos nouveaux joueurs FiveM sachent quelle touche sert à quoi .

# Config 
```
Touche.Touches = {
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
Command.Command = "touche" --Commande pour ouvrir le menu touche
--Si vous ne voulez pas de touche pour ouvrir le menu, remplacer le touche par nil  
Command.ToucheOpen = 182 -- L Touche par défaut https://docs.fivem.net/docs/game-references/controls/
```
