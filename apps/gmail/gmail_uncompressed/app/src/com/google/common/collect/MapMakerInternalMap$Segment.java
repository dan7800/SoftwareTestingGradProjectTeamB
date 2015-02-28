package com.google.common.collect;

import java.util.concurrent.locks.*;
import java.util.*;
import java.util.concurrent.atomic.*;
import java.util.concurrent.*;
import java.lang.ref.*;

class MapMakerInternalMap$Segment<K, V> extends ReentrantLock
{
    volatile int count;
    final Queue<af<K, V>> evictionQueue;
    final Queue<af<K, V>> expirationQueue;
    final ReferenceQueue<K> keyReferenceQueue;
    final MapMakerInternalMap<K, V> map;
    final int maxSegmentSize;
    int modCount;
    final AtomicInteger readCount;
    final Queue<af<K, V>> recencyQueue;
    volatile AtomicReferenceArray<af<K, V>> table;
    int threshold;
    final ReferenceQueue<V> valueReferenceQueue;
    
    MapMakerInternalMap$Segment(final MapMakerInternalMap<K, V> map, final int n, final int maxSegmentSize) {
        this.readCount = new AtomicInteger();
        this.map = map;
        this.maxSegmentSize = maxSegmentSize;
        final AtomicReferenceArray<af<K, V>> fp = fp(n);
        this.threshold = 3 * fp.length() / 4;
        if (this.threshold == this.maxSegmentSize) {
            ++this.threshold;
        }
        this.table = fp;
        ReferenceQueue<K> keyReferenceQueue;
        if (map.ZL()) {
            keyReferenceQueue = new ReferenceQueue<K>();
        }
        else {
            keyReferenceQueue = null;
        }
        this.keyReferenceQueue = keyReferenceQueue;
        final boolean zm = map.ZM();
        ReferenceQueue<V> valueReferenceQueue = null;
        if (zm) {
            valueReferenceQueue = new ReferenceQueue<V>();
        }
        this.valueReferenceQueue = valueReferenceQueue;
        Queue<af<K, V>> zp;
        if (map.ZI() || map.ZK()) {
            zp = new ConcurrentLinkedQueue<af<K, V>>();
        }
        else {
            zp = MapMakerInternalMap.ZP();
        }
        this.recencyQueue = zp;
        Queue<af<K, V>> zp2;
        if (map.ZI()) {
            zp2 = (Queue<af<K, V>>)new W();
        }
        else {
            zp2 = MapMakerInternalMap.ZP();
        }
        this.evictionQueue = zp2;
        Queue<af<K, V>> zp3;
        if (map.ZJ()) {
            zp3 = (Queue<af<K, V>>)new Z();
        }
        else {
            zp3 = MapMakerInternalMap.ZP();
        }
        this.expirationQueue = zp3;
    }
    
    private void a(final af<K, V> af, final MapMaker$RemovalCause mapMaker$RemovalCause) {
        final K key = af.getKey();
        af.ZV();
        this.a(key, af.ZT().get(), mapMaker$RemovalCause);
    }
    
    private void a(final af<K, V> af, final V v) {
        af.b(this.map.valueStrength.a(this, af, v));
        this.aag();
        this.evictionQueue.add(af);
        if (this.map.ZJ()) {
            long n;
            if (this.map.ZK()) {
                n = this.map.expireAfterAccessNanos;
            }
            else {
                n = this.map.expireAfterWriteNanos;
            }
            this.b(af, n);
            this.expirationQueue.add(af);
        }
    }
    
    private void a(final K k, final V v, final MapMaker$RemovalCause mapMaker$RemovalCause) {
        if (this.map.removalNotificationQueue != MapMakerInternalMap.cBj) {
            this.map.removalNotificationQueue.offer(new MapMaker$RemovalNotification<K, V>(k, v, mapMaker$RemovalCause));
        }
    }
    
