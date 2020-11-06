----------- SCRIPT BY INJ3
----------- SCRIPT BY INJ3
----------- SCRIPT BY INJ3
----------- SCRIPT BY INJ3
---- https://steamcommunity.com/id/Inj3/

Central_TicketTbl_Global = Central_TicketTbl_Global or {} --- Ne pas toucher !

Central_TicketTbl_Global.Mode_Cmd = "!admin" --- Commande chat/console pour activer le Mode Admin.

Central_TicketTbl_Global.Ticket_Groupe = { ----- Indiquer ici les groupes qui peuvent traiter/afficher les tickets, et activer le Mode Admin.
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

Central_TicketTbl_Global.Notif_Gen = { ----- Créer vos propres notifications à inclure au ticket ici !
   [1] = {
      Nom_Notification = "Notification [Patientez quelques minutes.]", ----- Nom de votre notification.
      Message_Notification = "Votre ticket admin va être traité dans moins de quelques minutes."  ----- Message à envoyer au joueur !
   },
   [2] = {
      Nom_Notification = "Notification [Ticket traité dans moins d'une minute.]",  ----- Nom de votre notification.
      Message_Notification = "Votre ticket va être traité dans moins d'une minute."   ----- Message à envoyer au joueur !
   }
}

if SERVER then

   Central_Teleport_Val_VerifTable_ = Central_Teleport_Val_VerifTable_ or {} --- Ne pas toucher !

   Central_TicketTbl_Global.Ticket_Ressource = true ---- true = Activer le téléchargement des contents au chargement du serveur / false = Désactiver le téléchargement des contents au chargement du serveur.

   Central_TicketTbl_Global.Ticket_Save = "Data" ---- Sauvegarde des données / "Data", "SQLite".
   Central_TicketTbl_Global.Ticket_AntiSpam = 1.5 ---- Temps en seconde lorsque le joueur va pouvoir de nouveau effectuer une action / Anti-SPAM.
   Central_TicketTbl_Global.Ticket_Prise = 15 --- Temps en secondes entre les différentes prises en charge des tickets.

   Central_TicketTbl_Global.Ticket_PhysGun_Freeze = false --- Freeze un joueur lorsqu'il est attrapé avec le Physics Gun.
   Central_TicketTbl_Global.Ticket_PhysGun_Touche = IN_ATTACK2 --- La Touche pour freeze un joueur lorsqu'il est attrapé avec le Physics Gun (clique droit par défaut) . - https://wiki.facepunch.com/gmod/Enums/IN

   Central_TicketTbl_Global.Ticket_Cmd = "!ticket" --- Commande chat/console d'ouverture du panel pour créer un ticket.
   Central_TicketTbl_Global.Ticket_Text = "Le ticket a bien été envoyé, temps de réponse estimé max : 10 minutes !" ---- Le texte à afficher lorsqu'un joueur a envoyé un ticket aux administrateurs.

   Central_TicketTbl_Global.Ticket_Bool = true --- true = Affiche les tickets tout le temps / false = N'affichent les tickets que si vous avez activé le Mode Admin.
   Central_TicketTbl_Global.Ticket_Bool_1 = true ---- true = Vous pouvez voir vos propre ticket crée en Administrateur / false = Seuls les autres Administrateurs connectés peuvent voir vos propres tickets crée en Administrateur.

   Central_TicketTbl_Global.Stats_Cmd = "ticket_verification" --- Commande chat/console d'ouverture du panel des statistiques.
   Central_TicketTbl_Global.Stats_Save =  "improvedticketsystem/sauvegarde/" --- "Data" / Sauvegarde des logs.

   Central_TicketTbl_Global.Stats_Groupe = { ----- Indiquer ici les groupes qui peuvent consulter les statistiques des tickets --- "ticket_verification" dans la console, ou le chat.
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

   Central_TicketTbl_Global.ZoneAdmin_Cmd = "ticket_config_zoneadmin" --- Commande chat/console d'ouverture du panel pour ajouter/supprimer des Zones Admin.
   Central_TicketTbl_Global.ZoneAdmin_Save = "improvedticketsystem/position/" --- Sauvegarder des positions Zone Admin.
   Central_TicketTbl_Global.ZoneAdmin_Groupe = { ----- Indiquer ici les groupes qui peuvent ajouter/supprimer des Zones Admin --- "ticket_config_zoneadmin" dans la console.
      ["superadmin"] = true,
      ["GerantSTAFF"] = true,
   }

   Central_TicketTbl_Global.Ticket_Save = string.lower(Central_TicketTbl_Global.Ticket_Save) --- Ne pas toucher !
   
else

   Central_TicketTbl_Global.Ticket_Debug = false --- Ne pas toucher !

   Central_TicketTbl_Global.Ticket_Delai = 1500 --- Temps avant la fermeture du ticket.

   Central_TicketTbl_Global.Mode_HUD = true --- Afficher les informations sur les véhicules/joueurs en mode Admin.
   Central_TicketTbl_Global.Mode_Vcmod = true --- true : Si le VCmod est présent sur votre serveur.

   Central_TicketTbl_Global.Notif_Bool = true ------ Afficher une notification cliquable lorsqu'un ticket est reçu / les tickets ne seront plus visible, ils doivent être affiché via la notification.
   Central_TicketTbl_Global.Notif_Son = "buttons/button6.wav"  --- Son de la notification -- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html

   Central_TicketTbl_Global.Mode_Bool = true -- Texte à afficher sur votre HUD si vous êtes en mode admin.
   Central_TicketTbl_Global.Mode_Text = "Mode Admin activé !" ---- Le texte à afficher en bas à droite lorsque le mode admin est actif !
   Central_TicketTbl_Global.Ticket_Text = "Il n'y a actuellement aucun administrateur en ligne, merci de nous contacter via notre TeamSpeak ---> teamspeak5.mtxserv.fr:10142 !" -- Le texte à afficher si il n'y as aucun administrateur en ligne.

   Central_TicketTbl_Global.Gen_Ticket = {
      [1] = {
         NomButton = "Lien Forum", ----- Nom du button.
         LienSite = "https://centralcityrp.mtxserv.fr/Accueil/",  --- Lien vers votre site web.
         Complement = false ----- Si complement = true, alors une fenêtre avec des indications en plus s'affichera pour le joueur.
      },
      [2] = {
         NomButton = "Notre Workshop",
         LienSite = "https://steamcommunity.com/workshop/filedetails/?id=1302632722",
         Complement = false
      },
      [3] = {
         NomButton = "No RP",
         LienSite = "",
         Complement = true
      },
      [4] = {
         NomButton = "Freekill",
         LienSite = "",
         Complement = true
      },
      [5] = {
         NomButton = "Insulte",
         LienSite = "",
         Complement = true
      },
      [6] = {
         NomButton = "Bloqué",
         LienSite = "",
         Complement = false
      },
      [7] = {
         NomButton = "Erreur Rose",
         LienSite = "",
         Complement = true
      },
      [8] = {
         NomButton = "Script Error",
         LienSite = "",
         Complement = true
      },
      [9] = {
         NomButton = "Questions",
         LienSite = "",
         Complement = true
      }
   }

end