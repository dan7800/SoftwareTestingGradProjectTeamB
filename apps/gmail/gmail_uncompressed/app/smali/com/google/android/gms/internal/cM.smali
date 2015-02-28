.class public final Lcom/google/android/gms/internal/cM;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/cE;",
        ">;"
    }
.end annotation


# instance fields
.field private final bSU:Ljava/lang/Object;

.field private final bXs:Lcom/google/android/gms/internal/cK;

.field private final bXt:Lcom/google/android/gms/internal/cH;

.field private bXu:Z

.field private final buh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cK;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/e;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cM;->buh:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cK;

    iput-object v0, p0, Lcom/google/android/gms/internal/cM;->bXs:Lcom/google/android/gms/internal/cK;

    iget-object v0, p0, Lcom/google/android/gms/internal/cM;->bXs:Lcom/google/android/gms/internal/cK;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cK;->a(Lcom/google/android/gms/internal/cM;)V

    new-instance v0, Lcom/google/android/gms/internal/cH;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cH;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cM;->bXt:Lcom/google/android/gms/internal/cH;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cM;->bSU:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    return-void
.end method

.method private Se()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->cc(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cM;->bXt:Lcom/google/android/gms/internal/cH;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/cM;->bXt:Lcom/google/android/gms/internal/cH;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cH;->Sc()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cI;

    iget-object v1, v0, Lcom/google/android/gms/internal/cI;->bXj:Lcom/google/a/a/a/a/a/d;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->Le()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cE;

    iget-object v5, p0, Lcom/google/android/gms/internal/cM;->buh:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/cI;->bXh:Lcom/google/android/gms/internal/qu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cI;->bXj:Lcom/google/a/a/a/a/a/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/dt;->b(Lcom/google/android/gms/internal/dt;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/internal/cE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/qu;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/cI;->bXh:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/cI;->bXi:Lcom/google/android/gms/internal/qq;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->Le()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cE;

    iget-object v5, p0, Lcom/google/android/gms/internal/cM;->buh:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/cE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/cI;->bXh:Lcom/google/android/gms/internal/qu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cI;->bXi:Lcom/google/android/gms/internal/qq;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cE;

    iget-object v1, p0, Lcom/google/android/gms/internal/cM;->buh:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cM;->bXt:Lcom/google/android/gms/internal/cH;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cH;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private c(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cM;->bXt:Lcom/google/android/gms/internal/cH;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cH;->a(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V

    return-void
.end method


# virtual methods
.method protected final La()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected final Lb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5e3530

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/B;->f(Lcom/google/android/gms/common/internal/y;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cM;->bSU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cM;->c(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cM;->Se()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cE;

    iget-object v2, p0, Lcom/google/android/gms/internal/cM;->buh:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/cE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "PlayLoggerImpl"

    const-string v2, "Couldn\'t send log event.  Will try caching."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cM;->c(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "PlayLoggerImpl"

    const-string v2, "Service was disconnected.  Will try caching."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cM;->c(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final cj(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cM;->bSU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cM;->bXu:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cM;->Se()V

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

.method protected final synthetic g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cF;->H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cE;

    move-result-object v0

    return-object v0
.end method

.method public final start()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cM;->bSU:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cM;->bXs:Lcom/google/android/gms/internal/cK;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cK;->Sd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cM;->connect()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
