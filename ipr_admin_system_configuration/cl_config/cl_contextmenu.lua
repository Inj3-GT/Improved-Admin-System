---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [Commande Chat]
Admin_System_Global.Action_Warn = "!warn" --- Inclure votre commande chat pour ouvrir vos Warns ici !
Admin_System_Global.Action_Logs = "!logs" --- Inclure votre commande chat pour ouvrir vos Logs ici !
--- <

--- > [Context Menu de Garry's Mod par défaut (Affichage, PNJs, BodyGroup ect..)]
Admin_System_Global.Cacher_ContextDefaut = true --- Cacher les buttons du Context Menu par défaut de Garry's Mod (Affichage, PNJs, BodyGroup ect..)

---- // Les groupes qui verront les buttons du Context Menu par défaut (Affichage, PNJs, BodyGroup ect..)
Admin_System_Global.WhiteList_ContextDefaut = {
    ["spadmin"] = true,
}
--- <

--- > [Context Menu Global]
Admin_System_Global.Active_ContextMenu = true --- Activer le Context Menu de Improved Admin System.
Admin_System_Global.Title = "Improved Admin System - Context Menu" --- Titre du context menu de gauche.
Admin_System_Global.ContextMenu_TitleRight = "Action rapide" --- Titre du context menu de droite.

---- // Empêcher l'ouverture du context menu quand vous avez un métier précis.
Admin_System_Global.ContextMenu_BlackList = {
    ["Pigeon"] = true,
    ["Mouette"] = true,
}
---- // Empêcher l'ouverture du context menu quand vous tenez une arme en main.
Admin_System_Global.ContextMenu_WeaponBackList = {
    ["vc_wrench"] = true, --- Exemple
}
--- <

--- > [Context menu de gauche]
Admin_System_Global.ContextLeftHide = false --- true : Cacher le context menu de gauche.
Admin_System_Global.ContextLeftPos = "gauche" --- (gauche,droite) Position du context menu de gauche.

---- // Nombre de joueur en ligne, indiquer votre nom du job Police ci-dessous.
Admin_System_Global.ContextMenu_CountPolice = {
    ["Agent de Police"] = true,
    ["Commissaire"] = true,
    ["SWAT"] = true,
    ["US Marshal"] = true,
    ["SWAT Tireur d'elite"] = true,
    ["Policier Corrompu"] = true,
    ["Police Scientifique"] = true,
}

---- // Nombre de joueur en ligne, indiquer votre nom du job Médecin ci-dessous..
Admin_System_Global.ContextMenu_CountMedic = {
    ["Medecin"] = true,
}
--- <

--- > [Context menu de droite] 
Admin_System_Global.ContextRightHide = false --- true : Cacher le context menu de droite.
Admin_System_Global.ContextRightPos = "droite" --- (gauche,droite) Position du context menu de droite.
Admin_System_Global.Command_ContextMenu = "simple_thirdperson_enable_toggle" --- Commande pour changer de vue (ThirdPerson).
--- <

--- > [Context Menu Action]
Admin_System_Global.Action_On = true --- // true = Activer le Context Menu Action de Improved Admin System.
Admin_System_Global.Action_Perm = false --- // true = Les administrateurs peuvent activer le context menu action seulement en administrateur en service, et s'ils sont dans le groupe "Admin_System_Global.Action_Table" / false = Seul le groupe "Admin_System_Global.Action_Table" sera pris en compte pour ouvrir le context menu action.

---- // Indiquer ici les groupes qui peuvent accéder aux Context Menu Action.
Admin_System_Global.Action_Table = {
    ["ModoTest"] = true,
    ["ModoTestVIP"] = true,
    ["Moderateur"] = true,
    ["ModerateurVIP"] = true,
    ["Moderateur+"] = true,
    ["Moderateur+VIP"] = true,
    ["Chef moderateur"] = true,
    ["Chef moderateurVIP"] = true,
    ["Administrateur"] = true,
    ["AdministrateurVIP"] = true,
    ["GerantSTAFF"] = true,
    ["admin"] = true,
    ["superadmin"] = true,
}
--- <