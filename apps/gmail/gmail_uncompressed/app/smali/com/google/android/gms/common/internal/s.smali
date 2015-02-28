.class public final Lcom/google/android/gms/common/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bFw:Lcom/google/android/gms/common/internal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/r;->bFv:Lcom/google/android/gms/common/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/internal/q;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/k;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;I)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/r;->bFv:Lcom/google/android/gms/common/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/internal/q;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/k;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/s;->bFw:Lcom/google/android/gms/common/internal/r;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/internal/r;I)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
