.class public Lcom/google/android/gm/MailApplication;
.super Lcom/google/android/gm/v;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gm/aa;

    invoke-direct {v0}, Lcom/google/android/gm/aa;-><init>()V

    invoke-static {v0}, Lcom/android/email/o;->a(Lcom/android/email/n;)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gm/v;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-super {p0}, Lcom/google/android/gm/v;->onCreate()V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gm/MailApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0902e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0903db

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0903da

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gm/EmailMigrationService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "eas_protocol"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pop_protocol"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "migration_src_base_authority"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "old_email_package_name"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EmailMigration"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/MailApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "disable_migration_service"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EmailMigration"

    const-string v1, "Migration is ENABLED."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0, v4}, Lcom/google/android/gm/MailApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    :goto_0
    new-instance v0, Lcom/google/android/gm/ab;

    invoke-direct {v0, v6}, Lcom/google/android/gm/ab;-><init>(B)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    const-class v0, Lcom/android/email/activity/setup/aH;

    sput-object v0, Lcom/google/android/gm/MailApplication;->aXF:Ljava/lang/Class;

    .line 49
    new-instance v0, Lcom/google/android/gm/ac;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gm/ac;-><init>(Lcom/google/android/gm/MailApplication;B)V

    invoke-static {v0}, Lcom/android/emailcommon/b/o;->a(Lcom/android/emailcommon/b/p;)V

    .line 50
    return-void

    .line 46
    :cond_0
    const-string v0, "EmailMigration"

    const-string v1, "Migration is DISABLED."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
