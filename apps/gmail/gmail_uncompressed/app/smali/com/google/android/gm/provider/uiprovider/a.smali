.class public final Lcom/google/android/gm/provider/uiprovider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bdz:Lcom/google/android/gm/provider/MailEngine;

.field private final boc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/uiprovider/b;",
            ">;"
        }
    .end annotation
.end field

.field private final bod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final boe:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    .line 32
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boe:Landroid/util/LruCache;

    .line 39
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/a;->mAccount:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/a;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 41
    return-void
.end method

.method private fm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public final F(Landroid/content/Context;J)Lcom/google/android/gm/provider/uiprovider/b;
    .locals 8

    .prologue
    .line 62
    iget-object v7, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    monitor-enter v7

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/b;

    .line 70
    :goto_0
    monitor-exit v7

    return-object v0

    .line 66
    :cond_0
    new-instance v1, Lcom/google/android/gm/provider/uiprovider/b;

    iget-object v3, p0, Lcom/google/android/gm/provider/uiprovider/a;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/provider/uiprovider/a;->bdz:Lcom/google/android/gm/provider/MailEngine;

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/uiprovider/b;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/gm/provider/MailEngine;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gm/provider/uiprovider/g;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boe:Landroid/util/LruCache;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public final aS(J)Lcom/google/android/gm/provider/uiprovider/b;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final aT(J)V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boc:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/b;

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/b;->HW()V

    .line 57
    :cond_0
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final fk(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/uiprovider/a;->fm(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fl(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/g;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->boe:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/uiprovider/a;->fm(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/a;->bod:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
