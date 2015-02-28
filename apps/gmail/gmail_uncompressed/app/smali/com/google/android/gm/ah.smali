.class public final Lcom/google/android/gm/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aYM:Lcom/google/android/gm/ah;


# instance fields
.field private final aPd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aYJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/al;",
            ">;"
        }
    .end annotation
.end field

.field private final aYK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation
.end field

.field private aYL:[Ljava/lang/String;

.field private mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ah;->aYJ:Ljava/util/Set;

    .line 48
    iput-object p1, p0, Lcom/google/android/gm/ah;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ah;->aPd:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/google/android/gm/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ai;-><init>(Lcom/google/android/gm/ah;)V

    iput-object v0, p0, Lcom/google/android/gm/ah;->aYK:Ljava/util/Comparator;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ah;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/ah;->aYJ:Ljava/util/Set;

    return-object v0
.end method

.method public static declared-synchronized aW(Landroid/content/Context;)Lcom/google/android/gm/ah;
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/google/android/gm/ah;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/ah;->aYM:Lcom/google/android/gm/ah;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/gm/ah;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gm/ah;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/ah;->aYM:Lcom/google/android/gm/ah;

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/gm/ah;->aYM:Lcom/google/android/gm/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final Db()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/gm/provider/T;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gm/ah;->aYK:Ljava/util/Comparator;

    return-object v0
.end method

.method final a(Ljava/lang/String;ILcom/google/android/gm/aw;)Lcom/google/android/gm/al;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/android/gm/ah;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ah;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ah;->aPd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ah;->aPd:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->r(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/google/android/gm/am;

    iget-object v3, p0, Lcom/google/android/gm/ah;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/ah;->mAccount:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gm/am;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gm/am;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/google/android/gm/ah;->aPd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ah;->aYJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/ah;->mAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gm/ah;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3, v6}, Lcom/google/android/gm/provider/Y;->a(Landroid/content/Context;Ljava/lang/String;JI)Lcom/google/android/gm/provider/U;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gm/provider/U;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gm/ak;

    invoke-direct {v0}, Lcom/google/android/gm/ak;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/T;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ah;->aYL:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/ah;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0019

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ah;->aYL:[Ljava/lang/String;

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/google/android/gm/ah;->aYL:[Ljava/lang/String;

    .line 99
    array-length v0, v3

    if-lez v0, :cond_6

    .line 100
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 101
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_5
    new-instance v0, Lcom/google/android/gm/aj;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gm/aj;-><init>(Lcom/google/android/gm/ah;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gm/aw;->f(Ljava/lang/Runnable;)V

    .line 116
    :cond_6
    new-instance v0, Lcom/google/android/gm/al;

    invoke-direct {v0, p0, v2, v6, v1}, Lcom/google/android/gm/al;-><init>(Lcom/google/android/gm/ah;Ljava/util/List;IB)V

    return-object v0
.end method

.method public final dB(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gm/ah;->aPd:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gm/ah;->aYJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/al;

    invoke-static {v0, p1}, Lcom/google/android/gm/al;->a(Lcom/google/android/gm/al;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gm/al;->notifyChanged()V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
