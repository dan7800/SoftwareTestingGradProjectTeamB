.class final Lcom/google/android/gms/common/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/n;


# instance fields
.field final bCH:I

.field private final bCI:Ljava/util/concurrent/locks/Lock;

.field private final bCJ:Ljava/util/concurrent/locks/Condition;

.field private final bCK:Lcom/google/android/gms/common/internal/n;

.field private final bCL:I

.field final bCM:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/E",
            "<*>;>;"
        }
    .end annotation
.end field

.field private bCN:Lcom/google/android/gms/common/a;

.field private bCO:I

.field private volatile bCP:I

.field private volatile bCQ:I

.field private bCR:Z

.field private bCS:I

.field private bCT:J

.field final bCU:Landroid/os/Handler;

.field private final bCV:Landroid/os/Bundle;

.field private final bCW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/h",
            "<*>;",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field

.field private final bCX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bCY:Z

.field private final bCZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/F",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bCn:Lcom/google/android/gms/common/api/C;

.field private final bCw:Landroid/os/Looper;

.field final bDa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/E",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bDb:Lcom/google/android/gms/common/api/p;

.field private final bDc:Lcom/google/android/gms/common/internal/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/p;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/q;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    iget-object v2, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCJ:Ljava/util/concurrent/locks/Condition;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/x;->bCR:Z

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/x;->bCT:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCV:Landroid/os/Bundle;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCZ:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bDa:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/y;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/y;-><init>(Lcom/google/android/gms/common/api/x;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCn:Lcom/google/android/gms/common/api/C;

    new-instance v2, Lcom/google/android/gms/common/api/z;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/z;-><init>(Lcom/google/android/gms/common/api/x;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bDb:Lcom/google/android/gms/common/api/p;

    new-instance v2, Lcom/google/android/gms/common/api/A;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/A;-><init>(Lcom/google/android/gms/common/api/x;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bDc:Lcom/google/android/gms/common/internal/p;

    new-instance v2, Lcom/google/android/gms/common/internal/n;

    iget-object v3, p0, Lcom/google/android/gms/common/api/x;->bDc:Lcom/google/android/gms/common/internal/p;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/p;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/common/api/x;->bCw:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/D;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/common/api/D;-><init>(Lcom/google/android/gms/common/api/x;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    move/from16 v0, p7

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCL:I

    move/from16 v0, p8

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCH:I

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/p;

    iget-object v4, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/p;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/q;

    iget-object v4, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/e;)V

    goto :goto_1

    :cond_1
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/a;->Ko()Lcom/google/android/gms/common/api/g;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v10, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/a;->Kq()Lcom/google/android/gms/common/api/h;

    move-result-object v11

    iget-object v7, p0, Lcom/google/android/gms/common/api/x;->bDb:Lcom/google/android/gms/common/api/p;

    new-instance v8, Lcom/google/android/gms/common/api/B;

    invoke-direct {v8, p0, v2}, Lcom/google/android/gms/common/api/B;-><init>(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/api/g;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/common/api/g;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->KU()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/x;->bCX:Ljava/util/List;

    return-void
.end method

.method private KC()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KD()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/E;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/E;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GoogleApiClientImpl"

    const-string v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private KD()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCQ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/x;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/E;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/f;",
            ">(",
            "Lcom/google/android/gms/common/api/E",
            "<TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/E;->Kq()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bDa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCn:Lcom/google/android/gms/common/api/C;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/E;->a(Lcom/google/android/gms/common/api/C;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KD()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/E;->b(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/E;->Kq()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/E;->a(Lcom/google/android/gms/common/api/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/x;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/x;->eu(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/x;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/x;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/x;->bCQ:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/x;I)I
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCO:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/x;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCV:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/x;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCS:I

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCS:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/x;->bCR:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->eu(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/x;->bCT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gms/common/api/x;->bCY:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/n;->c(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->xe()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCJ:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KC()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCR:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/gms/common/api/x;->bCR:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->eu(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCV:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/n;->u(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCV:Landroid/os/Bundle;

    goto :goto_2
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/x;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KD()Z

    move-result v0

    return v0
.end method

.method private eu(I)V
    .locals 5

    const/4 v1, 0x3

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    if-eq v0, v1, :cond_a

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/E;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/E;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bDa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/E;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/E;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bDa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/F;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/F;->clear()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCR:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    if-eqz v0, :cond_6

    if-ne p1, v4, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCJ:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCY:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->disconnect()V

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCY:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    if-eqz v1, :cond_a

    if-eq p1, v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->ez(I)V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCY:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/x;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/x;->bCT:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCY:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/x;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCQ:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/x;->bCQ:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/x;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCO:I

    return v0
.end method

.method private xe()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCQ:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final Kw()Lcom/google/android/gms/common/a;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCJ:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/a;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/a;->bBQ:Lcom/google/android/gms/common/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/a;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/f;",
            ">(",
            "Lcom/google/android/gms/common/api/h",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/f;",
            "R::",
            "Lcom/google/android/gms/common/api/t;",
            "T:",
            "Lcom/google/android/gms/common/api/l",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/k;

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCw:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/k;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCM:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/p;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/f;",
            "T:",
            "Lcom/google/android/gms/common/api/l",
            "<+",
            "Lcom/google/android/gms/common/api/t;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KD()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->KC()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/E;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/x;->eu(I)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/common/api/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->b(Lcom/google/android/gms/common/api/p;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->b(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public final connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCR:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/x;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/x;->bCY:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/x;->bCN:Lcom/google/android/gms/common/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCV:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/x;->bCS:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/f;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/x;->bCI:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/x;->xe()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/x;->eu(I)V

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnecting()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/api/x;->bCP:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
