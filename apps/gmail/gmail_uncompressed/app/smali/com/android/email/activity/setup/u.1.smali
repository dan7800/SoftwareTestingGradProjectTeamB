.class final Lcom/android/email/activity/setup/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic MP:Landroid/content/Loader;

.field final synthetic MQ:Lcom/android/email/activity/setup/t;

.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/t;Lcom/android/emailcommon/provider/Account;Landroid/content/Loader;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/email/activity/setup/u;->MQ:Lcom/android/email/activity/setup/t;

    iput-object p2, p0, Lcom/android/email/activity/setup/u;->Ms:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/android/email/activity/setup/u;->MP:Landroid/content/Loader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/email/activity/setup/u;->MQ:Lcom/android/email/activity/setup/t;

    iget-object v1, v0, Lcom/android/email/activity/setup/t;->MO:Lcom/android/email/activity/setup/AccountSecurity;

    .line 249
    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSecurity;->hx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/u;->Ms:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/u;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/u;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_3

    .line 254
    :cond_2
    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 255
    const-string v0, "Email/AccountSecurity"

    const-string v1, "could not load account or policy in AccountSecurity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 259
    :cond_3
    iget-boolean v0, v1, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSecurity;->MG:Z

    .line 262
    iget-object v0, p0, Lcom/android/email/activity/setup/u;->MP:Landroid/content/Loader;

    check-cast v0, Lcom/android/email/activity/setup/s;

    .line 263
    iget-object v2, p0, Lcom/android/email/activity/setup/u;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-boolean v3, v0, Lcom/android/email/activity/setup/s;->ML:Z

    iget-boolean v4, v0, Lcom/android/email/activity/setup/s;->MM:Z

    iget-boolean v0, v0, Lcom/android/email/activity/setup/s;->MN:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/email/activity/setup/AccountSecurity;->a(Lcom/android/emailcommon/provider/Account;ZZZ)V

    goto :goto_0
.end method
