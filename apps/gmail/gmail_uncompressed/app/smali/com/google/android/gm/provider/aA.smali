.class final Lcom/google/android/gm/provider/aA;
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
.field final synthetic PG:Landroid/content/Context;

.field final synthetic bjP:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/google/android/gm/provider/aA;->PG:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gm/provider/aA;->bjP:Ljava/util/Set;

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
    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aA;->PG:Landroid/content/Context;

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->b(Landroid/content/Context;[Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    .line 1408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine;

    .line 1409
    iget-object v2, p0, Lcom/google/android/gm/provider/aA;->bjP:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1426
    :goto_1
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception trying to get accounts."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1428
    :cond_0
    return-void

    .line 1415
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aA;->bjP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1416
    iget-object v2, p0, Lcom/google/android/gm/provider/aA;->PG:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/MailEngine;->V(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    .line 1419
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1420
    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailEngine;->be(Ljava/lang/String;)V

    .line 1422
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1424
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
