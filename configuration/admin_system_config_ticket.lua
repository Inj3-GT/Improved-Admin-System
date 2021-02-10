----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
----------- // SCRIPT BY INJ3
--- // https://steamcommunity.com/id/Inj3/
--- // Improved Admin System
--- // true = activer, false = désactiver

--- //

Admin_System_Global.TicketLoad = true --- true = Activer le système de ticket / false = Désactiver le système de ticket.

--- //

Admin_System_Global.Ticket_TakePerm = true --- true : Les tickets peuvent être pris en charge et gérer que si vous êtes en mode administrateur. / - False = Les tickets peuvent être pris en charge hors mode administrateur.

--- //

Admin_System_Global.CharMax = 100 ----- // Indiquer ici le nombre de caractère limite maximum que le joueur peut inclure dans un ticket.

--- //

Admin_System_Global.Notif_Gen = { ----- // Créer vos propres notifications à inclure au ticket ici !

     [1] = {
          Name_Notification = "Notification [Patientez quelques minutes.]", --- // Nom de votre notification.
          Message_Notification = "Votre ticket admin va être traité dans moins de quelques minutes."  --- // Message à envoyer au joueur !
     },
     [2] = {
          Name_Notification = "Notification [Ticket traité dans moins d'une minute.]",  --- // Nom de votre notification.
          Message_Notification = "Votre ticket va être traité dans moins d'une minute."   --- // Message à envoyer au joueur !
     }
}

if CLIENT then

     --- //

     Admin_System_Global.Notif_Bool = true --- // false = Les tickets seront visibles, et affichés directement sans la notification. / true = Afficher une notification cliquable lorsqu'un ticket est reçu, les tickets ne seront plus visibles, ils doivent être affichés seulement via la notification

     --- //

     Admin_System_Global.Notif_Son = "buttons/button6.wav"  --- // Son lorsqu'un ticket est reçu -- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html

     --- //

     Admin_System_Global.Ticket_Delai = 1500 --- // Temps avant la fermeture d'un ticket en seconde - // Inclure 0 si vous ne voulez pas de délai de fermeture automatique.

     Admin_System_Global.Ticket_AntiPCharge = true --- // true = Les administrateurs ne peuvent pas reprendre un ticket déjà prise en charge. / false = Les administrateurs peuvent reprendre un ticket déjà prise en charge.

     --- //

     Admin_System_Global.Ticket_CachePCharge = false  --- // true : Cacher le nom des administrateurs qui ont pris en charge le ticket aux autres administrateurs.

     Admin_System_Global.Ticket_CachePCharge_Text = "Un administrateur"  --- // Le texte qui va être remplacé, si vous avez caché le nom lors de la prise en charge.

     --- //

     Admin_System_Global.Ticket_PosRdm_H  = "haut" --- // La positions des tickets vertical, "haut", "milieu".

     Admin_System_Global.Ticket_PosRdm_W  = "gauche" --- // La positions des tickets horizontal, "gauche", "droite".

     --- //

     Admin_System_Global.Ticket_TicketVisible = 3 --- // Indiquer ici le maximum de ticket qui seront visibles sur votre écran.

     Admin_System_Global.Ticket_NoText = "Il n'y a actuellement aucun administrateur en ligne, merci de nous contacter via notre TeamSpeak ---> teamspeak5.mtxserv.fr:10142 !" -- // Le texte a affiché s'il n'y a aucun administrateur en ligne.

     --- //

else

     --- //

     Admin_System_Global.Ticket_Text = "Le ticket a bien été envoyé, temps de réponse estimé max : 10 minutes !" --- // Le texte a affiché lorsqu'un joueur a envoyé un ticket aux administrateurs.

     --- //

     Admin_System_Global.Take_Ticket = 15 --- // Temps en secondes entre les différentes prises en charge des tickets par l'administrateur via le button "prendre ticket" / Anti-SPAM.

     Admin_System_Global.Take_TicketText = "Vous ne pouvez pas tout de suite prendre le ticket en charge, veuillez patienter" --- // Le texte à afficher lorsqu'un administrateur essaye de prendre en charge un ticket.

     --- //

     Admin_System_Global.Ticket_EnvJoueur = 5 --- // Temps en secondes avant qu'un joueur puisse à nouveau envoyer un ticket / Anti-SPAM.

     Admin_System_Global.Ticket_EnvJoueur_Text = "Veuillez patienter avant de renvoyer un nouveau ticket !" --- // Message lorsqu'un joueur essaye d'envoyer trop de ticket aux administrateurs / Anti-SPAM.

     --- //

     Admin_System_Global.Ticket_CachePCharge_Jr = false --- // true = Cacher la notification de prise en charge envoyée aux joueurs.

     Admin_System_Global.Ticket_Bool = true --- // true = Les tickets seront visibles tout le temps hors mode Admin / false = Les tickets sont visibles que si vous avez activé le mode Admin.

     Admin_System_Global.Ticket_Bool_1 = true --- // true = Vous pouvez voir vos propres tickets crée en administrateur / false = Seuls les autres administrateurs connectés peuvent voir vos propres tickets créés en administrateur.

     --- //

end

Admin_System_Global.Gen_Ticket = { ----- // Créer vos propres buttons sur le panneau de création du ticket ,--- "!ticket" ou votre commande pré-défini dans la console, ou le chat. (vous pouvez générer autant de button que vous le souhaitez)
     [1] = { ---- // Nombre du button, du plus petit au plus grand (ordre de positionnement).
          NameButton = "Url Forum", --- // Exemple : Nom du button.
          WebLink = "https://monsite.com",  --- // Exemple : Lien vers votre site web (remplacer par votre site web).
          Complementary = false --- // Si complement = true, alors une fenêtre avec des indications en plus s'affichera pour le joueur.
     },

     [2] = {
          NameButton = "Workshop",
          WebLink = "https://steamcommunity.com/workshop/filedetails/?id=1302632722", --- (Remplacer par votre collection workshop)
          Complementary = false
     },
	 
	 [3] = {
          NameButton = "Boutique",
          WebLink = "https://monsite.com", --- (Remplacer par votre boutique)
          Complementary = false
     },

     [4] = {
          NameButton = "No RP",
          WebLink = "",
          Complementary = true
     },

     [5] = {
          NameButton = "Freekill",
          WebLink = "",
          Complementary = true
     },

     [6] = {
          NameButton = "Insulte",
          WebLink = "",
          Complementary = true
     },

     [7] = {
          NameButton = "Bloquer",
          WebLink = "",
          Complementary = false
     },

     [8] = {
          NameButton = "Erreur Rose",
          WebLink = "",
          Complementary = true
     },

     [9] = {
          NameButton = "Script Erreur",
          WebLink = "",
          Complementary = true
     },

     [10] = {
          NameButton = "Questions",
          WebLink = "",
          Complementary = true
     },
	 
	 [11] = {
          NameButton = "No Pain",
          WebLink = "",
          Complementary = true
     },
}