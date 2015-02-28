.class final Lcom/google/android/gm/welcome/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<",
        "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bsD:Lcom/google/android/gm/welcome/WelcomeTourState;


# direct methods
.method constructor <init>(Lcom/google/android/gm/welcome/WelcomeTourState;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gm/welcome/s;->bsD:Lcom/google/android/gm/welcome/WelcomeTourState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;)Z
    .locals 2

    .prologue
    .line 48
    const-string v0, "com.google"

    invoke-virtual {p1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/welcome/s;->apply(Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;)Z

    move-result v0

    return v0
.end method
