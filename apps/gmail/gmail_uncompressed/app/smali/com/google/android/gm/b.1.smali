.class final Lcom/google/android/gm/b;
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
.field final synthetic aWD:Lcom/google/android/gm/f;

.field final synthetic aWE:Lcom/google/android/gm/a;


# direct methods
.method constructor <init>(Lcom/google/android/gm/a;Lcom/google/android/gm/f;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gm/b;->aWE:Lcom/google/android/gm/a;

    iput-object p2, p0, Lcom/google/android/gm/b;->aWD:Lcom/google/android/gm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 140
    const/4 v1, 0x0

    .line 142
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/b;->aWD:Lcom/google/android/gm/f;

    invoke-interface {v1, v0}, Lcom/google/android/gm/f;->a([Landroid/accounts/Account;)V

    .line 154
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v2, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v3, "Unexpected exception trying to get accounts."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    sget-object v2, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v3, "Unexpected exception trying to get accounts."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    sget-object v2, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v3, "Unexpected exception trying to get accounts."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0
.end method
