.class final Lcom/android/mail/compose/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/compose/v;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 3318
    iput-object p1, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/compose/w;Lcom/android/mail/providers/Message;)V
    .locals 6

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/compose/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3361
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    iget-wide v2, p2, Lcom/android/mail/providers/Message;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;J)J

    .line 3362
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0, p2}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;Lcom/android/mail/providers/Message;)Lcom/android/mail/providers/Message;

    .line 3363
    invoke-static {}, Lcom/android/mail/compose/g;->sH()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3364
    invoke-static {}, Lcom/android/mail/compose/g;->sH()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lcom/android/mail/compose/w;->awc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v3}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/compose/g;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3367
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {}, Lcom/android/mail/compose/g;->sI()V

    .line 3368
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3369
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3370
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/mail/compose/v;->a(Lcom/android/mail/compose/w;Lcom/android/mail/providers/Message;)V

    .line 3372
    :cond_1
    return-void

    .line 3368
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/android/mail/compose/w;Z)V
    .locals 5

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    iget-object v0, v0, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 3385
    invoke-static {}, Lcom/android/mail/providers/t;->vi()Lcom/android/mail/providers/t;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    iget-object v1, v1, Lcom/android/mail/compose/g;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/t;->bV(Ljava/lang/String;)V

    .line 3387
    :cond_0
    if-eqz p2, :cond_3

    .line 3389
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->f(Lcom/android/mail/compose/g;)V

    .line 3398
    :goto_0
    sget-object v1, Lcom/android/mail/compose/g;->avo:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 3399
    :try_start_0
    sget-object v0, Lcom/android/mail/compose/g;->avo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3401
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    const-class v4, Lcom/android/mail/compose/EmptyService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/android/mail/compose/g;->stopService(Landroid/content/Intent;)Z

    .line 3403
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3404
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3405
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/mail/compose/v;->a(Lcom/android/mail/compose/w;Z)V

    .line 3407
    :cond_2
    return-void

    .line 3394
    :cond_3
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    const v1, 0x7f0900f8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final sL()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3321
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    const-class v1, Lcom/android/mail/compose/EmptyService;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3325
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3328
    new-instance v3, Landroid/content/ClipDescription;

    const-string v0, "attachment_uris"

    new-array v1, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "text/uri-list"

    aput-object v5, v1, v4

    invoke-direct {v3, v0, v1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 3330
    const/4 v0, 0x0

    .line 3331
    iget-object v1, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v1}, Lcom/android/mail/compose/g;->c(Lcom/android/mail/compose/g;)Lcom/android/mail/compose/AttachmentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/compose/AttachmentsView;->sc()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 3332
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3333
    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-direct {v5, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 3334
    if-nez v1, :cond_1

    .line 3335
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, v3, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    move-object v1, v0

    goto :goto_0

    .line 3337
    :cond_1
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_0

    .line 3341
    :cond_2
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 3342
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3345
    :cond_3
    sget-object v1, Lcom/android/mail/compose/g;->avo:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 3346
    :try_start_0
    sget-object v0, Lcom/android/mail/compose/g;->avo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 3349
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-virtual {v0, v2}, Lcom/android/mail/compose/g;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3351
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3352
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3353
    invoke-static {}, Lcom/android/mail/compose/g;->sG()Lcom/android/mail/compose/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/compose/v;->sL()V

    .line 3355
    :cond_5
    return-void

    .line 3351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final sM()J
    .locals 4

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->d(Lcom/android/mail/compose/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3377
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/compose/l;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->e(Lcom/android/mail/compose/g;)J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 3378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
