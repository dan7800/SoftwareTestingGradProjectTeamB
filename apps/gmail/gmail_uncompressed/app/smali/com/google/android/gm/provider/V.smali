.class final Lcom/google/android/gm/provider/V;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final bgW:Z

.field private bha:Lcom/google/android/gm/provider/W;

.field private bhb:Z

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/V;->bha:Lcom/google/android/gm/provider/W;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/V;->bhb:Z

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/V;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/google/android/gm/provider/V;->mAccount:Ljava/lang/String;

    .line 211
    iput-boolean p3, p0, Lcom/google/android/gm/provider/V;->bgW:Z

    .line 212
    return-void
.end method

.method private Fh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    new-instance v0, Lcom/google/android/gm/provider/W;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/W;-><init>(Lcom/google/android/gm/provider/V;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/V;->bha:Lcom/google/android/gm/provider/W;

    .line 240
    iget-object v0, p0, Lcom/google/android/gm/provider/V;->bha:Lcom/google/android/gm/provider/W;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/W;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    iput-boolean v3, p0, Lcom/google/android/gm/provider/V;->bhb:Z

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/V;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gm/provider/V;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/V;Lcom/google/android/gm/provider/U;)V
    .locals 5

    .prologue
    .line 188
    invoke-static {}, Lcom/google/android/gm/provider/U;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gm/provider/U;->Fg()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/U;

    invoke-static {v0}, Lcom/google/android/gm/provider/U;->b(Lcom/google/android/gm/provider/U;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/google/android/gm/provider/U;->b(Lcom/google/android/gm/provider/U;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gm/provider/U;->b(Lcom/google/android/gm/provider/U;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/google/android/gm/provider/U;->c(Lcom/google/android/gm/provider/U;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/V;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gm/provider/V;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/V;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/gm/provider/V;->bgW:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gm/provider/V;)Lcom/google/android/gm/provider/W;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/V;->bha:Lcom/google/android/gm/provider/W;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/provider/V;)Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/gm/provider/V;->bhb:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/gm/provider/V;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/gm/provider/V;->Fh()V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/gm/provider/V;->bha:Lcom/google/android/gm/provider/W;

    if-nez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/google/android/gm/provider/V;->Fh()V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/V;->bhb:Z

    goto :goto_0
.end method
