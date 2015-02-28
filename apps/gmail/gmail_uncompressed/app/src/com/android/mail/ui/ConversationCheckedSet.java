package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.mail.browse.*;

public class ConversationCheckedSet implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<ConversationCheckedSet> CREATOR;
    private final k<String, Long> aGA;
    final Set<aK> aGB;
    private final HashMap<Long, Conversation> aGz;
    private final Object fK;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new at();
    }
    
    public ConversationCheckedSet() {
        this.fK = new Object();
        this.aGz = new HashMap<Long, Conversation>();
        this.aGA = (k<String, Long>)HashBiMap.Zg();
        this.aGB = new HashSet<aK>();
    }
    
    private ConversationCheckedSet(final Parcel parcel, final ClassLoader classLoader) {
        this.fK = new Object();
        this.aGz = new HashMap<Long, Conversation>();
        this.aGA = (k<String, Long>)HashBiMap.Zg();
        this.aGB = new HashSet<aK>();
        final Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        for (int length = parcelableArray.length, i = 0; i < length; ++i) {
            final Conversation conversation = (Conversation)parcelableArray[i];
            this.a(conversation.id, conversation);
        }
    }
    
    private void a(final Long n, final Conversation conversation) {
        synchronized (this.fK) {
            final boolean empty = this.aGz.isEmpty();
            this.aGz.put(n, conversation);
            this.aGA.put(conversation.uri.toString(), n);
            final ArrayList<aK> f = Lists.f((Iterable<? extends aK>)this.aGB);
            this.g(f);
            if (empty) {
                this.f(f);
            }
        }
    }
    
    private boolean a(final Long n) {
        synchronized (this.fK) {
            return this.aGz.containsKey(n);
        }
    }
    
    private void f(final ArrayList<aK> list) {
        synchronized (this.fK) {
            final Iterator<aK> iterator = list.iterator();
            while (iterator.hasNext()) {
                iterator.next().a(this);
            }
        }
    }
    // monitorexit(o)
    
    private void g(final ArrayList<aK> list) {
        synchronized (this.fK) {
            final Iterator<aK> iterator = list.iterator();
            while (iterator.hasNext()) {
                iterator.next().b(this);
            }
        }
    }
    // monitorexit(o)
    
    private void h(final ArrayList<aK> list) {
        synchronized (this.fK) {
            final Iterator<aK> iterator = list.iterator();
            while (iterator.hasNext()) {
                iterator.next().pC();
            }
        }
    }
    // monitorexit(o)
    
    private Set<Long> keySet() {
        synchronized (this.fK) {
            return this.aGz.keySet();
        }
    }
    
    private void s(final Collection<Long> collection) {
        boolean b;
        while (true) {
            while (true) {
                synchronized (this.fK) {
                    if (!this.aGz.isEmpty()) {
                        b = true;
                        final k<Long, String> yq = this.aGA.YQ();
                        for (final Long n : collection) {
                            this.aGz.remove(n);
                            yq.remove(n);
                        }
                        break;
                    }
                }
                b = false;
                continue;
            }
        }
        final ArrayList<aK> f = Lists.f((Iterable<? extends aK>)this.aGB);
        this.g(f);
        if (this.aGz.isEmpty() && b) {
            this.h(f);
        }
    }
    // monitorexit(o)
    
    public final void a(final aK ak) {
        synchronized (this.fK) {
            this.aGB.add(ak);
        }
    }
    
    public final void b(final aK ak) {
        synchronized (this.fK) {
            this.aGB.remove(ak);
        }
    }
    
    public final void c(final ConversationCheckedSet set) {
        if (set != null) {
            final boolean empty = this.aGz.isEmpty();
            this.aGz.putAll(set.aGz);
            final ArrayList<aK> f = Lists.f((Iterable<? extends aK>)this.aGB);
            this.g(f);
            if (empty) {
                this.f(f);
            }
        }
    }
    
    public final void clear() {
        synchronized (this.fK) {
            boolean b;
            if (!this.aGz.isEmpty()) {
                b = true;
            }
            else {
                b = false;
            }
            this.aGz.clear();
            this.aGA.clear();
            if (this.aGz.isEmpty() && b) {
                final ArrayList<aK> f = Lists.f((Iterable<? extends aK>)this.aGB);
                this.g(f);
                this.h(f);
            }
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final boolean isEmpty() {
        synchronized (this.fK) {
            return this.aGz.isEmpty();
        }
    }
    
    public final boolean m(final Conversation conversation) {
        synchronized (this.fK) {
            return this.a(Long.valueOf(conversation.id));
        }
    }
    
    public final void n(final Conversation conversation) {
        final long id = conversation.id;
        if (this.a(Long.valueOf(id))) {
            final Long value = id;
            synchronized (this.fK) {
                this.s(Collections.singleton(value));
                return;
            }
        }
        this.a(id, conversation);
    }
    
    public final void o(final u u) {
        synchronized (this.fK) {
            if (this.isEmpty()) {
                return;
            }
            if (u == null) {
                this.clear();
                return;
            }
        }
        final Set<String> oz = u.oZ();
        final HashSet<Long> set = new HashSet<Long>();
        final Iterator<String> iterator = oz.iterator();
        while (iterator.hasNext()) {
            final Long n = this.aGA.get(iterator.next());
            if (n != null) {
                set.add(n);
            }
        }
        final HashSet<Long> set2 = new HashSet<Long>(this.keySet());
        set2.removeAll(set);
        final Set<Long> ox = u.oX();
        if (!set2.isEmpty() && ox != null) {
            set2.removeAll(ox);
        }
        set.addAll((Collection<?>)set2);
        this.s(set);
    }
    // monitorexit(o)
    
    public final int size() {
        synchronized (this.fK) {
            return this.aGz.size();
        }
    }
    
    @Override
    public String toString() {
        synchronized (this.fK) {
            return String.format("%s:%s", super.toString(), this.aGz);
        }
    }
    
    public final Collection<Conversation> values() {
        synchronized (this.fK) {
            return this.aGz.values();
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelableArray((Parcelable[])this.values().toArray((Parcelable[])new Conversation[this.size()]), n);
    }
}
