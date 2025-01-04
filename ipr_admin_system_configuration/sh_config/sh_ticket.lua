---- // SCRIPT BY INJ3
---- // https://steamcommunity.com/id/Inj3/

--- > [Ticket]
Admin_System_Global.TicketLoad = true --- true = Activer le système de ticket / false = Désactiver le système de ticket.
Admin_System_Global.Ticket_TakePerm = false --- IMPORTANT = true : Les tickets peuvent être pris en charge et gérer que si vous êtes en mode administrateur. / - False = Les tickets peuvent être pris en charge hors mode administrateur.
Admin_System_Global.CharMax = 100 --- Indiquer ici le nombre de caractère limite maximum que le joueur peut inclure dans un ticket.
--- <

--- > [Ticket Texte Notification]
---- // Name_Notification = Nom de votre notification.
---- // Message_Notification = Message à envoyer au joueur.
Admin_System_Global.Notif_Gen = {
    {
        Name_Notification = "Notification [Patientez quelques minutes.]",
        Message_Notification = "Votre ticket admin va être traité dans moins de quelques minutes."
    },
    {
        Name_Notification = "Notification [Ticket traité dans moins d'une minute.]",
        Message_Notification = "Votre ticket va être traité dans moins d'une minute."
    },
}
--- <

--- > [Panel création de ticket]
---- // Créer vos propres buttons sur le panneau de création du ticket (vous pouvez générer une quantité illimitée de buttons) , "!ticket" ou votre commande pré-défini dans la console, ou le chat.
--- Admin_System_Global:AddTicketBut(12, "Custom", "https://monsite.com", false, false) -- Exemple d'un button.
--- Typo à respecter : (1 --> Ordre de positionnement, "Custom" --> Nom du button, "https://monsite.com" --> Lien vers votre site web, false --> Si true, alors une fenêtre avec des indications en plus s'affichera pour le joueur, false --> Si true alors une demande d'évaluation sera envoyé aux joueurs à la fin du ticket, aucune demande ne peut être envoyée si les buttons ouvre déjà un site web)
Admin_System_Global:AddTicketBut(1, "Url Forum", "https://monsite.com", false, false)
Admin_System_Global:AddTicketBut(2, "Workshop", "https://steamcommunity.com/workshop/filedetails/?id=1302632722", false, false)
Admin_System_Global:AddTicketBut(3, "Boutique", "", false, false)
Admin_System_Global:AddTicketBut(4, "No RP", "", true, true)
Admin_System_Global:AddTicketBut(5, "Freekill", "", true, true)
Admin_System_Global:AddTicketBut(6, "Insulte", "", true, true)
Admin_System_Global:AddTicketBut(7, "Bloquer", "", false, false)
Admin_System_Global:AddTicketBut(8, "Erreur Rose", "", true, false)
Admin_System_Global:AddTicketBut(9, "Script Erreur", "", true, false)
Admin_System_Global:AddTicketBut(10, "Questions", "", true, false)
Admin_System_Global:AddTicketBut(11, "No Pain", "", true, true) 
--- <