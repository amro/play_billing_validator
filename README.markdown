# Google Play In-app Billing Validation

This (simple) gem validates In-app Billing v3 transactions. Pass your base64 
encoded public key, the transaction data (json) and the base64 encoded signature 
and it will return a boolean value telling you whether or not your transaction is valid.

##Installation

    $ gem install play_billing_validator
     
##Requirements

A public key for your Android app's in app billing. Get it from the Google Play Publisher page.

##Usage

Implement the In-app Billing v3 in your Android app.

    String data = data.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
    String signature = data.getStringExtra(RESPONSE_INAPP_SIGNATURE);

 Send the data and signature to your server and validate like this:
 
    data = params[:data]
    signature = params[:signature]
    if (GooglePlay::Transaction.valid(public_key, data, signature))
        # success. save the transaction, give away cookies and so on.
    else
        # booo. bad transaction data. reprimand the crook or give them a cookie anyway.
    end

##Copyrights

* Copyright (c) 2013 Amro Mousa. See LICENSE.txt for details.
