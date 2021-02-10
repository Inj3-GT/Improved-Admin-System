----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
--- // https://steamcommunity.com/id/Inj3/
--- // Improved Admin System
--- // true = activer, false = désactiver

if SERVER then return end

--- //

Admin_System_Global.Action_Warn = "!warn" --- // Inclure votre commande chat pour ouvrir vos Warns ici !

Admin_System_Global.Action_Logs = "!logs" --- // Inclure votre commande chat pour ouvrir vos Logs ici !

--- // Context Menu de Garry's Mod par défaut (Affichage, PNJs, BodyGroup ect..)

Admin_System_Global.Cacher_ContextDefaut = true --- // Cacher les buttons du Context Menu par défaut de Garry's Mod (Affichage, PNJs, BodyGroup ect..)

Admin_System_Global.WhiteList_ContextDefaut = { --- // Les groupes qui verront les buttons du Context Menu par défaut (Affichage, PNJs, BodyGroup ect..)
     ["superadmin"] = true,
}

--- // Context Menu Action Improved Admin System

Admin_System_Global.Action_On = true --- // true = Activer le Context Menu Action de Improved Admin System.

Admin_System_Global.Action_Perm = false --- // true = Les administrateurs peuvent activer le context menu action seulement en administrateur en service, et s'ils sont dans le groupe "Admin_System_Global.Action_Table" / false = Seul le groupe "Admin_System_Global.Action_Table" sera pris en compte pour ouvrir le context menu action.

Admin_System_Global.Action_HideBut = true --- // true = Les buttons du context menu action ne disparaîtrons pas lorsque vous cliquez dessus. - false = Les buttons disparaîtront après avoir cliqué dessus.

Admin_System_Global.Action_Table = { ----- // Indiquer ici les groupes qui peuvent accéder aux Context Menu Action.
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
     ["superadmin"] = true,
}

--- // Context Menu Improved Admin System

Admin_System_Global.Active_ContextMenu = true --- // Activer le Context Menu de Improved Admin System.

Admin_System_Global.Title = "Improved Admin System - Context Menu" --- // Le titre du context menu.

Admin_System_Global.ContextMenu_BlackList = { --- // Les métiers blacklist qui ne peuvent pas avoir accès au Context Menu.
     ["Pigeon"] = true,
     ["Mouette"] = true,
}

Admin_System_Global.ContextMenu_WeaponBackList = { --- // Les armes blacklist qui ne peuvent pas avoir accès au Context Menu.
     ["vc_wrench"] = true, --- Exemple
}

Admin_System_Global.Command_ContextMenu = "simple_thirdperson_enable_toggle" --- // Commande pour changer de vue (ThirdPerson).

Admin_System_Global.ContextMenu_CountPolice = { --- // Compter le nombre de joueur en ligne - Indiquer votre nom de job Police ici
     ["Agent de Police"] = true,
     ["Commissaire"] = true,
     ["SWAT"] = true,
     ["US Marshal"] = true,
     ["SWAT Tireur d'elite"] = true,
     ["Policier Corrompu"] = true,
     ["Police Scientifique"] = true,
}

Admin_System_Global.ContextMenu_CountMedic = { --- // Compter le nombre de joueur en ligne - Indiquer votre nom de job Médecin ici
     ["Medecin"] = true,
}

--- //