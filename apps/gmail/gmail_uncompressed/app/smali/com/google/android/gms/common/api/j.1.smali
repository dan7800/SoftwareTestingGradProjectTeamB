.class public abstract Lcom/google/android/gms/common/api/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/m;
.implements Lcom/google/android/gms/common/api/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/t;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/m",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/r",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final bCd:Ljava/lang/Object;

.field protected bCe:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final bCf:Ljava/util/concurrent/CountDownLatch;

.field private final bCg:Ljava/util/ArrayList;

.field private bCh:Lcom/google/android/gms/common/api/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/u",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile bCi:Lcom/google/android/gms/common/api/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private volatile bCj:Z

.field private bCk:Z

.field private bCl:Z

.field private bCm:Lcom/google/android/gms/common/internal/v;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->bCf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->bCg:Ljava/util/ArrayList;

    return-void
.end method

.method private Kr()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Ks()Lcom/google/android/gms/common/api/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCi:Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/j;->Kt()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Ku()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCE:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/j;->c(Lcom/google/android/gms/common/api/t;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCl:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Ku()V

    return-void
.end method

.method private d(Lcom/google/android/gms/common/api/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->bCi:Lcom/google/android/gms/common/api/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->bCm:Lcom/google/android/gms/common/internal/v;

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCi:Lcom/google/android/gms/common/api/t;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/t;->Jk()Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCh:Lcom/google/android/gms/common/api/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCe:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->Kv()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCe:Lcom/google/android/gms/common/api/k;

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCh:Lcom/google/android/gms/common/api/u;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Ks()Lcom/google/android/gms/common/api/t;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/t;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private isCanceled()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCk:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected Kt()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    iput-object v1, p0, Lcom/google/android/gms/common/api/j;->bCi:Lcom/google/android/gms/common/api/t;

    iput-object v1, p0, Lcom/google/android/gms/common/api/j;->bCh:Lcom/google/android/gms/common/api/u;

    return-void
.end method

.method public final synthetic Y(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/j;->c(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v6, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    if-nez v0, :cond_3

    :goto_1
    const-string v0, "Result has already been consumed."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCf:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Ku()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Ks()Lcom/google/android/gms/common/api/t;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/j;->c(Lcom/google/android/gms/common/api/t;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCl:Z

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/common/api/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/k",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->bCe:Lcom/google/android/gms/common/api/k;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/u",
            "<TR;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCe:Lcom/google/android/gms/common/api/k;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Ks()Lcom/google/android/gms/common/api/t;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/t;)V

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->bCh:Lcom/google/android/gms/common/api/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected final a(Lcom/google/android/gms/common/internal/v;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->bCm:Lcom/google/android/gms/common/internal/v;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/gms/common/api/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/j;->bCl:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/j;->bCk:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/i;->b(Lcom/google/android/gms/common/api/t;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;->Kr()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/j;->d(Lcom/google/android/gms/common/api/t;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->bCd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCk:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCj:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCm:Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCm:Lcom/google/android/gms/common/internal/v;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/v;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->bCi:Lcom/google/android/gms/common/api/t;

    invoke-static {v0}, Lcom/google/android/gms/common/api/i;->b(Lcom/google/android/gms/common/api/t;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->bCh:Lcom/google/android/gms/common/api/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/j;->bCk:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCF:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/j;->d(Lcom/google/android/gms/common/api/t;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
