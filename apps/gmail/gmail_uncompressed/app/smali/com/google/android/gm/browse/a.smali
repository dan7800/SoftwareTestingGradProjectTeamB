.class public final Lcom/google/android/gm/browse/a;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Tz:Ljava/lang/String;

.field private YQ:Ljava/lang/String;

.field private aHN:Lcom/android/mail/ui/be;

.field private aKF:Landroid/webkit/WebView;

.field private aZY:Z

.field private final aZZ:Lcom/google/android/gm/browse/c;

.field private azJ:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/browse/a;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lcom/google/android/gm/browse/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/browse/c;-><init>(Lcom/google/android/gm/browse/a;B)V

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->aZZ:Lcom/google/android/gm/browse/c;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->mHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/browse/a;)Lcom/android/mail/ui/be;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aHN:Lcom/android/mail/ui/be;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/browse/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->Tz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/browse/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->azJ:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/browse/a;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gm/browse/a;

    invoke-direct {v0}, Lcom/google/android/gm/browse/a;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    const-string v2, "permalink"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "account-name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "server-message-id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gm/browse/a;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/browse/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->YQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/gm/browse/a;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/gm/browse/a;->aZY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gm/browse/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v1, "permalink"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/browse/a;->azJ:Ljava/lang/String;

    .line 102
    const-string v1, "account-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/browse/a;->Tz:Ljava/lang/String;

    .line 103
    const-string v1, "server-message-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->YQ:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gm/browse/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 108
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 113
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 114
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gm/browse/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 117
    new-instance v1, Lcom/google/android/gm/browse/b;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gm/browse/b;-><init>(Lcom/google/android/gm/browse/a;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->azJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/be;->bu(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/browse/a;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/browse/a;->aZZ:Lcom/google/android/gm/browse/c;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/browse/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/g;

    invoke-virtual {v0}, Landroid/support/v7/app/g;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->cB()V

    .line 125
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 85
    :cond_0
    const v0, 0x7f040082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x7f0d0109

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/browse/a;->aZY:Z

    .line 89
    new-instance v0, Lcom/android/mail/ui/be;

    iget-object v2, p0, Lcom/google/android/gm/browse/a;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/be;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->aHN:Lcom/android/mail/ui/be;

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/be;->az(Landroid/view/View;)V

    .line 93
    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    .line 164
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 165
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/browse/a;->aZY:Z

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 153
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 134
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gm/browse/a;->aKF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    return-void
.end method
