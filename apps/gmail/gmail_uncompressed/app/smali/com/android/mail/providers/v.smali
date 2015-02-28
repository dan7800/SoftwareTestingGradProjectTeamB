.class final Lcom/android/mail/providers/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Nc:Lcom/android/mail/providers/Account;

.field final aBb:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p1, p0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    .line 536
    iput-object p2, p0, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    .line 537
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const-string v0, "acct"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Account;->bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    .line 541
    iget-object v0, p0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountCacheEntry de-serializing failed. Account object could not be created from the JSONObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    sget-object v1, Lcom/android/mail/providers/Settings;->aBM:Lcom/android/mail/providers/Settings;

    if-ne v0, v1, :cond_1

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountCacheEntry de-serializing failed. Settings could not be created from the JSONObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    const-string v0, "queryUri"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_2

    .line 552
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_2
    iput-object v2, p0, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public final vo()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 560
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "acct"

    iget-object v2, p0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "queryUri"

    iget-object v2, p0, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
