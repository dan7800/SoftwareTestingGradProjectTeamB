.class final Lcom/android/mail/browse/an;
.super Lcom/android/mail/ui/L;
.source "SourceFile"


# instance fields
.field final synthetic arI:Lcom/android/mail/browse/am;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/am;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/L;-><init>(Lcom/android/mail/providers/Account;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    invoke-virtual {v0}, Lcom/android/mail/browse/am;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/android/mail/browse/am;->gK()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring EMLVF.onPageFinished, url=%s fragment=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object v3, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    invoke-static {v0}, Lcom/android/mail/browse/am;->a(Lcom/android/mail/browse/am;)Lcom/android/mail/ui/cT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zb()V

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    iget-object v2, v0, Lcom/android/mail/browse/am;->aqQ:Ljava/util/Map;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    iget-object v0, v0, Lcom/android/mail/browse/am;->aqQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Address;

    .line 133
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    invoke-virtual {v0}, Lcom/android/mail/browse/am;->rf()Lcom/android/mail/ui/ar;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ar;->i(Ljava/util/Set;)V

    .line 137
    iget-object v1, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    invoke-virtual {v1}, Lcom/android/mail/browse/am;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v2, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 106
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/mail/browse/an;->arI:Lcom/android/mail/browse/am;

    invoke-static {v1}, Lcom/android/mail/browse/am;->a(Lcom/android/mail/browse/am;)Lcom/android/mail/ui/cT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/cT;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/browse/an;->a(Landroid/net/Uri;Lcom/android/mail/browse/ConversationMessage;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/L;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
