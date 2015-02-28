.class final Lcom/android/email/provider/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0

    .prologue
    .line 6247
    iput-object p1, p0, Lcom/android/email/provider/q;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6250
    iget-object v0, p0, Lcom/android/email/provider/q;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->d(Lcom/android/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 6251
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/email/provider/v;

    .line 6254
    invoke-static {v0}, Lcom/android/email/provider/v;->a(Lcom/android/email/provider/v;)Landroid/accounts/Account;

    move-result-object v2

    .line 6255
    invoke-static {v0}, Lcom/android/email/provider/v;->b(Lcom/android/email/provider/v;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->G(J)Landroid/os/Bundle;

    move-result-object v3

    .line 6256
    invoke-static {v0}, Lcom/android/email/provider/v;->c(Lcom/android/email/provider/v;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6257
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->km()Ljava/lang/String;

    move-result-object v4

    const-string v5, "requestSync getDelayedSyncHandler %s, %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6259
    iget-object v2, p0, Lcom/android/email/provider/q;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {v2}, Lcom/android/email/provider/EmailProvider;->d(Lcom/android/email/provider/EmailProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v8

    .line 6261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
