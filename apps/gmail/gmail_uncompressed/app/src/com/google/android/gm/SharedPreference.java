package com.google.android.gm;

import com.android.mail.i.*;
import java.io.*;
import org.json.*;
import java.util.*;

public class SharedPreference implements c, Serializable
{
    static final long serialVersionUID = 1L;
    private final String mAccount;
    private final String mKey;
    private final Object mValue;
    
    public SharedPreference(final String mKey, final String mAccount, final Object mValue) {
        this.mKey = mKey;
        this.mAccount = mAccount;
        this.mValue = mValue;
    }
    
    public static SharedPreference f(final JSONObject jsonObject) {
        Object value = jsonObject.get("value");
        if (value instanceof JSONArray) {
            final HashSet<Object> set = new HashSet<Object>();
            final JSONArray jsonArray = (JSONArray)value;
            for (int i = 0; i < jsonArray.length(); ++i) {
                set.add(jsonArray.get(i));
            }
            value = set;
        }
        String string;
        if (jsonObject.has("account")) {
            string = jsonObject.getString("account");
        }
        else {
            string = null;
        }
        return new SharedPreference(jsonObject.getString("key"), string, value);
    }
    
    public final String Dc() {
        return this.mAccount;
    }
    
    @Override
    public final String getKey() {
        return this.mKey;
    }
    
    @Override
    public final Object getValue() {
        return this.mValue;
    }
    
    @Override
    public final JSONObject lC() {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("account", (Object)this.mAccount);
        jsonObject.put("key", (Object)this.mKey);
        if (this.mValue instanceof Set) {
            final Set set = (Set)this.mValue;
            final JSONArray jsonArray = new JSONArray();
            final Iterator<Object> iterator = set.iterator();
            while (iterator.hasNext()) {
                jsonArray.put(iterator.next());
            }
            jsonObject.put("value", (Object)jsonArray);
            return jsonObject;
        }
        jsonObject.put("value", this.mValue);
        return jsonObject;
    }
    
    @Override
    public String toString() {
        return "BackupPreference{mAccount='" + this.mAccount + '\'' + ", mKey='" + this.mKey + '\'' + ", mValue=" + this.mValue + '}';
    }
}
