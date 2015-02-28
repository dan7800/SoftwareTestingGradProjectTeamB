.class public final Lcom/google/android/gm/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fh:Ljava/util/concurrent/atomic/AtomicInteger;

.field private kr:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/aw;->mHandler:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/aw;->kr:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/aw;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/aw;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gm/aw;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gm/aw;->kr:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gm/aw;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 32
    iget-object v0, p0, Lcom/google/android/gm/aw;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/ax;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/ax;-><init>(Lcom/google/android/gm/aw;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "UiHandler is disabled in post(). Dropping Runnable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/google/android/gm/aw;->kr:Z

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gm/aw;->kr:Z

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/aw;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 67
    if-lez v0, :cond_0

    .line 68
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Disable UiHandler. Dropping %d Runnables."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/aw;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    :cond_1
    return-void
.end method
