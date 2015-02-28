package com.android.mail.ui;

import android.net.*;
import com.google.common.collect.*;
import android.os.*;
import com.android.mail.providers.*;
import java.util.*;

public class ConversationViewState implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<ConversationViewState> CREATOR;
    private final Map<Uri, ConversationViewState$MessageViewState> aIG;
    private byte[] aIH;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new bi();
    }
    
    public ConversationViewState() {
        this.aIG = (Map<Uri, ConversationViewState$MessageViewState>)Maps.aan();
    }
    
    private ConversationViewState(final Parcel parcel, final ClassLoader classLoader) {
        this.aIG = (Map<Uri, ConversationViewState$MessageViewState>)Maps.aan();
        final Bundle bundle = parcel.readBundle(classLoader);
        for (final String s : bundle.keySet()) {
            this.aIG.put(Uri.parse(s), (ConversationViewState$MessageViewState)bundle.getParcelable(s));
        }
        this.aIH = parcel.createByteArray();
    }
    
    public ConversationViewState(final ConversationViewState conversationViewState) {
        this.aIG = (Map<Uri, ConversationViewState$MessageViewState>)Maps.aan();
        this.aIH = conversationViewState.aIH;
    }
    
    public final void a(final Message message, final boolean aza) {
        ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        if (conversationViewState$MessageViewState == null) {
            conversationViewState$MessageViewState = new ConversationViewState$MessageViewState();
        }
        conversationViewState$MessageViewState.aza = aza;
        this.aIG.put(message.uri, conversationViewState$MessageViewState);
    }
    
    public final void b(final Message message, final int n) {
        ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        if (conversationViewState$MessageViewState == null) {
            conversationViewState$MessageViewState = new ConversationViewState$MessageViewState();
        }
        conversationViewState$MessageViewState.aIL = n;
        this.aIG.put(message.uri, conversationViewState$MessageViewState);
    }
    
    public final void b(final Message message, final boolean aim) {
        ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        if (conversationViewState$MessageViewState == null) {
            conversationViewState$MessageViewState = new ConversationViewState$MessageViewState();
        }
        conversationViewState$MessageViewState.aIM = aim;
        this.aIG.put(message.uri, conversationViewState$MessageViewState);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final boolean g(final Message message) {
        final ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        return conversationViewState$MessageViewState != null && !conversationViewState$MessageViewState.aza;
    }
    
    public final boolean h(final Message message) {
        final ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        return conversationViewState$MessageViewState != null && conversationViewState$MessageViewState.aIM;
    }
    
    public final Integer i(final Message message) {
        final ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(message.uri);
        if (conversationViewState$MessageViewState == null) {
            return null;
        }
        return conversationViewState$MessageViewState.aIL;
    }
    
    public final boolean j(final Message message) {
        return this.aIG.containsKey(message.uri);
    }
    
    public final void r(final Conversation conversation) {
        this.aIH = conversation.azk.uN();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final Bundle bundle = new Bundle();
        for (final Uri uri : this.aIG.keySet()) {
            bundle.putParcelable(uri.toString(), (Parcelable)this.aIG.get(uri));
        }
        parcel.writeBundle(bundle);
        parcel.writeByteArray(this.aIH);
    }
    
    public final byte[] zc() {
        return this.aIH;
    }
    
    public final Set<Uri> zd() {
        final HashSet<Uri> set = new HashSet<Uri>();
        for (final Uri uri : this.aIG.keySet()) {
            final ConversationViewState$MessageViewState conversationViewState$MessageViewState = this.aIG.get(uri);
            if (conversationViewState$MessageViewState != null && !conversationViewState$MessageViewState.aza) {
                set.add(uri);
            }
        }
        return set;
    }
}
