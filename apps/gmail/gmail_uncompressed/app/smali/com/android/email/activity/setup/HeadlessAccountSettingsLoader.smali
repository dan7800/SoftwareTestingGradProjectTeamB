.class public Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    return-void
.end method

.method public static m(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACCOUNT_SETTINGS/outgoing/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 27
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/b/k;->a(Landroid/net/Uri$Builder;J)V

    .line 28
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/emailcommon/b/k;->b(Landroid/content/Intent;)J

    move-result-wide v2

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Lcom/android/email/activity/setup/aO;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "incoming"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, p0, v4, v0, v6}, Lcom/android/email/activity/setup/aO;-><init>(Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;Landroid/content/Context;ZB)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/aO;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :cond_0
    return-void
.end method
