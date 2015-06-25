doSubmit = false;
addEvent(document.querySelector('#pay'),'submit',doPay);
function doPay(event){
    event.preventDefault();
    if(!doSubmit){
        var $form = document.querySelector('#pay');
        
        Mercadopago.createToken($form, sdkResponseHandler); // The function "sdkResponseHandler" will be defined later

        return false;
    }
};