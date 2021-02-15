----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
--- // https://steamcommunity.com/id/Inj3/
--- // Improved Admin System
--- // true = activer, false = désactiver

Admin_System_Global.Mode_Lang = "fr" --- // Choisir une langue par défaut - Indiquer : "fr" ou "en".

--- //

Admin_System_Global.General_Permission = { ----- // Indiquer ici les groupes qui peuvent avoir un accès presque total, comme traiter/afficher les tickets, activer le Mode Admin, et accéder à certaines actions. Ne pas indiquer d'autres groupes que vos modérateurs !
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

if SERVER then

     --- //

     Admin_System_Global.Admin_System_Ressource = 1 --- 0 = Aucun téléchargement des ressources automatiques / 1 = Workshop / 2 = FastDL

     Admin_System_Global.Admin_System_Save = "Data" --- // Sauvegarde des données / "Data", "SQLite".

     --- //

     Admin_System_Global.Admin_System_HideNotifAdm = false --- true = Cacher la notification lorsqu'un joueur utilise la commande pour passer en mode administrateur.

     --- //

     Admin_System_Global.SwitchAutoJob = false --- true = Si le mode administrateur est actif, vous serez automatiquement redirigé dans le job ci-dessous "Admin_System_Global.SwitchAutoJobTbl".

     Admin_System_Global.SwitchAutoJobTbl = "Administrateur en Service" --- Exemple, indiquer votre job ici si "Admin_System_Global.SwitchAutoJob" est en true.

     Admin_System_Global.SwitchOldJob = true --- true = Revenir à l'état d'origine de votre ancien job après avoir désactivé le mode admin.

     --- //

     Admin_System_Global.Ticket_Job_Bool = false --- // Si true alors les jobs seront prise en compte, les tickets ne seront plus reçus et le mode admin ne pourra plus être activé si vous n'êtes pas dans le bon job, ils seront reçu que si vous appartenez au bon groupe "Admin_System_Global.General_Permission" , et si vous êtes dans le bon job du groupe "Admin_System_Global.Ticket_Job" ci-dessous.
     ---- Attention si vous activez cette variable, les tickets ne seront plus visible et le mode admin ne pourra plus être activé en dehors du job ou des jobs ci-dessous "Admin_System_Global.Ticket_Job".

     Admin_System_Global.Ticket_Job = { ----- // Indiquer ici le nom des jobs qui seront prise en compte, qui peuvent traiter/afficher les tickets, et activer le Mode Admin.
          ["Administrateur en Service"] = true,
     }

     --- //

     Admin_System_Global.Admin_System_ForceNoClip = true --- // true = Force le passage en noclip aux administrateurs en mode administrateur. / false = Les administrateurs peuvent désactiver le noclip en mode admin.

     Admin_System_Global.ForceNoClip_WhiteList = { ----- // Indiquer ici les groupes WhiteList ne seront pas inclu dans le ForceNoClip.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }
     --- //

     Admin_System_Global.Admin_System_ZoneAdmin = true ----- // Activer la verification des distances entre les zones admin / false = Désactiver la vérification (fortement déconseillé).

     Admin_System_Global.Admin_System_ZoneAdminDist = 1300 ----- // Indiquer ici la distance maximum à inclure entre les zones administrateurs (minimum conseillé : 1000).

     --- //

     Admin_System_Global.AntiSpam_Gen = 1.5 --- // Temps en seconde en général lorsque l'administrateur va pouvoir de nouveau effectuer une action / Anti-SPAM.

     Admin_System_Global.AntiSpam_Text_Gen = "Un message réseau est déjà en cours, veuillez patientez" --- // Message lorsqu'un joueur ou administrateur essaye d'envoyer trop de message au server / Anti-SPAM.

     --- //

     Admin_System_Global.PhysGun_Freeze = false --- // Freeze un joueur lorsqu'il est attrapé avec le Physics Gun.

     Admin_System_Global.PhysGun_Touche = IN_ATTACK2 --- // La Touche pour freeze un joueur lorsqu'il est attrapé avec le Physics Gun (clique droit par défaut) . - https://wiki.facepunch.com/gmod/Enums/IN

     --- //

     Admin_System_Global.Cmd_General_Groupe = { ----- // Indiquer ici les groupes qui peuvent accéder au panel général qui regroupe toutes les commandes.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }

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

     Admin_System_Global.Stats_Save =  "improvedticketsystem/sauvegarde/" --- // "Data" / Sauvegarde des logs.

     Admin_System_Global.Stats_Groupe = { ----- // Indiquer ici les groupes qui peuvent consulter les statistiques des tickets --- "ticket_verification" dans la console, ou le chat.
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

     Admin_System_Global.ZoneAdmin_Save = "improvedticketsystem/position/" --- // Sauvegarder des positions Zone Admin.

     Admin_System_Global.ZoneAdmin_Groupe = { ----- // Indiquer ici les groupes qui peuvent ajouter/supprimer des Zones Admin --- "ticket_config_zoneadmin" dans la console.
          ["GerantSTAFF"] = true,
          ["superadmin"] = true,
     }

     --- //

     Admin_System_Global.Admin_System_Save = string.lower(Admin_System_Global.Admin_System_Save) --- // Ne pas toucher !

else

     --- //

     Admin_System_Global.Admin_System_AutoRdm = false --- // true : Activer l'auto-redimension des panneaux en fonction de la résolution de l'écran. (peut baisser la qualité visuelle des panneaux) / Par défaut : false - Désactiver

     Admin_System_Global.NotifPopup_Sound = "buttons/button24.wav" --- // Son de la notification Popup.-- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html

     --- //

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
               Name = "Admin Config",
               Commands = "say " ..Admin_System_Global.ModeAdmin_Chx,
               Icon = "icon16/cog.png"
          },

          [5] = {
               Name = "Admin Service",
               Commands = "say " ..Admin_System_Global.Service_Cmd,
               Icon = "icon16/user.png"
          },

          [6] = {
               Name = "Mode admin",
               Commands = "say " ..Admin_System_Global.Mode_Cmd,
               Icon = "icon16/eye.png"
          },

          [7] = {
               Name = "Créer un ticket",
               Commands = Admin_System_Global.Ticket_Cmd,
               Icon = "icon16/email_edit.png"
          },

          [8] = {
               Name = "Gestion (wip)",
               Commands = "wip", ---- // Cette fonctionnalité sera disponible dans une prochaine mise à jour.
               Icon = "icon16/lock.png"
          },

          [9] = {
               Name = "Ulx",
               Commands = "say !menu",
               Icon = "icon16/application_osx_terminal.png"
          },

          [10] = {
               Name = "Warn",
               Commands = "say !warn", ---- // Si la commande n'est pas une commande console, mais seulement disponible via le chat, ajouter say devant votre commande.
               Icon = "icon16/bell.png"
          },

          [11] = {
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

     --- //

end