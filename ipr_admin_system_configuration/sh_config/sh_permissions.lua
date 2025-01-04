---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [Permissions General]
---- // Indiquer dans "Admin_System_Global.General_Permission" les groupes qui peuvent avoir un accès presque total, comme traiter/afficher les tickets, activer le Mode Admin, et accéder à certaines actions. Ne pas indiquer d'autres groupes que vos groupes modérateurs/administrateurs/superadmins !
---- // Level : (Un nombre inférieur ne peut pas effectuer d'action sur un nombre supérieur) Freeze un autre joueur, se téléporter, strip, ejecter conducteur, ect.. si vous souhaitez aucune restriction entre vos groupes, indiquer le même nombre partout dans la catégorie "Level".
Admin_System_Global.General_Permission = {
    ["ModoTest"] = {Level = 10},
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
Admin_System_Global.OnlyJob_Perm = false --- Attention, passer cette variable en "true", si vous souhaitez seulement choisir les métiers au lieu des groupes ci-dessus !

---- // Indiquer ci-dessous les métiers si vous avez défini "Admin_System_Global.OnlyJob_Perm" en true !
Admin_System_Global.Job_GeneralPermission = {
    ["Marchand Noir"] = {Level = 100},
}
--- <

--- > [Zone Admin]
Admin_System_Global.Admin_System_ZoneAdminSize = 150 --- Indiquer ici la taille de vos zones administrateurs (150 par défaut longueur-largeur/valeur minimal maximum), augmenter le nombre pour agrandir la zone administrateur.
--- <