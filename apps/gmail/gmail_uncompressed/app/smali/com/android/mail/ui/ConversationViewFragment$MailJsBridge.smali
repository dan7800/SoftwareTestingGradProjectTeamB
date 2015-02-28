.class Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic aIi:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;B)V
    .locals 0

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    return-void
.end method


# virtual methods
.method public getMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v1

    .line 1405
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1406
    :cond_0
    const-string v0, ""

    .line 1421
    :goto_0
    return-object v0

    .line 1409
    :cond_1
    const/4 v0, -0x1

    .line 1410
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1411
    invoke-virtual {v1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    .line 1412
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {v2}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1413
    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationMessage;->vF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/ui/cg;->cn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1417
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.getMessageBody"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1421
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessageSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v1

    .line 1429
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1430
    :cond_0
    const-string v0, ""

    .line 1451
    :goto_0
    return-object v0

    .line 1433
    :cond_1
    const/4 v0, -0x1

    .line 1434
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1435
    invoke-virtual {v1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    .line 1436
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {v2}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationViewFragment;->cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1438
    if-eqz v0, :cond_3

    .line 1439
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1447
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.getMessageSender"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1451
    const-string v0, ""

    goto :goto_0
.end method

.method public getScrollYPercent()F
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->l(Lcom/android/mail/ui/ConversationViewFragment;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1488
    :goto_0
    return v0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.getScrollYPercent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTempMessageBodies()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-nez v0, :cond_0

    .line 1389
    const-string v0, ""

    .line 1397
    :goto_0
    return-object v0

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->j(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->k(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.getTempMessageBodies"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1397
    const-string v0, ""

    goto :goto_0
.end method

.method public onContentReady()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/aZ;

    const-string v2, "onContentReady"

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mail/ui/aZ;-><init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.onContentReady"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onInlineAttachmentsParsed([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/mail/ui/ba;

    const-string v2, "onInlineAttachmentsParsed"

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ba;-><init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    :goto_0
    return-void

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.onInlineAttachmentsParsed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onMessageTransform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1495
    :try_start_0
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRANSFORM: (%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1496
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->m(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->wX()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_0
    return-void

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.onMessageTransform"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onWebContentGeometryChange([I[I)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1359
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/mail/ui/aY;

    const-string v2, "onWebContentGeometryChange"

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/aY;-><init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[I[I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    :goto_0
    return-void

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in MailJsBridge.onWebContentGeometryChange"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