    private boolean a(final af<K, V> af, final int n, final MapMaker$RemovalCause mapMaker$RemovalCause) {
        final int count = this.count;
        final AtomicReferenceArray<af<K, V>> table = this.table;
        final int n2 = n & -1 + table.length();
        af<K, V> zu;
        for (af<K, V> af2 = zu = table.get(n2); zu != null; zu = zu.ZU()) {
            if (zu == af) {
                ++this.modCount;
                this.a(zu.getKey(), zu.ZT().get(), mapMaker$RemovalCause);
                final af<K, V> f = this.f(af2, zu);
                final int count2 = -1 + this.count;
                table.set(n2, f);
                this.count = count2;
                return true;
            }
        }
        return false;
    }
    
    private void aae() {
        if (!this.tryLock()) {
            return;
        }
        try {
            this.aaf();
        }
        finally {
            this.unlock();
        }
    }
    
    private void aaf() {
        if (this.map.ZL()) {
            int n = 0;
            while (true) {
                final Reference<? extends K> poll = this.keyReferenceQueue.poll();
                if (poll == null) {
                    break;
                }
                this.map.a((af<K, V>)poll);
                final int n2 = n + 1;
                if (n2 == 16) {
                    break;
                }
                n = n2;
            }
        }
        final boolean zm = this.map.ZM();
        int n3 = 0;
        if (zm) {
            do {
                final Reference<? extends V> poll2 = this.valueReferenceQueue.poll();
                if (poll2 == null) {
                    break;
                }
                this.map.a((ar<K, V>)poll2);
            } while (++n3 != 16);
        }
    }
    
    private void aag() {
        while (true) {
            final af<K, V> af = this.recencyQueue.poll();
            if (af == null) {
                break;
            }
            if (this.evictionQueue.contains(af)) {
                this.evictionQueue.add(af);
            }
            if (!this.map.ZK() || !this.expirationQueue.contains(af)) {
                continue;
            }
            this.expirationQueue.add(af);
        }
    }
    
    private void aah() {
        if (!this.tryLock()) {
            return;
        }
        try {
            this.aai();
        }
        finally {
            this.unlock();
        }
    }
    
    private void aai() {
        this.aag();
        if (!this.expirationQueue.isEmpty()) {
            final long yn = this.map.ticker.YN();
            af<K, V> af;
            do {
                af = this.expirationQueue.peek();
                if (af == null) {
                    return;
                }
                final MapMakerInternalMap<K, V> map = this.map;
                if (MapMakerInternalMap.a(af, yn)) {
                    continue;
                }
                return;
            } while (this.a(af, af.ZV(), MapMaker$RemovalCause.cBb));
            throw new AssertionError();
        }
    }
    
    private void aak() {
        if (!this.tryLock()) {
            return;
        }
        try {
            this.aaf();
            this.aai();
            this.readCount.set(0);
        }
        finally {
            this.unlock();
        }
    }
    
    private void aal() {
        if (!this.isHeldByCurrentThread()) {
            this.map.ZQ();
        }
    }
    
    private void b(final af<K, V> af, final long n) {
        af.bf(n + this.map.ticker.YN());
    }
    
    private static boolean c(final ar<K, V> ar) {
        return ar.get() == null;
    }
    
    private af<K, V> e(final af<K, V> af, final af<K, V> af2) {
        final ar<K, V> zt = af.ZT();
        final af<K, V> a = this.map.cBh.a(this, af, af2);
        a.b(zt.a(this.valueReferenceQueue, a));
        return a;
    }
    
    private af<K, V> e(final Object o, final int n) {
        if (this.count != 0) {
            final AtomicReferenceArray<af<K, V>> table = this.table;
            for (Object zu = table.get(n & -1 + table.length()); zu != null; zu = ((af<Object, V>)zu).ZU()) {
                if (((af)zu).ZV() == n) {
                    final Object key = ((af<Object, V>)zu).getKey();
                    if (key == null) {
                        this.aae();
                    }
                    else if (this.map.keyEquivalence.l(o, key)) {
                        return (af<K, V>)zu;
                    }
                }
            }
        }
        return null;
    }
    
    private af<K, V> f(af<K, V> zu, final af<K, V> af) {
        this.evictionQueue.remove(af);
        this.expirationQueue.remove(af);
        int count = this.count;
        af<K, V> af2 = af.ZU();
        while (zu != af) {
            if (m(zu)) {
                this.l(zu);
                --count;
            }
            else {
                af2 = this.e(zu, af2);
            }
            zu = zu.ZU();
        }
        this.count = count;
        return af2;
    }
    
