----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
--- // https://steamcommunity.com/id/Inj3/
--- // Improved Admin System
--- // true = activer, false = désactiver

---- The language can be changed directly in the file : addons\improved_admin_system\lua\autorun\admin_system_load.lua (if you are not French)

Admin_System_Global.General_Permission = { ----- // Indiquer ici les groupes qui peuvent avoir un accès presque total, comme traiter/afficher les tickets, activer le Mode Admin, et accéder à certaines actions. Ne pas indiquer d'autres groupes que vos groupes modérateurs/administrateurs/superadmins !
     ["ModoTest"] = {Level = 10}, --- // Level : (Un nombre inférieur ne peut pas effectuer d'action sur un nombre supérieur) Freeze un autre joueur, se téléporter, strip, ejecter conducteur, ect.. si vous souhaitez aucune restriction entre vos groupes, indiquer le même nombre partout dans la catégorie "Level".
     ["ModoTestVIP"] = {Level = 10},
     ["Moderateur"] = {Level = 30},
     ["ModerateurVIP"] = {Level = 30},
     ["Moderateur+"] = {Level = 50},
     ["Moderateur+VIP"] = {Level = 50},
     ["Chef moderateur"] = {Level = 70},
     ["Chef moderateurVIP"] = {Level = 70},
     ["Administrateur"] = {Level = 80},
     ["AdministrateurVIP"] = {Level = 80},
     ["GerantSTAFF"] = {Level = 90},
     ["admin"] = {Level = 95},
     ["superadmin"] = {Level = 100},
}

