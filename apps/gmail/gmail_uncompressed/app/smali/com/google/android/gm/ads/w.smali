.class final Lcom/google/android/gm/ads/w;
.super Lcom/android/mail/ui/aX;
.source "SourceFile"


# instance fields
.field final synthetic aZX:Lcom/google/android/gm/ads/s;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ads/s;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/aX;-><init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/providers/Account;)V

    .line 248
    return-void
.end method

.method private dE(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gm/ads/w;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 257
    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 263
    iget-object v4, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v4}, Lcom/google/android/gm/ads/s;->g(Lcom/google/android/gm/ads/s;)Lcom/android/mail/ui/as;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v5}, Lcom/google/android/gm/ads/s;->h(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/android/mail/utils/ag;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v4}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gm/provider/Advertisement;->E(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v5, "create_new_tab"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const/high16 v5, 0x80000

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 279
    :goto_1
    if-eqz v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v2}, Lcom/google/android/gm/ads/s;->i(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/ads/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gm/ads/u;->setUri(Landroid/net/Uri;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->i(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/ads/u;

    move-result-object v1

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gm/ads/w;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v0}, Lcom/google/android/gm/ads/s;->f(Lcom/google/android/gm/ads/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gm/ads/w;->dE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