    private af<K, V> f(final Object o, final int n) {
        final af<K, V> e = this.e(o, n);
        if (e == null) {
            return null;
        }
        if (this.map.ZJ() && this.map.c(e)) {
            this.aah();
            return null;
        }
        return e;
    }
    
    private static AtomicReferenceArray<af<K, V>> fp(final int n) {
        return new AtomicReferenceArray<af<K, V>>(n);
    }
    
    private void k(final af<K, V> af) {
        this.evictionQueue.add(af);
        if (this.map.ZK()) {
            this.b(af, this.map.expireAfterAccessNanos);
            this.expirationQueue.add(af);
        }
    }
    
    private void l(final af<K, V> af) {
        this.a(af, MapMaker$RemovalCause.cBa);
        this.evictionQueue.remove(af);
        this.expirationQueue.remove(af);
    }
    
    private static boolean m(final af<K, V> af) {
        return af.getKey() == null || c(af.ZT());
    }
    
    final V a(final K k, final int n, final V v) {
        this.lock();
        try {
            this.aak();
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            final af<K, V> af = zu = table.get(n2);
            while (zu != null) {
                final K key = zu.getKey();
                if (zu.ZV() == n && key != null && this.map.keyEquivalence.l(k, key)) {
                    final ar<K, V> zt = zu.ZT();
                    final V value = zt.get();
                    if (value == null) {
                        if (c(zt)) {
                            final int count = this.count;
                            ++this.modCount;
                            this.a(key, value, MapMaker$RemovalCause.cBa);
                            final af<Object, V> f = this.f((af<Object, V>)af, (af<Object, V>)zu);
                            final int count2 = -1 + this.count;
                            table.set(n2, (af<K, V>)f);
                            this.count = count2;
                        }
                        return null;
                    }
                    ++this.modCount;
                    this.a(k, value, MapMaker$RemovalCause.cAZ);
                    this.a(zu, v);
                    return value;
                }
                else {
                    zu = zu.ZU();
                }
            }
            return null;
        }
        finally {
            this.unlock();
            this.aal();
        }
    }
    
