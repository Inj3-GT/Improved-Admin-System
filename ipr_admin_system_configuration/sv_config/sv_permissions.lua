---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [Téléchargement, Sauvegarde]
Admin_System_Global.Admin_System_Ressource = 1 --- 0 : Aucun téléchargement des ressources automatiques, 1 : Workshop, 2 : FastDL
Admin_System_Global.Admin_System_Save = 1 --- Sauvegarde des données(MySQL soon), 1 : "Data", 2 : "SQLite".
--- <

--- > [Workshop]
Admin_System_Global.Fix_Addon_Workshop_1 = false --- Avez-vous le script "Active Camouflage" ? (https://steamcommunity.com/sharedfiles/filedetails/?id=308977650), si oui placez la variable en true.
--- <

--- > [Chat]
Admin_System_Global.OverrideOpenTick = true  --- true : Remplacer /// et /// + message automatiquement, le panel de création du ticket va s'ouvrir à la place.
--- <

--- > [Notification]
Admin_System_Global.Admin_System_HideNotifAdm = false --- true : Cacher la notification lorsqu'un joueur utilise la commande pour passer en mode administrateur.
--- <

--- > [Changement de métier]
Admin_System_Global.SwitchAutoJob = false --- true : Activé le système de changement de job, vous serez automatiquement redirigé dans le métier ci-dessous "Admin_System_Global.SwitchAutoJobTbl".
Admin_System_Global.SwitchAutoJobTbl = "Administrateur en Service" --- Exemple, indiquer votre job ici si "Admin_System_Global.SwitchAutoJob" est en true.
Admin_System_Global.SwitchOldJob = false --- true : Revenir à l'état d'origine de votre ancien job après avoir désactivé le mode admin. (rétablie : job, position, arme, armure, vie) / false : désactiver
--- <

--- > [Noclip]
Admin_System_Global.Admin_System_ForceNoClip = false --- true : Force le passage en noclip aux administrateurs en mode administrateur. / false : Les administrateurs peuvent désactiver le noclip en mode admin.

---- // Indiquer les groupes WhiteList qui ne seront pas inclus dans le ForceNoClip.
Admin_System_Global.ForceNoClip_WhiteList = {
    ["GerantSTAFF"] = true,
    ["superadmin"] = true,
}
--- <

--- > [Physics Gun]
Admin_System_Global.PhysGun_Freeze = false --- Activé le système pour freeze un joueur lorsqu'il est attrapé avec le Physics Gun, et/ou réduire sa vitesse d'impact.
Admin_System_Global.PhysGun_ProtectImpactGround = false --- Si un joueur est lâché d'une hauteur élevée par le physics gun, sa vitesse sera réduite à zéro avant impact sur le sol (aucun dégât subi).
Admin_System_Global.PhysGun_Touche = IN_ATTACK2 --- La Touche pour freeze un joueur lorsqu'il est attrapé avec le Physics Gun (clique droit par défaut) . (https://wiki.facepunch.com/gmod/Enums/IN)
--- <

--- > [AntiSpam]
Admin_System_Global.AntiSpam_Gen = 1.5 --- Temps en seconde en général lorsque l'administrateur va pouvoir de nouveau effectuer une action / Anti-SPAM.
--- <

--- > [Remboursement]
Admin_System_Global.Remb_On = true --- true : Activer le système de remboursement. false : Désactiver le système de remboursement.
Admin_System_Global.Remb_Death = true --- true : Les joueurs qui sont mort par suicide sont ajoutés dans le système de remboursement.

---- // Indiquer les groupes qui peuvent accéder au panel de remboursement.
Admin_System_Global.Remb_Groupe = {
    ["GerantSTAFF"] = true,
    ["superadmin"] = true,
}
--- <

--- > [Permission Panel Administrateurs en Service]
---- // Indiquer les groupes qui peuvent accéder au panel pour consulter les administrateurs en service.
Admin_System_Global.Cmd_Service_Groupe = {
    ["GerantSTAFF"] = true,
    ["superadmin"] = true,
}
--- <

--- > [Permission Mode Streamer]
---- // Indiquer les groupes qui peuvent accéder au mode streamer (les tickets ne seront plus visibles.)
Admin_System_Global.StreamMod = {
    ["superadmin"] = true,
}
--- <

--- > [Permission Panel Statistiques des Tickets]
---- // Indiquer les groupes qui peuvent consulter les statistiques des tickets.
Admin_System_Global.Stats_Groupe = {
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
--- <

--- > [Permission Panel Zones Admin]
---- // Indiquer les groupes qui peuvent ajouter/supprimer des Zones Admin.
Admin_System_Global.ZoneAdmin_Groupe = {
    ["GerantSTAFF"] = true,
    ["superadmin"] = true,
}
--- <