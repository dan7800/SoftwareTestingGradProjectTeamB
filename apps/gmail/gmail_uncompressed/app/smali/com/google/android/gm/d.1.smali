.class final Lcom/google/android/gm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aWF:Lcom/google/android/gm/g;

.field final synthetic aWG:Landroid/app/PendingIntent;

.field final synthetic aWH:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/g;Landroid/app/PendingIntent;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    iput-object p2, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gm/d;->aWH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v0, v1}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 325
    :goto_0
    return-void

    .line 295
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 296
    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string v3, "accountType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 301
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    const-string v1, "gmail-ls"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    .line 305
    invoke-static {}, Lcom/google/android/gm/a;->oA()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSyncable=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    if-eqz v1, :cond_2

    .line 310
    const-string v1, "gmail-ls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/d;->aWH:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ca(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :goto_1
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v1, v0}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v1, v0}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v1, :cond_5

    .line 322
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v1, v0}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_0

    .line 321
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v1, v0}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    goto/16 :goto_0

    .line 321
    :catchall_0
    move-exception v0

    :goto_5
    iget-object v2, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    if-eqz v2, :cond_7

    .line 322
    iget-object v2, p0, Lcom/google/android/gm/d;->aWF:Lcom/google/android/gm/g;

    invoke-interface {v2, v1}, Lcom/google/android/gm/g;->b(Landroid/accounts/Account;)V

    .line 324
    :cond_7
    iget-object v1, p0, Lcom/google/android/gm/d;->aWG:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    throw v0

    .line 321
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