    final V a(final K k, final int n, final V v, final boolean b) {
        int n2 = 0;
        Label_0320: {
            Label_0312: {
                int count = 0;
                AtomicReferenceArray<af<K, V>> fp = null;
            Label_0152_Outer:
                while (true) {
                    this.lock();
                Label_0152:
                    while (true) {
                        AtomicReferenceArray<af<K, V>> table;
                        int length;
                        int n3;
                        int n4 = 0;
                        af<K, V> af = null;
                        af<K, V> af2;
                        int n5;
                        int n6 = 0;
                        af<K, V> zu;
                        af<K, V> af3;
                        af<K, V> af4;
                        int n7;
                        int n8;
                        Label_0714:Label_0180_Outer:
                        while (true) {
                        Label_0180:
                            while (true) {
                                Label_0686: {
                                    try {
                                        this.aak();
                                        n2 = 1 + this.count;
                                        if (n2 <= this.threshold) {
                                            break Label_0320;
                                        }
                                        table = this.table;
                                        length = table.length();
                                        if (length >= 1073741824) {
                                            break Label_0312;
                                        }
                                        count = this.count;
                                        fp = fp(length << 1);
                                        this.threshold = 3 * fp.length() / 4;
                                        n3 = -1 + fp.length();
                                        n4 = 0;
                                        if (n4 >= length) {
                                            break;
                                        }
                                        af = table.get(n4);
                                        if (af == null) {
                                            break Label_0686;
                                        }
                                        af2 = af.ZU();
                                        n5 = (n3 & af.ZV());
                                        if (af2 == null) {
                                            fp.set(n5, af);
                                            n6 = count;
                                            break Label_0180;
                                        }
                                        break Label_0714;
                                        Label_0237_Outer:Block_21_Outer:
                                        while (true) {
                                            while (true) {
                                                Block_20: {
                                                    break Block_20;
                                                    while (true) {
                                                        zu = zu.ZU();
                                                        continue Label_0237_Outer;
                                                        af2 = af2.ZU();
                                                        af3 = af4;
                                                        n5 = n7;
                                                        break Label_0152;
                                                        Label_0249: {
                                                            n8 = (n3 & zu.ZV());
                                                        }
                                                        fp.set(n8, this.e(zu, fp.get(n8)));
                                                        continue Label_0180_Outer;
                                                        while (true) {
                                                            Block_18: {
                                                                break Block_18;
                                                                af4 = af2;
                                                                continue Label_0180;
                                                            }
                                                            n7 = (n3 & af2.ZV());
                                                            continue Block_21_Outer;
                                                        }
                                                        this.l(zu);
                                                        --count;
                                                        continue Label_0180_Outer;
                                                    }
                                                }
                                                continue;
                                            }
                                            Label_0200: {
                                                fp.set(n5, af3);
                                            }
                                            zu = af;
                                            continue Label_0180_Outer;
                                        }
                                    }
                                    // iftrue(Label_0686:, zu == af3)
                                    // iftrue(Label_0200:, af2 == null)
                                    // iftrue(Label_0693:, n7 == n5)
                                    // iftrue(Label_0249:, !m(zu))
                                    finally {
                                        this.unlock();
                                        this.aal();
                                    }
                                    break;
                                }
                                n6 = count;
                                break Label_0180;
                                Label_0693: {
                                    n7 = n5;
                                }
                                af4 = af3;
                                continue Label_0180;
                            }
                            ++n4;
                            count = n6;
                            continue Label_0152_Outer;
                        }
                        af3 = af;
                        continue Label_0152;
                    }
                }
                this.table = fp;
                this.count = count;
            }
            n2 = 1 + this.count;
        }
        final AtomicReferenceArray<af<K, V>> table2 = this.table;
        final int n9 = n & -1 + table2.length();
        af<K, V> zu2;
        final af<K, V> af5 = zu2 = table2.get(n9);
        while (zu2 != null) {
            final K key = zu2.getKey();
            if (zu2.ZV() == n && key != null && this.map.keyEquivalence.l(k, key)) {
                final V value = zu2.ZT().get();
                if (value == null) {
                    ++this.modCount;
                    this.a(zu2, v);
                    this.a(k, value, MapMaker$RemovalCause.cBa);
                    this.count = this.count;
                    this.unlock();
                    this.aal();
                    return null;
                }
                if (b) {
                    this.k(zu2);
                    this.unlock();
                    this.aal();
                    return value;
                }
                ++this.modCount;
                this.a(k, value, MapMaker$RemovalCause.cAZ);
                this.a(zu2, v);
                this.unlock();
                this.aal();
                return value;
            }
            else {
                zu2 = zu2.ZU();
            }
        }
        ++this.modCount;
        final af<K, V> a = this.map.cBh.a((MapMakerInternalMap$Segment<K, V>)this, k, n, (af<K, V>)af5);
        this.a((af<K, V>)a, v);
        table2.set(n9, (af<K, V>)a);
        int n10;
        if (this.map.ZI() && this.count >= this.maxSegmentSize) {
            this.aag();
            final af<K, V> af6 = this.evictionQueue.remove();
            if (!this.a(af6, af6.ZV(), MapMaker$RemovalCause.cBc)) {
                throw new AssertionError();
            }
            n10 = 1;
        }
        else {
            n10 = 0;
        }
        int count2;
        if (n10 != 0) {
            count2 = 1 + this.count;
        }
        else {
            count2 = n2;
        }
        this.count = count2;
        this.unlock();
        this.aal();
        return null;
    }
    
    final boolean a(final af<K, V> af, final int n) {
        this.lock();
        try {
            final int count = this.count;
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            for (af<K, V> af2 = zu = table.get(n2); zu != null; zu = zu.ZU()) {
                if (zu == af) {
                    ++this.modCount;
                    this.a(zu.getKey(), zu.ZT().get(), MapMaker$RemovalCause.cBa);
                    final af<K, V> f = this.f(af2, zu);
                    final int count2 = -1 + this.count;
                    table.set(n2, f);
                    this.count = count2;
                    return true;
                }
            }
            return false;
        }
        finally {
            this.unlock();
            this.aal();
        }
    }
    
