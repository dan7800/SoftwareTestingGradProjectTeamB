.class public Lcom/android/email/mail/store/ServiceStore;
.super Lcom/android/email/mail/b;
.source "SourceFile"


# instance fields
.field protected final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method private constructor <init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/email/mail/b;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 44
    return-void
.end method

.method private jr()Lcom/android/emailcommon/service/r;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/mail/store/ServiceStore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/service/n;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/a;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/email/mail/store/ServiceStore;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ServiceStore;-><init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ServiceStore;->jr()Lcom/android/emailcommon/service/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/emailcommon/service/r;->q(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iL()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ServiceStore;->jr()Lcom/android/emailcommon/service/r;

    move-result-object v2

    .line 67
    instance-of v1, v2, Lcom/android/emailcommon/service/a;

    if-eqz v1, :cond_0

    .line 68
    move-object v0, v2

    check-cast v0, Lcom/android/emailcommon/service/a;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/service/a;->lZ()Lcom/android/emailcommon/service/H;

    .line 70
    :cond_0
    new-instance v1, Lcom/android/emailcommon/service/HostAuthCompat;

    iget-object v3, p0, Lcom/android/email/mail/store/ServiceStore;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v1, v3}, Lcom/android/emailcommon/service/HostAuthCompat;-><init>(Lcom/android/emailcommon/provider/HostAuth;)V

    .line 71
    invoke-interface {v2, v1}, Lcom/android/emailcommon/service/r;->a(Lcom/android/emailcommon/service/HostAuthCompat;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Call to validate generated an exception"

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
