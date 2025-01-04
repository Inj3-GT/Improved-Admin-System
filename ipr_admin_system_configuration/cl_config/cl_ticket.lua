---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [HUD Notification Ticket]
Admin_System_Global.Notif_Bool = true --- false : Les tickets seront visibles, et affichés directement sans la notification. / true : Afficher une notification cliquable lorsqu'un ticket est reçu, les tickets ne seront plus visibles, ils doivent être affichés seulement via la notification
--- <

--- > [Ticket Prise en Charge]
Admin_System_Global.Ticket_AntiPCharge = false --- true : Les administrateurs ne peuvent pas reprendre un ticket déjà prise en charge. / false : Les administrateurs peuvent reprendre un ticket déjà prise en charge.
Admin_System_Global.Ticket_CachePCharge = false  --- true : Cacher le nom des administrateurs qui ont pris en charge le ticket aux autres administrateurs.
--- <

--- > [Ticket Delai]
Admin_System_Global.Ticket_Delai = 1500 --- Temps avant la fermeture d'un ticket en seconde - // Inclure 0 si vous ne voulez pas de délai de fermeture automatique.
--- <

--- > [Ticket Affichage]
Admin_System_Global.Ticket_TicketVisible = 3 --- Indiquer ici le maximum de ticket qui seront visibles sur votre écran.
--- <

--- > [Ticket Texte]
Admin_System_Global.Ticket_CachePCharge_Text = "Un administrateur"  --- Le texte qui va être remplacé, si vous avez caché le nom lors de la prise en charge.
Admin_System_Global.Notif_Son = "ui/hint.wav"  --- Son lorsqu'un ticket est reçu -- https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html
Admin_System_Global.Ticket_NoText = "Le support est actuellement hors ligne, veuillez nous contacter via notre Teamspeak ---> teamspeak5.mtxserv.fr:10142" --- Le texte a affiché s'il n'y a aucun administrateur en ligne.
--- <

--- > [Ticket Position]
Admin_System_Global.Ticket_PosRdm_H  = "haut" --- La positions des tickets (vertical), "haut", "milieu".
Admin_System_Global.Ticket_PosRdm_W  = "droite" --- La positions des tickets (horizontal), "gauche", "droite".
--- <

--- > [Son Notification]
Admin_System_Global.NotifPopup_Sound = "buttons/button24.wav" --- Son de la notification Popup (https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/index8f77.html)
--- <