    final boolean a(final K k, final int n, final ar<K, V> ar) {
        this.lock();
        try {
            final int count = this.count;
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            final af<K, V> af = zu = table.get(n2);
            while (zu != null) {
                final K key = zu.getKey();
                if (zu.ZV() == n && key != null && this.map.keyEquivalence.l(k, key)) {
                    if (zu.ZT() == ar) {
                        ++this.modCount;
                        this.a(k, ar.get(), MapMaker$RemovalCause.cBa);
                        final af<Object, V> f = this.f((af<Object, V>)af, (af<Object, V>)zu);
                        final int count2 = -1 + this.count;
                        table.set(n2, (af<K, V>)f);
                        this.count = count2;
                        return true;
                    }
                    return false;
                }
                else {
                    zu = zu.ZU();
                }
            }
            return false;
        }
        finally {
            this.unlock();
            if (!this.isHeldByCurrentThread()) {
                this.aal();
            }
        }
    }
    
    final boolean a(final K k, final int n, final V v, final V v2) {
        this.lock();
        try {
            this.aak();
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            final af<K, V> af = zu = table.get(n2);
            while (zu != null) {
                final K key = zu.getKey();
                if (zu.ZV() == n && key != null && this.map.keyEquivalence.l(k, key)) {
                    final ar<K, V> zt = zu.ZT();
                    final V value = zt.get();
                    if (value == null) {
                        if (c(zt)) {
                            final int count = this.count;
                            ++this.modCount;
                            this.a(key, value, MapMaker$RemovalCause.cBa);
                            final af<Object, V> f = this.f((af<Object, V>)af, (af<Object, V>)zu);
                            final int count2 = -1 + this.count;
                            table.set(n2, (af<K, V>)f);
                            this.count = count2;
                        }
                        return false;
                    }
                    if (this.map.valueEquivalence.l(v, value)) {
                        ++this.modCount;
                        this.a(k, value, MapMaker$RemovalCause.cAZ);
                        this.a(zu, v2);
                        return true;
                    }
                    this.k(zu);
                    return false;
                }
                else {
                    zu = zu.ZU();
                }
            }
            return false;
        }
        finally {
            this.unlock();
            this.aal();
        }
    }
    
    final void aaj() {
        if ((0x3F & this.readCount.incrementAndGet()) == 0x0) {
            this.aak();
            this.aal();
        }
    }
    
    final V b(final af<K, V> af) {
        if (af.getKey() == null) {
            this.aae();
            return null;
        }
        final V value = af.ZT().get();
        if (value == null) {
            this.aae();
            return null;
        }
        if (this.map.ZJ() && this.map.c(af)) {
            this.aah();
            return null;
        }
        return value;
    }
    
    final boolean b(final Object o, final int n, final Object o2) {
        this.lock();
        try {
            this.aak();
            final int count = this.count;
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            for (af<K, V> af = zu = table.get(n2); zu != null; zu = zu.ZU()) {
                final K key = zu.getKey();
                if (zu.ZV() == n && key != null && this.map.keyEquivalence.l(o, key)) {
                    final ar<K, V> zt = zu.ZT();
                    final V value = zt.get();
                    MapMaker$RemovalCause mapMaker$RemovalCause;
                    if (this.map.valueEquivalence.l(o2, value)) {
                        mapMaker$RemovalCause = MapMaker$RemovalCause.cAY;
                    }
                    else {
                        if (!c(zt)) {
                            return false;
                        }
                        mapMaker$RemovalCause = MapMaker$RemovalCause.cBa;
                    }
                    ++this.modCount;
                    this.a(key, value, mapMaker$RemovalCause);
                    final af<Object, V> f = this.f((af<Object, V>)af, (af<Object, V>)zu);
                    final int count2 = -1 + this.count;
                    table.set(n2, (af<K, V>)f);
                    this.count = count2;
                    return mapMaker$RemovalCause == MapMaker$RemovalCause.cAY;
                }
            }
            return false;
        }
        finally {
            this.unlock();
            this.aal();
        }
    }
    
