.class final Lcom/google/android/gm/provider/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bfF:Lcom/google/android/gm/provider/GmailProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/GmailProvider;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/google/android/gm/provider/H;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2103
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2105
    iget-object v1, p0, Lcom/google/android/gm/provider/H;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/GmailProvider;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    iget-object v1, p0, Lcom/google/android/gm/provider/H;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/GmailProvider;->a(Lcom/google/android/gm/provider/GmailProvider;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 2109
    iget-object v0, p0, Lcom/google/android/gm/provider/H;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/GmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2111
    :catch_0
    move-exception v0

    .line 2113
    :goto_1
    const-string v1, "Gmail"

    const-string v2, "Unexpected exception trying to get accounts."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2111
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
