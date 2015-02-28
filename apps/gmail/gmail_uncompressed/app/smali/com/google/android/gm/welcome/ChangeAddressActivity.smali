.class public Lcom/google/android/gm/welcome/ChangeAddressActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private Tz:Ljava/lang/String;

.field private aKF:Landroid/webkit/WebView;

.field private brV:Ljava/lang/String;

.field private brW:Ljava/lang/String;

.field private brX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private brY:Ljava/lang/String;

.field private brZ:Ljava/util/regex/Matcher;

.field private bsa:Landroid/view/View;

.field private bsb:Landroid/webkit/WebViewClient;

.field private bsc:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brX:Ljava/util/Set;

    .line 186
    new-instance v0, Lcom/google/android/gm/welcome/d;

    invoke-direct {v0, p0}, Lcom/google/android/gm/welcome/d;-><init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsb:Landroid/webkit/WebViewClient;

    .line 259
    new-instance v0, Lcom/google/android/gm/welcome/e;

    invoke-direct {v0, p0}, Lcom/google/android/gm/welcome/e;-><init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsc:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 308
    return-void
.end method

.method private IP()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 253
    const-string v2, "account-address"

    iget-object v3, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->Tz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "changed-address"

    iget-object v3, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 257
    return-void

    .line 251
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static J(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic K(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->J(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/ChangeAddressActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brZ:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brZ:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gm/welcome/ChangeAddressActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gm/welcome/ChangeAddressActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->IP()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brX:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsa:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->Tz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/welcome/ChangeAddressActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->IP()V

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 248
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0, v4}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->requestWindowFeature(I)Z

    .line 124
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->setContentView(I)V

    .line 126
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsa:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account-address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->Tz:Ljava/lang/String;

    .line 129
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    const-string v1, "gmail_account_change_email"

    const-string v2, "https://security.google.com/settings/security/username"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brV:Ljava/lang/String;

    .line 137
    const-string v1, "gmail_account_change_email_finished"

    const-string v2, "https://www.google.com/settings/personalinfo"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brW:Ljava/lang/String;

    .line 142
    const-string v1, "gmail_account_central_setcookie_regexp"

    const-string v2, "https://(accounts|security)\\.google\\.[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}/.*"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brZ:Ljava/util/regex/Matcher;

    .line 150
    iget-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brX:Ljava/util/Set;

    const-string v2, "gmail_account_central_login"

    const-string v3, "https://accounts.google.com/ServiceLogin"

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brX:Ljava/util/Set;

    const-string v2, "gmail_account_central_checkcookie"

    const-string v3, "https://accounts.google.com/CheckCookie"

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brV:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->brX:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->J(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    invoke-static {v0, p0}, Lcom/android/mail/utils/ag;->a(Landroid/webkit/WebView;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsb:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->aKF:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gm/welcome/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/welcome/f;-><init>(Lcom/google/android/gm/welcome/ChangeAddressActivity;Lcom/google/android/gm/welcome/d;)V

    const-string v2, "AndroidGmail"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/ChangeAddressActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gm/welcome/ChangeAddressActivity;->bsc:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 161
    return-void
.end method
