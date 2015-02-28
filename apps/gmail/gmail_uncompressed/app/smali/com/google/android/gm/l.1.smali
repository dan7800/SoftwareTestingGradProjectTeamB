.class final Lcom/google/android/gm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/g;


# instance fields
.field final synthetic aWP:Lcom/google/android/gm/k;


# direct methods
.method constructor <init>(Lcom/google/android/gm/k;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gm/l;->aWP:Lcom/google/android/gm/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/l;->aWP:Lcom/google/android/gm/k;

    iget-object v0, v0, Lcom/google/android/gm/k;->aWO:Lcom/google/android/gm/AddAccountActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/accounts/Account;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0}, Lcom/google/android/gm/AddAccountActivity;->a(Lcom/google/android/gm/AddAccountActivity;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/l;->aWP:Lcom/google/android/gm/k;

    iget-object v0, v0, Lcom/google/android/gm/k;->aWO:Lcom/google/android/gm/AddAccountActivity;

    invoke-static {v0}, Lcom/google/android/gm/AddAccountActivity;->b(Lcom/google/android/gm/AddAccountActivity;)V

    goto :goto_0
.end method
