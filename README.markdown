# Google Play In-app Billing Validation

This (simple) gem validates In-app Billing transactions. Pass your base64 
encoded public key, the transaction data (json) and the base64 encoded signature 
and it will return a boolean value telling you whether or not your transaction is valid.

##Installation

    $ gem install play_billing_validator
     
##Requirements

A public key for your Android app's in app billing. Get it from the Google Play [Developer Console](https://play.google.com/apps/publish).

##Usage

Implement the In-app Billing in your Android app:

    String data = data.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
    String signature = data.getStringExtra(RESPONSE_INAPP_SIGNATURE);

Then send the data and signature to your server and validate like this:
 
    data = params[:data]
    signature = params[:signature]
    if (PlayBilling::Transaction.valid(public_key, data, signature))
        # success. save the transaction, give away cookies and so on.
    else
        # booo. bad transaction data. reprimand the crook or give them a cookie anyway.
    end

I recommend keeping a record of valid transactions in your database to prevent malicious users
from replaying them for free loot.

## Details

Need more detail on how all of this works (especially the Android implementation)? Read Google's [In-app Billing Docs](http://developer.android.com/google/play/billing/index.html).

## Thanks

Thanks to [Walt Schlender](http://stackoverflow.com/users/749709/walta) for his answer to 
this [StackOverflow](http://stackoverflow.com/questions/5971031/how-do-i-verify-android-in-app-billing-with-a-server-with-ruby) question. This gem is based on that post.

##Copyrights and License

* Copyright (c) 2013 Amro Mousa. This gem is licensed under the MIT license. See LICENSE.txt for details.