if SERVER then
     --- //
     Admin_System_Global.Admin_System_Ressource = 1 --- 0 = Aucun téléchargement des ressources automatiques / 1 = Workshop / 2 = FastDL
     Admin_System_Global.Admin_System_Save = "Data" --- // Sauvegarde des données / "Data", "SQLite".
     --- //
     Admin_System_Global.Admin_System_HideNotifAdm = false --- true = Cacher la notification lorsqu'un joueur utilise la commande pour passer en mode administrateur.
     --- //	 
     Admin_System_Global.SwitchAutoJob = false --- true = Activé le système de changement de job, vous serez automatiquement redirigé dans le métier ci-dessous "Admin_System_Global.SwitchAutoJobTbl".
     Admin_System_Global.SwitchAutoJobTbl = "Administrateur en Service" --- Exemple, indiquer votre job ici si "Admin_System_Global.SwitchAutoJob" est en true.
     Admin_System_Global.SwitchOldJob = false --- true = Revenir à l'état d'origine de votre ancien job après avoir désactivé le mode admin. (rétablie = job, position, arme, armure, vie) / false = désactiver
     --- //	 
     Admin_System_Global.Ticket_Job_Bool = false --- // Si true alors les jobs seront prise en compte, les tickets ne seront plus reçus et le mode admin ne pourra plus être activé si vous n'êtes pas dans le bon job, ils seront reçu que si vous appartenez au bon groupe "Admin_System_Global.General_Permission" , et si vous êtes dans le bon job du groupe "Admin_System_Global.Ticket_Job" ci-dessous.
     ---- Attention à lire : si vous activez cette variable, les tickets ne seront plus visible et le mode admin ne pourra plus être activé en dehors du job ou des jobs ci-dessous dans "Admin_System_Global.Ticket_Job".
     Admin_System_Global.Ticket_Job = { ----- // Indiquer ici le nom des jobs qui seront prise en compte, qui peuvent traiter/afficher les tickets, et activer le Mode Admin.
          ["Administrateur en Service"] = true,
     }
	 
     --- //
     Admin_System_Global.Admin_System_ForceNoClip = false --- // true = Force le passage en noclip aux administrateurs en mode administrateur. / false = Les administrateurs peuvent désactiver le noclip en mode admin.     
	 Admin_System_Global.ForceNoClip_WhiteList = { ----- // Indiquer ici les groupes WhiteList ne seront pas inclu dans le ForceNoClip.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }
	 
     --- //
     Admin_System_Global.Admin_System_ZoneAdminDist = 1300 ----- // Indiquer ici la distance maximum à inclure entre les zones administrateurs (minimum conseillé : 1000).
     --- //
     Admin_System_Global.AntiSpam_Gen = 1.5 --- // Temps en seconde en général lorsque l'administrateur va pouvoir de nouveau effectuer une action / Anti-SPAM.
     --- //
     Admin_System_Global.PhysGun_Freeze = false --- // Freeze un joueur lorsqu'il est attrapé avec le Physics Gun.
     Admin_System_Global.PhysGun_Touche = IN_ATTACK2 --- // La Touche pour freeze un joueur lorsqu'il est attrapé avec le Physics Gun (clique droit par défaut) . - https://wiki.facepunch.com/gmod/Enums/IN
     --- //
     Admin_System_Global.Cmd_Service_Groupe = { ----- // Indiquer ici les groupes qui peuvent accéder au panel pour consulter les administrateurs en service.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }
	 
     --- //	 
     Admin_System_Global.Remb_On = true --- // true = Activer le système de remboursement. false = Désactiver le système de remboursement.
     Admin_System_Global.Remb_Death = true --- // true = Les joueurs qui sont mort par suicide sont ajoutés dans le système de remboursement.     
	 Admin_System_Global.Remb_Groupe = { ----- // Indiquer ici les groupes qui peuvent accéder au panel de remboursement.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }
	 
     --- //
     Admin_System_Global.Stats_Groupe = { ----- // Indiquer ici les groupes qui peuvent consulter les statistiques des tickets.
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
	 
     --- //
     Admin_System_Global.ZoneAdmin_Groupe = { ----- // Indiquer ici les groupes qui peuvent ajouter/supprimer des Zones Admin.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }
	 
     --- //
     Admin_System_Global.Admin_System_Save = string.lower(Admin_System_Global.Admin_System_Save) --- // Ne pas toucher !
else
     --- //
     Admin_System_Global.Admin_System_AutoRdm = false --- // true (déconseillé pour le moment, contactez-moi si vous en avez réellement besoin) : Activer l'auto-redimension des panneaux en fonction de la résolution de l'écran. (peut baisser la qualité visuelle des panneaux) / Par défaut : false - Désactiver     
     --- //
	 Admin_System_Global.NotifPopup_Sound = "buttons/button24.wav" --- // Son de la notification Popup.-- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html
     Admin_System_Global.Cmd_General_Tbl = { ----- // Les buttons disponibles pour les commandes générales. (vous pouvez générer autant de button que vous le souhaitez)
          [1] = {  ---- // Nombre du button, du plus petit au plus grand (ordre de positionnement).
               Name = "Zone admin",
               Commands = Admin_System_Global.ZoneAdmin_Cmd,
               Icon = "icon16/shield.png"
          },

          [2] = {
               Name = "Stats Admin",
               Commands = Admin_System_Global.Stats_Cmd,
               Icon = "icon16/chart_pie.png"
          },

          [3] = {
               Name = "Remboursement",
               Commands = Admin_System_Global.Remb_Cmd,
               Icon = "icon16/money.png"
          },
		  
		  [4] = {
               Name = "Chat Admin",
               Commands = "say " ..Admin_System_Global.Chat_Cmd,
               Icon = "icon16/comments.png"
          },

          [5] = {
               Name = "Admin Config",
               Commands = "say " ..Admin_System_Global.ModeAdmin_Chx,
               Icon = "icon16/cog.png"
          },

          [6] = {
               Name = "Admin Service",
               Commands = "say " ..Admin_System_Global.Service_Cmd,
               Icon = "icon16/user.png"
          },

          [7] = {
               Name = "Mode admin",
               Commands = "say " ..Admin_System_Global.Mode_Cmd,
               Icon = "icon16/eye.png"
          },

          [8] = {
               Name = "Créer un ticket",
               Commands = Admin_System_Global.Ticket_Cmd,
               Icon = "icon16/email_edit.png"
          },

          [9] = {
               Name = "Gestion (wip)",
               Commands = "wip", ---- // Cette fonctionnalité sera disponible dans une prochaine mise à jour.
               Icon = "icon16/lock.png"
          },

          [10] = {
               Name = "Ulx",
               Commands = "say !menu",
               Icon = "icon16/application_osx_terminal.png"
          },

          [11] = {
               Name = "Warn",
               Commands = "say !warn", ---- // Si la commande n'est pas une commande console, mais seulement disponible via le chat, ajouter say devant votre commande.
               Icon = "icon16/bell.png"
          },

          [12] = {
               Name = "Logs",
               Commands = "say !logs",
               Icon = "icon16/page_white_code.png"
          },

          --[12] = { --- // Exemple : Création d'un button.
          -- Name = "Fun Commands",
          -- Commands = "ma commande",
          -- Icon = "icon16/bug.png"
          -- },

     }
end