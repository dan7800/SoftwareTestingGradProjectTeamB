.class public final Lcom/google/android/gms/internal/y;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/e;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/d;Lcom/google/android/gms/common/e;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final La()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.icing.INDEX_SERVICE"

    return-object v0
.end method

.method protected final Lb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appdatasearch.internal.IAppDataSearch"

    return-object v0
.end method

.method public final QM()Lcom/google/android/gms/internal/z;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/y;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/z;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected final a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    .locals 2

    const v0, 0x5e3530

    invoke-virtual {p0}, Lcom/google/android/gms/internal/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/B;->a(Lcom/google/android/gms/common/internal/y;ILjava/lang/String;)V

    return-void
.end method

.method protected final synthetic g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/A;->z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    return-object v0
.end method
