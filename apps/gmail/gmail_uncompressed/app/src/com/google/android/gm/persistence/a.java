package com.google.android.gm.persistence;

import com.google.android.gm.provider.*;
import com.google.android.gm.*;
import com.android.mail.i.*;
import org.json.*;
import com.google.common.collect.*;
import java.util.*;

public final class a
{
    private final Map<String, Gmail$Settings> baM;
    private final List<SharedPreference> baN;
    private final List<c> baO;
    private final Map<String, List<c>> baP;
    private final Map<String, Map<String, List<c>>> baQ;
    
    public a(final Map<String, Gmail$Settings> baM, final List<SharedPreference> baN, final List<c> baO, final Map<String, List<c>> baP, final Map<String, Map<String, List<c>>> baQ) {
        this.baM = baM;
        this.baN = baN;
        this.baO = baO;
        this.baP = baP;
        this.baQ = baQ;
    }
    
    private static JSONArray C(final List<? extends c> list) {
        final JSONArray jsonArray = new JSONArray();
        final Iterator<? extends c> iterator = list.iterator();
        while (iterator.hasNext()) {
            jsonArray.put((Object)((c)iterator.next()).lC());
        }
        return jsonArray;
    }
    
    private static List<c> a(final JSONArray jsonArray) {
        final ArrayList<c> list = new ArrayList<c>();
        if (jsonArray != null) {
            for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                final JSONObject jsonObject = jsonArray.getJSONObject(i);
                Object value = jsonObject.get("value");
                if (value instanceof JSONArray) {
                    final HashSet<Object> set = new HashSet<Object>();
                    final JSONArray jsonArray2 = (JSONArray)value;
                    for (int length2 = jsonArray2.length(), j = 0; j < length2; ++j) {
                        set.add(jsonArray2.get(j));
                    }
                    value = set;
                }
                list.add(new k(jsonObject.getString("key"), value));
            }
        }
        return list;
    }
    
    public static a g(final JSONObject jsonObject) {
        final HashMap<String, Gmail$Settings> aan = Maps.aan();
        final JSONObject jsonObject2 = jsonObject.getJSONObject("sync_settings");
        final Iterator keys = jsonObject2.keys();
        while (keys.hasNext()) {
            final String s = keys.next();
            aan.put(s, Gmail$Settings.h(jsonObject2.getJSONObject(s)));
        }
        final JSONArray jsonArray = jsonObject.getJSONArray("shared_preferences");
        final ArrayList<SharedPreference> list = new ArrayList<SharedPreference>();
        if (jsonArray != null) {
            for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                list.add(SharedPreference.f(jsonArray.getJSONObject(i)));
            }
        }
        JSONArray jsonArray2;
        if (jsonObject.has("mail_prefs")) {
            jsonArray2 = jsonObject.getJSONArray("mail_prefs");
        }
        else {
            jsonArray2 = null;
        }
        final List<c> a = a(jsonArray2);
        Map<String, List<c>> map;
        if (jsonObject.has("account_prefs")) {
            final JSONArray jsonArray3 = jsonObject.getJSONArray("account_prefs");
            map = new HashMap<String, List<c>>(jsonArray3.length());
            for (int j = 0; j < jsonArray3.length(); ++j) {
                final JSONObject jsonObject3 = jsonArray3.getJSONObject(j);
                map.put(jsonObject3.getString("account_name"), a(jsonObject3.getJSONArray("preferences")));
            }
        }
        else {
            map = null;
        }
        final boolean has = jsonObject.has("folder_prefs");
        Object o = null;
        if (has) {
            final JSONArray jsonArray4 = jsonObject.getJSONArray("folder_prefs");
            final HashMap hashMap = new HashMap<String, HashMap<String, List<c>>>(jsonArray4.length());
            for (int k = 0; k < jsonArray4.length(); ++k) {
                final JSONObject jsonObject4 = jsonArray4.getJSONObject(k);
                final String string = jsonObject4.getString("account_name");
                final JSONArray jsonArray5 = jsonObject4.getJSONArray("folders");
                final HashMap hashMap2 = new HashMap<String, List<c>>(jsonArray5.length());
                for (int l = 0; l < jsonArray5.length(); ++l) {
                    final JSONObject jsonObject5 = jsonArray5.getJSONObject(l);
                    hashMap2.put(jsonObject5.getString("folder_backup_key"), a(jsonObject5.getJSONArray("preferences")));
                }
                hashMap.put(string, (HashMap<String, List<c>>)hashMap2);
            }
            o = hashMap;
        }
        return new a(aan, list, a, map, (Map<String, Map<String, List<c>>>)o);
    }
    
    public final List<c> DA() {
        return this.baO;
    }
    
    public final Map<String, List<c>> DB() {
        return this.baP;
    }
    
    public final Map<String, Map<String, List<c>>> DC() {
        return this.baQ;
    }
    
    public final Map<String, Gmail$Settings> Dy() {
        return this.baM;
    }
    
    public final List<SharedPreference> Dz() {
        return this.baN;
    }
    
    public final JSONObject lC() {
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        jsonObject.put("sync_settings", (Object)jsonObject2);
        for (final Map.Entry<String, Gmail$Settings> entry : this.baM.entrySet()) {
            jsonObject2.put((String)entry.getKey(), (Object)entry.getValue().lC());
        }
        jsonObject.put("shared_preferences", (Object)C(this.baN));
        jsonObject.put("mail_prefs", (Object)C(this.baO));
        final JSONArray jsonArray = new JSONArray();
        for (final Map.Entry<String, List<c>> entry2 : this.baP.entrySet()) {
            final JSONObject jsonObject3 = new JSONObject();
            jsonObject3.put("account_name", (Object)entry2.getKey());
            jsonObject3.put("preferences", (Object)C(entry2.getValue()));
            jsonArray.put((Object)jsonObject3);
        }
        jsonObject.put("account_prefs", (Object)jsonArray);
        final JSONArray jsonArray2 = new JSONArray();
        for (final Map.Entry<String, Map<String, List<c>>> entry3 : this.baQ.entrySet()) {
            final JSONObject jsonObject4 = new JSONObject();
            jsonObject4.put("account_name", (Object)entry3.getKey());
            final JSONArray jsonArray3 = new JSONArray();
            jsonObject4.put("folders", (Object)jsonArray3);
            for (final Map.Entry<String, List<c>> entry4 : entry3.getValue().entrySet()) {
                final JSONObject jsonObject5 = new JSONObject();
                jsonObject5.put("folder_backup_key", (Object)entry4.getKey());
                jsonObject5.put("preferences", (Object)C(entry4.getValue()));
                jsonArray3.put((Object)jsonObject5);
            }
            jsonArray2.put((Object)jsonObject4);
        }
        jsonObject.put("folder_prefs", (Object)jsonArray2);
        return jsonObject;
    }
}
