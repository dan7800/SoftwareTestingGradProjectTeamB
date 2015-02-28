.class public final Lcom/android/emailcommon/b/b;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# static fields
.field public static final abe:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "eas://com.android.emailcommon/certrequest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b/b;->abe:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final alias(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/b/b;->setResult(I)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/android/emailcommon/b/b;->finish()V

    .line 70
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v1, "CertificateRequestor.alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/b/b;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/emailcommon/b/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "CertificateRequestor.host"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    const-string v1, "CertificateRequestor.port"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 48
    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    .line 49
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method
