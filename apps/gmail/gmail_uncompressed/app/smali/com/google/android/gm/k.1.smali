.class final Lcom/google/android/gm/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/f;


# instance fields
.field final synthetic aWH:Landroid/app/Activity;

.field final synthetic aWO:Lcom/google/android/gm/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AddAccountActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/gm/k;->aWO:Lcom/google/android/gm/AddAccountActivity;

    iput-object p2, p0, Lcom/google/android/gm/k;->aWH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 42
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/k;->aWH:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gm/l;

    invoke-direct {v1, p0}, Lcom/google/android/gm/l;-><init>(Lcom/google/android/gm/k;)V

    invoke-static {v0, v1}, Lcom/google/android/gm/a;->a(Landroid/app/Activity;Lcom/google/android/gm/g;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/k;->aWO:Lcom/google/android/gm/AddAccountActivity;

    invoke-static {v0}, Lcom/google/android/gm/AddAccountActivity;->a(Lcom/google/android/gm/AddAccountActivity;)V

    goto :goto_0
.end method
