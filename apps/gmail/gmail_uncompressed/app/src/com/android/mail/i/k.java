package com.android.mail.i;

import org.json.*;
import java.util.*;

public final class k implements c
{
    private String mKey;
    private Object mValue;
    
    public k(final String mKey, final Object mValue) {
        this.mKey = mKey;
        this.mValue = mValue;
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
    public final String toString() {
        return "BackupSharedPreference{mKey='" + this.mKey + '\'' + ", mValue=" + this.mValue + '}';
    }
}
