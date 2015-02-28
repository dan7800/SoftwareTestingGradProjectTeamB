.class final Lcom/google/android/gms/internal/bp;
.super Lcom/google/android/gms/internal/bh;


# instance fields
.field final synthetic bVL:Landroid/net/Uri;

.field final synthetic bVN:Landroid/content/Context;

.field final synthetic bVO:Lcom/google/android/gms/internal/bg;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->bVN:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bp;->bVL:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/bp;->bVO:Lcom/google/android/gms/internal/bg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->bVN:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->bVL:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->bVO:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bg;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
