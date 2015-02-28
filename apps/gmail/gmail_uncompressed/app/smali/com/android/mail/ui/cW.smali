.class final Lcom/android/mail/ui/cW;
.super Lcom/android/mail/ui/L;
.source "SourceFile"


# instance fields
.field final synthetic aMX:Lcom/android/mail/ui/cV;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/cV;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    .line 58
    invoke-direct {p0, p2}, Lcom/android/mail/ui/L;-><init>(Lcom/android/mail/providers/Account;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-virtual {v0}, Lcom/android/mail/ui/cV;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/mail/ui/cV;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring SCVF.onPageFinished, url=%s fragment=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object v3, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-virtual {v0}, Lcom/android/mail/ui/cV;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-virtual {v0}, Lcom/android/mail/ui/cV;->qE()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-static {v0}, Lcom/android/mail/ui/cV;->a(Lcom/android/mail/ui/cV;)Lcom/android/mail/ui/cT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zb()V

    .line 91
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    iget-object v2, v0, Lcom/android/mail/ui/cV;->aqQ:Ljava/util/Map;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    iget-object v0, v0, Lcom/android/mail/ui/cV;->aqQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 95
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Address;

    .line 97
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-virtual {v0}, Lcom/android/mail/ui/cV;->rf()Lcom/android/mail/ui/ar;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ar;->i(Ljava/util/Set;)V

    .line 101
    iget-object v1, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-virtual {v1}, Lcom/android/mail/ui/cV;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v2, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 64
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/mail/ui/cW;->aMX:Lcom/android/mail/ui/cV;

    invoke-static {v1}, Lcom/android/mail/ui/cV;->a(Lcom/android/mail/ui/cV;)Lcom/android/mail/ui/cT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/cT;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/cW;->a(Landroid/net/Uri;Lcom/android/mail/browse/ConversationMessage;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/L;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
