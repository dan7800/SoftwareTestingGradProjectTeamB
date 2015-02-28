package com.google.android.gm.provider;

import org.json.*;
import java.io.*;
import com.google.common.collect.*;
import java.util.*;

public class Gmail$Settings implements Serializable
{
    static final long serialVersionUID = 1L;
    private transient BitSet bff;
    private long mConversationAgeDays;
    private Set<String> mLabelsIncluded;
    private Set<String> mLabelsPartial;
    private long mMaxAttachmentSizeMb;
    
    public Gmail$Settings() {
        this.bff = new BitSet();
    }
    
    private boolean EC() {
        synchronized (this) {
            return this.ED().get(1);
        }
    }
    
    private BitSet ED() {
        if (this.bff == null) {
            this.bff = new BitSet();
        }
        return this.bff;
    }
    
    private boolean EE() {
        synchronized (this) {
            return this.ED().get(2);
        }
    }
    
    private boolean EF() {
        synchronized (this) {
            return this.ED().get(3);
        }
    }
    
    private boolean EG() {
        synchronized (this) {
            return this.ED().get(4);
        }
    }
    
    private static void a(final JSONObject jsonObject, final String s, final Collection<String> collection) {
        if (jsonObject.has(s)) {
            final JSONArray jsonArray = jsonObject.getJSONArray(s);
            for (int i = 0; i < jsonArray.length(); ++i) {
                collection.add(jsonArray.getString(i));
            }
        }
    }
    
    public static Gmail$Settings h(final JSONObject jsonObject) {
        final Gmail$Settings gmail$Settings = new Gmail$Settings();
        gmail$Settings.mConversationAgeDays = jsonObject.getLong("conversation_age_days");
        gmail$Settings.mMaxAttachmentSizeMb = jsonObject.getLong("max_attachment_size_mb");
        a(jsonObject, "labels_included", gmail$Settings.mLabelsIncluded = new HashSet<String>());
        a(jsonObject, "labels_partial", gmail$Settings.mLabelsPartial = new HashSet<String>());
        return gmail$Settings;
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        this.mConversationAgeDays = objectInputStream.readLong();
        this.mMaxAttachmentSizeMb = objectInputStream.readLong();
        this.mLabelsIncluded = Sets.p((String[])objectInputStream.readObject());
        this.mLabelsPartial = Sets.p((String[])objectInputStream.readObject());
    }
    
    private void writeObject(final ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeLong(this.mConversationAgeDays);
        objectOutputStream.writeLong(this.mMaxAttachmentSizeMb);
        objectOutputStream.writeObject(this.mLabelsIncluded.toArray(new String[this.mLabelsIncluded.size()]));
        objectOutputStream.writeObject(this.mLabelsPartial.toArray(new String[this.mLabelsPartial.size()]));
    }
    
    public final List<String> EA() {
        synchronized (this) {
            return ImmutableList.f((String[])this.mLabelsIncluded.toArray((E[])new String[this.mLabelsIncluded.size()]));
        }
    }
    
    public final List<String> EB() {
        synchronized (this) {
            return ImmutableList.f((String[])this.mLabelsPartial.toArray((E[])new String[this.mLabelsPartial.size()]));
        }
    }
    
    public final long Ey() {
        synchronized (this) {
            return this.mConversationAgeDays;
        }
    }
    
    public final long Ez() {
        synchronized (this) {
            return this.mMaxAttachmentSizeMb;
        }
    }
    
    public final void ai(final long mConversationAgeDays) {
        synchronized (this) {
            if (mConversationAgeDays != this.mConversationAgeDays) {
                this.ED().set(1);
                this.mConversationAgeDays = mConversationAgeDays;
            }
        }
    }
    
    public final void aj(final long mMaxAttachmentSizeMb) {
        synchronized (this) {
            if (mMaxAttachmentSizeMb != this.mMaxAttachmentSizeMb) {
                this.ED().set(2);
                this.mMaxAttachmentSizeMb = mMaxAttachmentSizeMb;
            }
        }
    }
    
    public final JSONObject lC() {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("conversation_age_days", this.mConversationAgeDays);
        jsonObject.put("max_attachment_size_mb", this.mMaxAttachmentSizeMb);
        jsonObject.put("labels_included", (Object)new JSONArray((Collection)this.mLabelsIncluded));
        jsonObject.put("labels_partial", (Object)new JSONArray((Collection)this.mLabelsPartial));
        return jsonObject;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("Settings{mConversationAgeDays=").append(this.mConversationAgeDays).append(", mMaxAttachmentSizeMb=").append(this.mMaxAttachmentSizeMb).append(", mLabelsIncluded=");
        Object list;
        if (this.mLabelsIncluded == null) {
            list = null;
        }
        else {
            list = Arrays.asList(this.mLabelsIncluded);
        }
        final StringBuilder append2 = append.append(list).append(", mLabelsPartial=");
        final Set<String> mLabelsPartial = this.mLabelsPartial;
        Object list2 = null;
        if (mLabelsPartial != null) {
            list2 = Arrays.asList(this.mLabelsPartial);
        }
        return append2.append(list2).append(", mDirtyBits=").append(this.ED()).append('}').toString();
    }
    
    public final void y(final Collection<String> collection) {
        synchronized (this) {
            final HashSet<String> g = (HashSet<String>)Sets.g((Iterable<?>)collection);
            if (!g.equals(this.mLabelsIncluded)) {
                this.ED().set(3);
                this.mLabelsIncluded = g;
            }
        }
    }
    
    public final void z(final Collection<String> collection) {
        synchronized (this) {
            final HashSet<String> g = (HashSet<String>)Sets.g((Iterable<?>)collection);
            if (!g.equals(this.mLabelsPartial)) {
                this.ED().set(4);
                this.mLabelsPartial = g;
            }
        }
    }
}
