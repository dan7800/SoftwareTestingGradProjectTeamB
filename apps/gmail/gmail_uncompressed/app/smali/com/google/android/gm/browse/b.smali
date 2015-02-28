.class final Lcom/google/android/gm/browse/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic baa:Lcom/google/android/gm/browse/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/browse/a;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/browse/a;B)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/gm/browse/b;-><init>(Lcom/google/android/gm/browse/a;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-virtual {v0}, Lcom/google/android/gm/browse/a;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/google/android/gm/browse/a;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring FMF.onPageFinished, url=%s fragment=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v0}, Lcom/google/android/gm/browse/a;->a(Lcom/google/android/gm/browse/a;)Lcom/android/mail/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/be;->zb()V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-static {}, Lcom/google/android/gm/browse/a;->km()Ljava/lang/String;

    move-result-object v0

    const-string v1, "should override Url loading? %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v3

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-virtual {v0}, Lcom/google/android/gm/browse/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/browse/FullMessageActivity;

    .line 193
    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 198
    if-nez v4, :cond_2

    move v3, v2

    .line 200
    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gm/browse/FullMessageActivity;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    .line 205
    invoke-static {v0, v4, v1}, Lcom/android/mail/utils/ag;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gm/browse/FullMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/gm/ViewProxyActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "accounts.google."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mail.google."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v1}, Lcom/google/android/gm/browse/a;->b(Lcom/google/android/gm/browse/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 228
    const-string v1, "content://com.android.gmail.ui/proxy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gm/browse/b;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v5}, Lcom/google/android/gm/browse/a;->b(Lcom/google/android/gm/browse/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/android/mail/ui/L;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 238
    :goto_1
    const/high16 v4, 0x90000

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gm/browse/FullMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_2
    move v3, v0

    .line 247
    goto :goto_0

    .line 231
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    const-string v4, "com.android.browser.application_id"

    invoke-virtual {v0}, Lcom/google/android/gm/browse/FullMessageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "create_new_tab"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_2
.end method
