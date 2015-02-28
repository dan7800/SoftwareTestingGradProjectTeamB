.class public final Lcom/google/android/gms/identity/accounts/api/d;
.super Ljava/lang/Object;


# instance fields
.field private final bQY:Lcom/google/android/gms/identity/accounts/api/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/identity/accounts/api/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Callbacks must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/identity/accounts/api/d;->bQY:Lcom/google/android/gms/identity/accounts/api/e;

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Intent must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms.accounts.ACCOUNT_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
