.class final Landroid/support/v4/content/b;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field eI:Z

.field private eJ:Ljava/util/concurrent/CountDownLatch;

.field final synthetic eK:Landroid/support/v4/content/a;

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/content/a;)V
    .locals 2

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/content/b;->eK:Landroid/support/v4/content/a;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/b;->eJ:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected final synthetic au()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/b;->eK:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/b;->result:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/b;->result:Ljava/lang/Object;

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/b;->eK:Landroid/support/v4/content/a;

    iget-object v1, p0, Landroid/support/v4/content/b;->result:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Landroid/support/v4/content/b;->eJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/b;->eJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/b;->eK:Landroid/support/v4/content/a;

    iget-object v1, v0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    iget-object v0, p0, Landroid/support/v4/content/b;->eJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Landroid/support/v4/content/j;->eU:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->onCanceled(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/b;->eJ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 61
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, v0, Landroid/support/v4/content/j;->eX:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v4/content/a;->eH:J

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/a;->eE:Landroid/support/v4/content/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->deliverResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/b;->eI:Z

    .line 80
    iget-object v0, p0, Landroid/support/v4/content/b;->eK:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->at()V

    .line 81
    return-void
.end method
