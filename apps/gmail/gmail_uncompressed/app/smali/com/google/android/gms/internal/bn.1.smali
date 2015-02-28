.class final Lcom/google/android/gms/internal/bn;
.super Lcom/google/android/gms/internal/bq;


# instance fields
.field final synthetic bVL:Landroid/net/Uri;

.field final synthetic bVM:Lcom/google/android/gms/internal/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bm;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bn;->bVM:Lcom/google/android/gms/internal/bm;

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->bVL:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bq;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/google/android/gms/internal/bj;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/android/gms/internal/br;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/common/api/m;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bn;->bVL:Landroid/net/Uri;

    const-string v2, "com.google.android.gms"

    invoke-virtual {p1, v2, v1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v2, Lcom/google/android/gms/internal/bp;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/bp;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/bg;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p2, v2, v1, v0, v3}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bg;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method
