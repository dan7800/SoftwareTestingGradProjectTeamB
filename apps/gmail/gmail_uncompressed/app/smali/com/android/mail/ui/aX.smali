.class public Lcom/android/mail/ui/aX;
.super Lcom/android/mail/ui/L;
.source "SourceFile"


# instance fields
.field final synthetic aIi:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    .line 1289
    invoke-direct {p0, p2}, Lcom/android/mail/ui/L;-><init>(Lcom/android/mail/providers/Account;)V

    .line 1290
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1314
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-nez v0, :cond_1

    .line 1315
    :cond_0
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring CVF.onPageFinished, url=%s fragment=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    iget-object v3, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1341
    :goto_0
    return-void

    .line 1320
    :cond_1
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN CVF.onPageFinished, url=%s fragment=%s wv=%s t=%sms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    iget-object v3, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v3, v2, v8

    aput-object p1, v2, v4

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v6}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1324
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->e(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 1326
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->f(Lcom/android/mail/ui/ConversationViewFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1327
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->g(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 1330
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1332
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v2, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    monitor-enter v2

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1334
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Address;

    .line 1336
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1338
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->rf()Lcom/android/mail/ui/ar;

    move-result-object v0

    .line 1339
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ar;->i(Ljava/util/Set;)V

    .line 1340
    iget-object v1, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v8, v2, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/ConversationViewFragment;->bm(Ljava/lang/String;)Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_0

    .line 1298
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1299
    invoke-virtual {p0, v1, v0}, Lcom/android/mail/ui/aX;->a(Landroid/net/Uri;Lcom/android/mail/browse/ConversationMessage;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_0

    .line 1306
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/L;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/mail/ui/aX;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/L;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
