package com.android.mail.providers;

import android.net.*;
import org.json.*;

final class v
{
    final Account Nc;
    final Uri aBb;
    
    public v(final Account nc, final Uri aBb) {
        this.Nc = nc;
        this.aBb = aBb;
    }
    
    public v(final JSONObject jsonObject) {
        this.Nc = Account.bH(jsonObject.getString("acct"));
        if (this.Nc == null) {
            throw new IllegalArgumentException("AccountCacheEntry de-serializing failed. Account object could not be created from the JSONObject: " + jsonObject);
        }
        if (this.Nc.ayw == Settings.aBM) {
            throw new IllegalArgumentException("AccountCacheEntry de-serializing failed. Settings could not be created from the JSONObject: " + jsonObject);
        }
        final String optString = jsonObject.optString("queryUri", (String)null);
        if (optString != null) {
            this.aBb = Uri.parse(optString);
            return;
        }
        this.aBb = null;
    }
    
    public final JSONObject vo() {
        try {
            return new JSONObject().put("acct", (Object)this.Nc.ud()).putOpt("queryUri", (Object)this.aBb);
        }
        catch (JSONException ex) {
            throw new IllegalArgumentException((Throwable)ex);
        }
    }
}
