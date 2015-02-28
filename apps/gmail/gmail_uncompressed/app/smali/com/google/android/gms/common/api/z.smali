.class final Lcom/google/android/gms/common/api/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/p;


# instance fields
.field final synthetic bDd:Lcom/google/android/gms/common/api/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dz(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/x;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->e(Lcom/google/android/gms/common/api/x;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    iget-object v1, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    iget v1, v1, Lcom/google/android/gms/common/api/x;->bCH:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/x;I)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    iget-object v0, v0, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    iget-object v1, v1, Lcom/google/android/gms/common/api/x;->bCU:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v2}, Lcom/google/android/gms/common/api/x;->f(Lcom/google/android/gms/common/api/x;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->b(Lcom/google/android/gms/common/api/x;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->c(Lcom/google/android/gms/common/api/x;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->d(Lcom/google/android/gms/common/api/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/z;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
