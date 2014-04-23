/* ===================================================
 * Projet Gladys
 * http://intelligenceonline.synergize.co
 * ===================================================
 * 
 * Copyright 2014, Pierre-Gilles Leymarie
 * Logiciel sous License Creative Commons 3.0 France
 * http://creativecommons.org/licenses/by-nc-sa/3.0/fr/
 * 
 * Pas d’Utilisation Commerciale
 * Partage dans les mêmes conditions et 
 * avec mentions et lien vers le projet initial.
 *
 * Contact : projectgladys@gmail.com
 * 
 * ========================================================== */

var MailListener = require("mail-listener2");

exports.connect = function(user, pass)
{
    var mailListener = new MailListener({
    username: user,
    password: pass,
    host: "imap.gmail.com",
    port: 993, // imap port
    tls: true,
    tlsOptions: { rejectUnauthorized: false },
    mailbox: "INBOX", // mailbox to monitor
    searchFilter: "UNSEEN", // the search filter being used after an IDLE notification has been retrieved
    markSeen: true, // all fetched email willbe marked as seen and not fetched next time
    fetchUnreadOnStart: true, // use it only if you want to get all unread email on lib start. Default is `false`,
    mailParserOptions: {streamAttachments: true} // options to be passed to mailParser lib.
  });

  mailListener.start(); // start listening

  // stop listening
  //mailListener.stop();

  mailListener.on("server:connected", function(){
    console.log("imapConnected");
  });

  mailListener.on("server:disconnected", function(){
    console.log("imapDisconnected");
  });

  mailListener.on("error", function(err){
    console.log(err);
  });

  mailListener.on("mail", function(mail){
    // do something with mail object including attachments
    //console.log("emailParsed", mail);
     console.log("Text body:", mail.text);
     console.log("From:", mail.from); 
     console.log("Subject:", mail.subject);
     console.log("Date : ", mail.date);
    // mail processing code goes here
  });

}

exports.search_for_date = function (text)
  {
      var reg=new RegExp("[0-9]{2}[/]{1}[0-9]{2}[/]{1}[0-9]{4}","g");
      var test =  text.match(reg);
      if(test)
      {
          display(test);
      }
  }

  exports.search_for_rdv = function(text)
  {
      var reg2 = new RegExp("(?:lundi|mardi|mercredi|jeudi|vendredi|samedi|dimanche|demain|apr[eè]s[- ]demain|hier|avant[- ]hier).(?:soir|apr[eè]s[- ]midi|matin|aprem)", "g");
      var test =  text.match(reg2);
      if(test)
      {
          display(test);
      }
  }

  exports.display = function (result)
  {
      for(var i = 0;i < result.length;i++)
      {
          console.log(result[i]); 
      }
  }