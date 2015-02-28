.class public final Lcom/google/android/gm/provider/uiprovider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/m;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aPP:J

.field private final bdz:Lcom/google/android/gm/provider/MailEngine;

.field private final bof:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/uiprovider/f;",
            ">;"
        }
    .end annotation
.end field

.field private final bog:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/Cursor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private boh:Lcom/google/android/gm/provider/k;

.field private final boi:Ljava/lang/Object;

.field private final boj:Landroid/os/Handler;

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/b;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/gm/provider/MailEngine;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boi:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/b;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/b;->mAccount:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/google/android/gm/provider/uiprovider/b;->aPP:J

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boj:Landroid/os/Handler;

    .line 52
    iput-object p5, p0, Lcom/google/android/gm/provider/uiprovider/b;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 53
    return-void
.end method

.method static synthetic HX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/b;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/uiprovider/b;Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/k;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/b;->boh:Lcom/google/android/gm/provider/k;

    return-object p1
.end method

.method private a(Lcom/google/android/gm/provider/bm;)Lcom/google/android/gm/provider/uiprovider/f;
    .locals 11

    .prologue
    .line 97
    iget-wide v6, p1, Lcom/google/android/gm/provider/bm;->bkt:J

    .line 98
    iget-object v10, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    monitor-enter v10

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v1, Lcom/google/android/gm/provider/uiprovider/f;

    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/b;->mAccount:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/b;->aPP:J

    iget-wide v8, p1, Lcom/google/android/gm/provider/bm;->blL:J

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gm/provider/uiprovider/f;-><init>(Landroid/content/Context;Ljava/lang/String;JJJ)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/uiprovider/f;->b(Lcom/google/android/gm/provider/bm;)V

    .line 112
    return-object v1

    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/uiprovider/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boi:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/uiprovider/b;)Lcom/google/android/gm/provider/k;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boh:Lcom/google/android/gm/provider/k;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/uiprovider/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/provider/uiprovider/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/provider/uiprovider/b;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->aPP:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gm/provider/uiprovider/b;)Lcom/google/android/gm/provider/MailEngine;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bdz:Lcom/google/android/gm/provider/MailEngine;

    return-object v0
.end method


# virtual methods
.method public final DT()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    monitor-enter v1

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/b;->HW()V

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final HV()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boj:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/provider/uiprovider/c;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/uiprovider/c;-><init>(Lcom/google/android/gm/provider/uiprovider/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method final HW()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/f;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/f;->Ie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final aU(J)Lcom/google/android/gm/provider/uiprovider/f;
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bof:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/f;

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final aV(J)Lcom/google/android/gm/provider/uiprovider/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/uiprovider/b;->aU(J)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/f;->Id()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gm/provider/MailEngine;->c(JZ)Lcom/google/android/gm/provider/bm;

    move-result-object v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/b;->mW:Ljava/lang/String;

    const-string v1, "Message not found"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    const/4 v0, 0x0

    .line 89
    :cond_1
    :goto_0
    return-object v0

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 82
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/uiprovider/b;->a(Lcom/google/android/gm/provider/bm;)Lcom/google/android/gm/provider/uiprovider/f;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/f;->Id()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/uiprovider/f;->c(Lcom/google/android/gm/provider/bm;)V

    goto :goto_0
.end method

.method public final r(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final s(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/google/android/gm/provider/uiprovider/b;->bog:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/b;->boi:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boh:Lcom/google/android/gm/provider/k;

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/b;->mW:Ljava/lang/String;

    const-string v2, "attachment cursor closed, and stopping loader"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boh:Lcom/google/android/gm/provider/k;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/k;->stop()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/b;->boh:Lcom/google/android/gm/provider/k;

    .line 154
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_2
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
