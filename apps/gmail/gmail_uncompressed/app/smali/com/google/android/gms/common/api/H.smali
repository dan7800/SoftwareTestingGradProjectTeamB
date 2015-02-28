.class final Lcom/google/android/gms/common/api/H;
.super Landroid/support/v4/content/j;

# interfaces
.implements Lcom/google/android/gms/common/api/p;
.implements Lcom/google/android/gms/common/api/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/j",
        "<",
        "Lcom/google/android/gms/common/a;",
        ">;",
        "Lcom/google/android/gms/common/api/p;",
        "Lcom/google/android/gms/common/api/q;"
    }
.end annotation


# instance fields
.field public final bDl:Lcom/google/android/gms/common/api/n;

.field private bDm:Z

.field private bDn:Lcom/google/android/gms/common/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/content/j;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    return-void
.end method

.method private b(Lcom/google/android/gms/common/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/H;->bDn:Lcom/google/android/gms/common/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/H;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/H;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/H;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final KG()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/H;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/H;->isAbandoned()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/H;->b(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method public final dz(I)V
    .locals 0

    return-void
.end method

.method protected final onReset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/H;->bDn:Lcom/google/android/gms/common/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/p;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/q;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/j;->onStartLoading()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/p;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/q;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDn:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDn:Lcom/google/android/gms/common/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/H;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    :cond_1
    return-void
.end method

.method protected final onStopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/H;->bDl:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/H;->bDm:Z

    sget-object v0, Lcom/google/android/gms/common/a;->bBQ:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/H;->b(Lcom/google/android/gms/common/a;)V

    return-void
.end method
