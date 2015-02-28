.class final Lcom/android/email/activity/setup/e;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;

.field final synthetic Mt:Lcom/android/email/activity/setup/d;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/d;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/email/activity/setup/e;->Mt:Lcom/android/email/activity/setup/d;

    iput-object p3, p0, Lcom/android/email/activity/setup/e;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, p2}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/email/activity/setup/e;->Ms:Lcom/android/emailcommon/provider/Account;

    iget v1, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    iget-object v0, p0, Lcom/android/email/activity/setup/e;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/e;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/e;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->J(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/e;->Mt:Lcom/android/email/activity/setup/d;

    iget-object v0, v0, Lcom/android/email/activity/setup/d;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/e;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->XL:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/service/n;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/e;->Ms:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method
