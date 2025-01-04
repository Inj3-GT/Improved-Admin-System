---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [Avis Support]
Admin_System_Global.RateAdminEnable = true --- true : Activer le système d'avis support (évaluation), false : Désactiver le système d'avis support
--- <

--- > [Supression Commentaire Avis Support]
---- // Qui peut supprimer un commentaire créer par un joueur ?
Admin_System_Global.RateAdminDelete = {
    ["GerantSTAFF"] = true,
    ["superadmin"] = true,
}
--- <