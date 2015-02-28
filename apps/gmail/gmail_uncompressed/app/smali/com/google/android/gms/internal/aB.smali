.class public final Lcom/google/android/gms/internal/aB;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/bc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final La()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.mdm.services.START"

    return-object v0
.end method

.method protected final Lb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.mdm.internal.INetworkQualityService"

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aB;->Ld()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aB;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aB;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/bc;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Herrevad"

    const-string v1, "NetworkQualityClient not connected soon after checkConnected.  Discarding network quality data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    .locals 3

    const v0, 0x5e3530

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aB;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/google/android/gms/common/internal/B;->k(Lcom/google/android/gms/common/internal/y;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/be;->D(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bc;

    move-result-object v0

    return-object v0
.end method
