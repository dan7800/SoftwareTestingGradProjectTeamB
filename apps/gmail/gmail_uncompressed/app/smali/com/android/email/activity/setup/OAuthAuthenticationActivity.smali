.class public Lcom/android/email/activity/setup/OAuthAuthenticationActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/mail/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private PK:Landroid/webkit/WebView;

.field private PL:Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

.field private PN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PL:Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 102
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 105
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PK:Landroid/webkit/WebView;

    .line 106
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PK:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/email/activity/setup/aV;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/setup/aV;-><init>(Lcom/android/email/activity/setup/OAuthAuthenticationActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PK:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PK:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->setContentView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    const-string v1, "email_address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "provider"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/N;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PL:Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    .line 114
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PL:Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    iget-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->authEndpoint:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "response_type"

    iget-object v4, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->responseType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "client_id"

    iget-object v4, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "redirect_uri"

    iget-object v4, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->redirectUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "scope"

    iget-object v4, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->scope:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "state"

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->state:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "login_hint"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PK:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_1

    .line 118
    const-string v0, "authentication_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v1, "provider_id"

    iget-object v2, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PL:Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    iget-object v2, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "authentication_code"

    iget-object v2, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 130
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    return-void

    .line 120
    :cond_1
    iput-object v6, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/mail/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 174
    const-string v0, "provider_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v0, "authentication_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v0, Lcom/android/email/activity/setup/aW;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/setup/aW;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    check-cast p2, Lcom/android/email/mail/a/d;

    if-nez p2, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    const v0, 0x7f090218

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "null oauth result"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "accessToken"

    iget-object v2, p2, Lcom/android/email/mail/a/d;->Qi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "refreshToken"

    iget-object v2, p2, Lcom/android/email/mail/a/d;->Qj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "expiresIn"

    iget v2, p2, Lcom/android/email/mail/a/d;->Qn:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/mail/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "authentication_code"

    iget-object v1, p0, Lcom/android/email/activity/setup/OAuthAuthenticationActivity;->PN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
