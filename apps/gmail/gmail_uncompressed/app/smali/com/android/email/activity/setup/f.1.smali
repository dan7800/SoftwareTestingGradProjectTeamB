.class final Lcom/android/email/activity/setup/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;

.field final synthetic Mt:Lcom/android/email/activity/setup/d;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/d;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/email/activity/setup/f;->Mt:Lcom/android/email/activity/setup/d;

    iput-object p2, p0, Lcom/android/email/activity/setup/f;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/email/activity/setup/f;->Ms:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/f;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/f;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/j;

    .line 322
    iget-object v1, p0, Lcom/android/email/activity/setup/f;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/j;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 323
    invoke-interface {v0}, Lcom/android/email/activity/setup/j;->hs()V

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/setup/f;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/f;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v0, v2, v3}, Lcom/android/email/service/n;->i(Landroid/content/Context;J)Lcom/android/emailcommon/service/a;

    move-result-object v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/f;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/service/a;->B(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method
