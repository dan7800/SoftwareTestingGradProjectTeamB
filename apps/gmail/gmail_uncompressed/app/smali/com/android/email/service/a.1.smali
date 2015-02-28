.class final Lcom/android/email/service/a;
.super Lcom/android/emailcommon/service/q;
.source "SourceFile"


# instance fields
.field final synthetic TP:Lcom/android/email/service/AccountService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AccountService;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lcom/android/email/service/b;

    invoke-direct {v0, p0}, Lcom/android/email/service/b;-><init>(Lcom/android/email/service/a;)V

    invoke-static {v0}, Lcom/android/emailcommon/b/g;->b(Ljava/lang/Runnable;)Lcom/android/emailcommon/b/g;

    .line 66
    iget-object v0, p0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->a(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/a;->T(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(J)I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-static {v0}, Lcom/android/email/service/AccountService;->a(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/u;->v(Landroid/content/Context;)Lcom/android/email/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/u;->j(J)I

    move-result v0

    return v0
.end method

.method public final ku()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    iget-object v2, p0, Lcom/android/email/service/a;->TP:Lcom/android/email/service/AccountService;

    invoke-static {v2}, Lcom/android/email/service/AccountService;->a(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/VendorPolicyLoader;->W(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/VendorPolicyLoader;->kN()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    return-object v0
.end method
