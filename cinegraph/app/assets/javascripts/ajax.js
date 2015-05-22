// JavaScript Document
/*
    Document   : ajax
    Created on : 16 aout 2010, 16:15:42
    Author     : Arnaud
    Description:
        Fichier javacript utilisant l'API JQuery pour la soumission d'un formulaire
*/
$(document).ready(function () {
    $("form#auth").submit(function() {
        var identifiant = $('#iden').attr('value');
        var mdp         = $('#mdp').attr('value');
        $.ajax({
            type: "POST",
            url: "action.php",
            data: "&iden="+ identifiant + "&mdp=" + mdp,
            success: result,
            dataType: "json"
            });
        return false;
    });
});

function result(data){
    
    var resultat = '<p>Résultat:&nbsp;<b>'+data.identifiant+'</b> vous êtes connecté avec le mot de passe suivant <b>'+
                    data.mdp+"</b><br />nL'exemple est finit retourné sur le site <a class='positive' href='"+data.url+"'>Dollois Connection</a></p>";
        
    $('form#auth').hide();
    $('div#success').fadeIn("slow");
    $('div#success').append(resultat);
    
}