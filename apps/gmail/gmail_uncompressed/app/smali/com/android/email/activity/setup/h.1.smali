.class final Lcom/android/email/activity/setup/h;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Ms:Lcom/android/emailcommon/provider/Account;

.field final synthetic Mu:Z

.field final synthetic Mv:Z

.field final synthetic Mw:Z

.field final synthetic Mx:Z

.field final synthetic My:Lcom/android/email/activity/setup/g;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/g;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZZ)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/email/activity/setup/h;->My:Lcom/android/email/activity/setup/g;

    iput-object p3, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    iput-boolean p4, p0, Lcom/android/email/activity/setup/h;->Mu:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/h;->Mv:Z

    iput-boolean p6, p0, Lcom/android/email/activity/setup/h;->Mw:Z

    iput-boolean p7, p0, Lcom/android/email/activity/setup/h;->Mx:Z

    invoke-direct {p0, p2}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private hr()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    iget v3, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/h;->My:Lcom/android/email/activity/setup/g;

    iget-object v0, v0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v3}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/setup/h;->My:Lcom/android/email/activity/setup/g;

    iget-object v0, v0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    iget-boolean v4, p0, Lcom/android/email/activity/setup/h;->Mu:Z

    iget-boolean v5, p0, Lcom/android/email/activity/setup/h;->Mv:Z

    iget-boolean v6, p0, Lcom/android/email/activity/setup/h;->Mw:Z

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/email/service/n;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZ)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 192
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    .line 201
    :goto_0
    if-nez v0, :cond_0

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 214
    :goto_1
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "addAccount was canceled"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 200
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addAccount failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 200
    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addAccount failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/android/mail/i/a;

    iget-object v2, p0, Lcom/android/email/activity/setup/h;->My:Lcom/android/email/activity/setup/g;

    iget-object v2, v2, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v2}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/email/activity/setup/h;->Mx:Z

    invoke-virtual {v0, v2}, Lcom/android/mail/i/a;->aV(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    iget v2, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Lcom/android/emailcommon/provider/Account;->dM:I

    .line 212
    iget-object v0, p0, Lcom/android/email/activity/setup/h;->My:Lcom/android/email/activity/setup/g;

    iget-object v0, v0, Lcom/android/email/activity/setup/g;->Mr:Lcom/android/email/activity/setup/c;

    invoke-static {v0}, Lcom/android/email/activity/setup/c;->a(Lcom/android/email/activity/setup/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/h;->Ms:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/N;->e(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/email/activity/setup/h;->hr()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
