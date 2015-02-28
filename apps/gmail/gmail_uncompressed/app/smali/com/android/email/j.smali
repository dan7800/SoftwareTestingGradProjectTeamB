.class final Lcom/android/email/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private LO:Landroid/os/Looper;

.field private final fK:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/j;->fK:Ljava/lang/Object;

    .line 828
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "EmailNotification"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 829
    iget-object v1, p0, Lcom/android/email/j;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/j;->LO:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 832
    :try_start_1
    iget-object v0, p0, Lcom/android/email/j;->fK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    goto :goto_0

    .line 837
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/email/j;->LO:Landroid/os/Looper;

    return-object v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/email/j;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 844
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/j;->LO:Landroid/os/Looper;

    .line 845
    iget-object v0, p0, Lcom/android/email/j;->fK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 846
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 848
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 849
    return-void

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
