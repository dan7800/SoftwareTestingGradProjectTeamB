.class final Lcom/android/email/activity/setup/aV;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;B)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/aV;-><init>(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 67
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move-object v0, p2

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-static {v3}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->a(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->redirectUri:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object v2, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->finish()V

    :goto_1
    move v0, v1

    .line 93
    :goto_2
    return v0

    .line 70
    :cond_0
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    const-string v3, "code"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->a(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v2, "provider_id"

    iget-object v3, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-static {v3}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->a(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "authentication_code"

    iget-object v3, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-static {v3}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->b(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/aV;->PO:Lcom/android/email/activity/setup/OAuthAuthenticationActivity;

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 93
    goto :goto_2
.end method
