.class public Lcom/google/android/gm/GviewActivity;
.super Lcom/google/android/gm/y;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/y;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private Tz:Ljava/lang/String;

.field private aKF:Landroid/webkit/WebView;

.field private aXT:Ljava/lang/String;

.field private aXU:Landroid/app/DialogFragment;

.field private aXV:Landroid/app/DialogFragment;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gm/y;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/GviewActivity;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/gm/GviewActivity;->aXV:Landroid/app/DialogFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/GviewActivity;)Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXV:Landroid/app/DialogFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/google/android/gm/y;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f040085

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0d01bd

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->aKF:Landroid/webkit/WebView;

    .line 78
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 80
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 81
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 83
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aKF:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gm/D;

    invoke-direct {v1, p0}, Lcom/google/android/gm/D;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 97
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/GviewActivity;->Tz:Ljava/lang/String;

    .line 98
    const-string v1, "serverMessageId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "attId"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "mimeType"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gmail_gview_url"

    const-string v5, "https://docs.google.com/viewer?embedded=true&a=v&pid=gmail&user=%s&thid=%s&attid=%s&mt=%s"

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gm/GviewActivity;->Tz:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXT:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 111
    const-string v0, "progress-dialog"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    .line 113
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/google/android/gm/J;->CO()Lcom/google/android/gm/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    .line 115
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->aXU:Landroid/app/DialogFragment;

    const-string v2, "progress-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v7, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 119
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    new-instance v0, Lcom/google/android/gm/I;

    iget-object v1, p0, Lcom/google/android/gm/GviewActivity;->Tz:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/I;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/GviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gm/E;

    invoke-direct {v3, p0}, Lcom/google/android/gm/E;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/GviewActivity;->aKF:Landroid/webkit/WebView;

    const-string v3, "https://www.google.com/accounts/TokenAuth?service=writely&source=gmail"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "auth"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    const-string v6, "continue"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/gm/GviewActivity;->aXT:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/bG;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "Gview"

    const-string v4, "Unexpected NullPointer Exception caught. Is mUrl null? %b"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gm/GviewActivity;->aXT:Ljava/lang/String;

    if-eqz v6, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gm/F;

    invoke-direct {v1, p0}, Lcom/google/android/gm/F;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method
