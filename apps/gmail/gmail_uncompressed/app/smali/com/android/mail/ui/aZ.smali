.class final Lcom/android/mail/ui/aZ;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1464
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN CVF.onContentReady, f=%s vis=%s t=%sms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v6, v6, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v6}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->g(Lcom/android/mail/ui/ConversationViewFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :goto_0
    return-void

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.onContentReady"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1473
    iget-object v0, p0, Lcom/android/mail/ui/aZ;->aIm:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->g(Lcom/android/mail/ui/ConversationViewFragment;)V

    goto :goto_0
.end method
