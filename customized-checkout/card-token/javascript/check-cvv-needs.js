function cardsHandler(){
     var card = document.querySelector('select[data-checkout="cardId"]');

     // check if the security code (ex: Tarshop) is required
     if (card[card.options.selectedIndex].getAttribute('security_code_length')==0){
          document.querySelector("#cvv").style.display = "none";
     }else if(document.querySelector("#cvv").style.display!="block") {
          document.querySelector("#cvv").style.display = "block";
     }
}

addEvent(document.querySelector('select[data-checkout="cardId"]'),'change',cardsHandler);