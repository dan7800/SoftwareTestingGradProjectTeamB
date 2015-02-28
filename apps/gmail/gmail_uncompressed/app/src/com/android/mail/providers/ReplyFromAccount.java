package com.android.mail.providers;

import java.io.*;
import android.net.*;
import org.json.*;
import com.android.mail.utils.*;
import android.text.*;
import android.text.util.*;
import java.util.*;

public class ReplyFromAccount implements Serializable
{
    private static final String mW;
    private static final long serialVersionUID = 1L;
    public Account account;
    public String address;
    Uri baseAccountUri;
    public boolean isCustomFrom;
    public boolean isDefault;
    public String name;
    public String replyTo;
    
    static {
        mW = D.AU();
    }
    
    public ReplyFromAccount(final Account account, final Uri baseAccountUri, final String address, final String name, final String replyTo, final boolean isDefault, final boolean isCustomFrom) {
        this.account = account;
        this.baseAccountUri = baseAccountUri;
        this.address = address;
        this.name = name;
        this.replyTo = replyTo;
        this.isDefault = isDefault;
        this.isCustomFrom = isCustomFrom;
    }
    
    public static ReplyFromAccount a(final Account account, final String s) {
        try {
            return a(account, new JSONObject(s));
        }
        catch (JSONException ex) {
            E.f(ReplyFromAccount.mW, (Throwable)ex, "Could not deserialize replyfromaccount", new Object[0]);
            return null;
        }
    }
    
    public static ReplyFromAccount a(final Account account, final JSONObject jsonObject) {
        try {
            return new ReplyFromAccount(account, ag.bO(jsonObject.getString("baseAccountUri")), jsonObject.getString("address"), jsonObject.optString("name", (String)null), jsonObject.getString("replyTo"), jsonObject.getBoolean("isDefault"), jsonObject.getBoolean("isCustom"));
        }
        catch (JSONException ex) {
            E.f(ReplyFromAccount.mW, (Throwable)ex, "Could not deserialize replyfromaccount", new Object[0]);
            return null;
        }
    }
    
    public static boolean a(final Account account, final String s, final List<ReplyFromAccount> list) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return false;
        }
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
        if (tokenize != null && tokenize.length > 0) {
            final String ck = ag.cK(tokenize[0].getAddress());
            if (TextUtils.equals((CharSequence)ag.cK(account.lw()), (CharSequence)ck)) {
                return true;
            }
            for (final ReplyFromAccount replyFromAccount : list) {
                if (TextUtils.equals((CharSequence)ag.cK(replyFromAccount.address), (CharSequence)ck) && replyFromAccount.isCustomFrom) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public final JSONObject vG() {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("baseAccountUri", (Object)this.baseAccountUri);
            jsonObject.put("address", (Object)this.address);
            jsonObject.put("name", (Object)this.name);
            jsonObject.put("replyTo", (Object)this.replyTo);
            jsonObject.put("isDefault", this.isDefault);
            jsonObject.put("isCustom", this.isCustomFrom);
            return jsonObject;
        }
        catch (JSONException ex) {
            E.f(ReplyFromAccount.mW, (Throwable)ex, "Could not serialize account with address " + this.address, new Object[0]);
            return jsonObject;
        }
    }
}
