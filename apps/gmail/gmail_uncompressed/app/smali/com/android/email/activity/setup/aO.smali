.class final Lcom/android/email/activity/setup/aO;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final Pp:Z

.field final synthetic Pq:Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/email/activity/setup/aO;->Pq:Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/email/activity/setup/aO;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean p3, p0, Lcom/android/email/activity/setup/aO;->Pp:Z

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;Landroid/content/Context;ZB)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/aO;-><init>(Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Long;

    iget-object v0, p0, Lcom/android/email/activity/setup/aO;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 49
    check-cast p1, Lcom/android/emailcommon/provider/Account;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/aO;->Pp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/aO;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->c(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/aO;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/aO;->Pq:Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/HeadlessAccountSettingsLoader;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/aO;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountServerSettingsActivity;->d(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
