.class public abstract Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;
.implements Lcom/google/android/gms/common/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f;",
        "Lcom/google/android/gms/common/internal/p;"
    }
.end annotation


# static fields
.field public static final bEY:[Ljava/lang/String;


# instance fields
.field private final bCK:Lcom/google/android/gms/common/internal/n;

.field private final bCw:Landroid/os/Looper;

.field private bES:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final bET:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/f",
            "<TT;>.com/google/android/gms/common/internal/h<*>;>;"
        }
    .end annotation
.end field

.field private bEU:Lcom/google/android/gms/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/f",
            "<TT;>.com/google/android/gms/common/internal/k;"
        }
    .end annotation
.end field

.field private volatile bEV:I

.field private final bEW:[Ljava/lang/String;

.field bEX:Z

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/f;->bEY:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->bEV:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->bEX:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bCw:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/p;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bCK:Lcom/google/android/gms/common/internal/n;

    new-instance v0, Lcom/google/android/gms/common/internal/g;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/f;->bEW:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/p;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/p;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/q;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->bCK:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/e;[Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/i;

    invoke-direct {v3, p2}, Lcom/google/android/gms/common/internal/i;-><init>(Lcom/google/android/gms/common/d;)V

    new-instance v4, Lcom/google/android/gms/common/internal/l;

    invoke-direct {v4, p3}, Lcom/google/android/gms/common/internal/l;-><init>(Lcom/google/android/gms/common/e;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/f;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->bES:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bCK:Lcom/google/android/gms/common/internal/n;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/f;->ey(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/f;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/f;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bES:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ey(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/f;->bEV:I

    iput p1, p0, Lcom/google/android/gms/common/internal/f;->bEV:I

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/k;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    return-object v0
.end method


# virtual methods
.method public final KE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->bEX:Z

    return v0
.end method

.method protected abstract La()Ljava/lang/String;
.end method

.method protected abstract Lb()Ljava/lang/String;
.end method

.method public final Lc()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEW:[Ljava/lang/String;

    return-object v0
.end method

.method protected final Ld()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final Le()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bES:Landroid/os/IInterface;

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/internal/m;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/m;-><init>(Lcom/google/android/gms/common/internal/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
.end method

.method public final a(Lcom/google/android/gms/common/internal/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/f",
            "<TT;>.com/google/android/gms/common/internal/h<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final connect()V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/f;->bEX:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/f;->ey(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/internal/f;->ey(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_2

    const-string v0, "GmsClient"

    const-string v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bES:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->ci(Landroid/content/Context;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->La()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/k;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/k;-><init>(Lcom/google/android/gms/common/internal/f;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->ci(Landroid/content/Context;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->La()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/String;Lcom/google/android/gms/common/internal/k;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to connect to service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->La()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->bEX:Z

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/h;->Lh()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bET:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/f;->ey(I)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/f;->bES:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->ci(Landroid/content/Context;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->La()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q;->b(Ljava/lang/String;Lcom/google/android/gms/common/internal/k;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/f;->bEU:Lcom/google/android/gms/common/internal/k;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected abstract g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->bCw:Landroid/os/Looper;

    return-object v0
.end method

.method protected final h(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/C;->k(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/B;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/internal/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/internal/f;->bEV:I

    const/4 v1, 0x3

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

    iget v0, p0, Lcom/google/android/gms/common/internal/f;->bEV:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
