.class public abstract Lcom/google/android/gms/common/api/l;
.super Lcom/google/android/gms/common/api/j;

# interfaces
.implements Lcom/google/android/gms/common/api/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/t;",
        "A::",
        "Lcom/google/android/gms/common/api/f;",
        ">",
        "Lcom/google/android/gms/common/api/j",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/E",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final bCb:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;"
        }
    .end annotation
.end field

.field private bCn:Lcom/google/android/gms/common/api/C;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/j;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->bCb:Lcom/google/android/gms/common/api/h;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/l;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final Kq()Lcom/google/android/gms/common/api/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->bCb:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method protected final Kt()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/j;->Kt()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->bCn:Lcom/google/android/gms/common/api/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->bCn:Lcom/google/android/gms/common/api/C;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/C;->b(Lcom/google/android/gms/common/api/E;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->bCn:Lcom/google/android/gms/common/api/C;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/C;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/l;->bCn:Lcom/google/android/gms/common/api/C;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->bCe:Lcom/google/android/gms/common/api/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/f;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/k;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/l;->b(Lcom/google/android/gms/common/api/f;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;->a(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/l;->c(Lcom/google/android/gms/common/api/t;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method