    final void clear() {
        if (this.count == 0) {
            return;
        }
    Label_0083_Outer:
        while (true) {
            this.lock();
        Label_0083:
            while (true) {
            Label_0135_Outer:
                while (true) {
                    int n = 0;
                    Label_0206: {
                        try {
                            final AtomicReferenceArray<af<K, V>> table = this.table;
                            if (this.map.removalNotificationQueue == MapMakerInternalMap.cBj) {
                                break Label_0135_Outer;
                            }
                            n = 0;
                            if (n < table.length()) {
                                for (af<K, V> zu = table.get(n); zu != null; zu = zu.ZU()) {
                                    zu.ZT();
                                    this.a(zu, MapMaker$RemovalCause.cAY);
                                }
                                break Label_0206;
                            }
                            break Label_0135_Outer;
                        Label_0105:
                            while (true) {
                            Label_0125:
                                while (true) {
                                    while (true) {
                                        Label_0115: {
                                            break Label_0115;
                                            int n2 = 0;
                                            table.set(n2, null);
                                            ++n2;
                                            break Label_0083;
                                            this.evictionQueue.clear();
                                            this.expirationQueue.clear();
                                            this.readCount.set(0);
                                            ++this.modCount;
                                            this.count = 0;
                                            return;
                                        }
                                        break Label_0125;
                                        continue Label_0135_Outer;
                                    }
                                    continue Label_0083_Outer;
                                }
                                continue;
                            }
                        }
                        // iftrue(Label_0125:, !this.map.ZL())
                        // iftrue(Label_0115:, this.keyReferenceQueue.poll() != null)
                        // iftrue(Label_0135:, this.valueReferenceQueue.poll() != null)
                        // iftrue(Label_0105:, n2 >= table.length())
                        // iftrue(Label_0145:, !this.map.ZM())
                        finally {
                            this.unlock();
                            this.aal();
                        }
                    }
                    ++n;
                    continue Label_0083_Outer;
                }
                int n2 = 0;
                continue Label_0083;
            }
        }
    }
    
    final boolean g(final Object o, final int n) {
        try {
            if (this.count == 0) {
                return false;
            }
            final af<K, Object> f = this.f(o, n);
            if (f == null) {
                return false;
            }
            final Object value = f.ZT().get();
            boolean b = false;
            if (value != null) {
                b = true;
            }
            return b;
        }
        finally {
            this.aaj();
        }
    }
    
    final V get(final Object o, final int n) {
        try {
            final af<K, V> f = this.f(o, n);
            if (f == null) {
                return null;
            }
            final V value = f.ZT().get();
            if (value != null) {
                if (this.map.ZK()) {
                    this.b(f, this.map.expireAfterAccessNanos);
                }
                this.recencyQueue.add(f);
            }
            else {
                this.aae();
            }
            return value;
        }
        finally {
            this.aaj();
        }
    }
    
    final V h(final Object o, final int n) {
        this.lock();
        try {
            this.aak();
            final int count = this.count;
            final AtomicReferenceArray<af<K, V>> table = this.table;
            final int n2 = n & -1 + table.length();
            af<K, V> zu;
            for (af<K, V> af = zu = table.get(n2); zu != null; zu = zu.ZU()) {
                final K key = zu.getKey();
                if (zu.ZV() == n && key != null && this.map.keyEquivalence.l(o, key)) {
                    final ar<K, V> zt = zu.ZT();
                    final V value = zt.get();
                    MapMaker$RemovalCause mapMaker$RemovalCause;
                    if (value != null) {
                        mapMaker$RemovalCause = MapMaker$RemovalCause.cAY;
                    }
                    else {
                        if (!c(zt)) {
                            return null;
                        }
                        mapMaker$RemovalCause = MapMaker$RemovalCause.cBa;
                    }
                    ++this.modCount;
                    this.a(key, value, mapMaker$RemovalCause);
                    final af<Object, V> f = this.f((af<Object, V>)af, (af<Object, V>)zu);
                    final int count2 = -1 + this.count;
                    table.set(n2, (af<K, V>)f);
                    this.count = count2;
                    return value;
                }
            }
            return null;
        }
        finally {
            this.unlock();
            this.aal();
        }
    }
}
