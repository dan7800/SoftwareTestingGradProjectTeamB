.class final Lcom/android/mail/browse/F;
.super Lcom/android/mail/c/d;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/utils/m;


# instance fields
.field private amE:I

.field private amF:Lcom/android/mail/browse/G;

.field private amG:I

.field private final amH:Lcom/android/mail/browse/H;

.field private amI:Z

.field private final amJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final amK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final amL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/browse/I;",
            ">;"
        }
    .end annotation
.end field

.field private amM:Z

.field private amo:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 17

    .prologue
    .line 379
    invoke-direct/range {p0 .. p1}, Lcom/android/mail/c/d;-><init>(Landroid/database/Cursor;)V

    .line 351
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mail/browse/F;->amE:I

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mail/browse/F;->amI:Z

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mail/browse/F;->amM:Z

    .line 381
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mail/browse/F;->amo:Z

    .line 385
    new-instance v2, Lcom/android/mail/browse/H;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/mail/browse/H;-><init>(Lcom/android/mail/browse/F;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mail/browse/F;->amH:Lcom/android/mail/browse/H;

    .line 387
    if-eqz p1, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/F;->amH:Lcom/android/mail/browse/H;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 389
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mail/browse/F;->amI:Z

    .line 392
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 397
    const-string v2, "blockingCaching"

    invoke-static {v2}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 398
    invoke-super/range {p0 .. p0}, Lcom/android/mail/c/d;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    invoke-super/range {p0 .. p0}, Lcom/android/mail/c/d;->getCount()I

    move-result v3

    .line 400
    new-array v4, v3, [Lcom/android/mail/browse/I;

    .line 401
    const/4 v2, 0x0

    .line 403
    invoke-static {v3}, Lcom/google/common/collect/Maps;->fq(I)Ljava/util/HashMap;

    move-result-object v6

    .line 404
    invoke-static {v3}, Lcom/google/common/collect/Maps;->fq(I)Ljava/util/HashMap;

    move-result-object v5

    .line 410
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v7}, Lcom/android/mail/c/d;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 411
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Lcom/android/mail/c/d;->getLong(I)J

    move-result-wide v10

    .line 414
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 415
    const-string v12, "ConvCursor"

    const-string v13, "Inserting duplicate conversation uri key: %s. Cursor position: %d, iteration: %d map position: %d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 420
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 421
    const-string v12, "ConvCursor"

    const-string v13, "Inserting duplicate conversation id key: %dCursor position: %d, iteration: %d map position: %d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 427
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v10, Lcom/android/mail/browse/I;

    invoke-direct {v10, v7}, Lcom/android/mail/browse/I;-><init>(Ljava/lang/String;)V

    aput-object v10, v4, v2

    .line 433
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Lcom/android/mail/c/d;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 435
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 437
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected map sizes: cursorN="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uriN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " idN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 452
    :goto_0
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mail/browse/F;->amJ:Ljava/util/Map;

    .line 453
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mail/browse/F;->amK:Ljava/util/Map;

    .line 455
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mail/browse/F;->amL:Ljava/util/List;

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 457
    const-string v3, "ConvCursor"

    const-string v6, "*** ConversationCursor pre-loading took %sms n=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mail/browse/F;->amG:I

    .line 465
    return-void

    .line 447
    :cond_6
    const/4 v2, 0x0

    .line 448
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/mail/browse/I;

    .line 449
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v5

    .line 450
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/browse/F;I)I
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Lcom/android/mail/browse/F;->amG:I

    return p1
.end method

.method static synthetic c(Lcom/android/mail/browse/F;)I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/mail/browse/F;->amG:I

    return v0
.end method

.method static synthetic d(Lcom/android/mail/browse/F;)Ljava/util/List;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mail/browse/F;->amL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mail/browse/F;)Lcom/android/mail/browse/G;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/browse/F;)Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/F;->amM:Z

    return v0
.end method

.method static synthetic g(Lcom/android/mail/browse/F;)V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mail/utils/ag;->c(Landroid/database/Cursor;I)Z

    return-void
.end method

.method private pp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "ConvCursor"

    const-string v1, "Cancelling caching startPos=%s pos=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    invoke-static {v3}, Lcom/android/mail/browse/G;->a(Lcom/android/mail/browse/G;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/mail/browse/F;->amG:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    iget-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/G;->cancel(Z)Z

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public final P(J)I
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/mail/browse/F;->amK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 509
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/utils/l;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    iget v0, p0, Lcom/android/mail/browse/F;->amE:I

    .line 560
    iput p2, p0, Lcom/android/mail/browse/F;->amE:I

    .line 561
    if-eq v0, p2, :cond_1

    .line 562
    if-nez p2, :cond_3

    .line 564
    iget-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected existing task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/browse/F;->amo:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mail/browse/F;->amG:I

    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v0, Lcom/android/mail/browse/G;

    iget v3, p0, Lcom/android/mail/browse/F;->amG:I

    invoke-direct {v0, p0, v3}, Lcom/android/mail/browse/G;-><init>(Lcom/android/mail/browse/F;I)V

    iput-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    iget-object v0, p0, Lcom/android/mail/browse/F;->amF:Lcom/android/mail/browse/G;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/android/mail/browse/G;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 565
    :goto_0
    if-eqz v0, :cond_1

    .line 566
    const-string v0, "ConvCursor"

    const-string v3, "Resuming caching, pos=%s idler=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/browse/F;->amG:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 564
    goto :goto_0

    .line 570
    :cond_3
    invoke-direct {p0}, Lcom/android/mail/browse/F;->pp()V

    goto :goto_1
.end method

.method public final b(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/mail/browse/F;->amL:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/I;

    .line 527
    iget-object v1, v0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    if-nez v1, :cond_0

    .line 528
    iput-object p1, v0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    .line 530
    :cond_0
    return-void
.end method

.method public final bg(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/mail/browse/F;->amJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 514
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/mail/browse/F;->pq()V

    .line 553
    invoke-virtual {p0}, Lcom/android/mail/browse/F;->pu()V

    .line 554
    invoke-super {p0}, Lcom/android/mail/c/d;->close()V

    .line 555
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mail/browse/F;->amJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/mail/browse/F;->amL:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/I;

    iget-object v0, v0, Lcom/android/mail/browse/I;->amQ:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public final pq()V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/mail/browse/F;->pp()V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/F;->amo:Z

    .line 497
    return-void
.end method

.method public final pr()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/mail/browse/F;->amK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final ps()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/mail/browse/F;->amL:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/I;

    iget-object v0, v0, Lcom/android/mail/browse/I;->amP:Ljava/lang/String;

    return-object v0
.end method

.method public final pt()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/android/mail/browse/F;->amM:Z

    return v0
.end method

.method public final pu()V
    .locals 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/mail/browse/F;->amI:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/mail/browse/F;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/F;->amH:Lcom/android/mail/browse/H;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/F;->amI:Z

    .line 548
    :cond_0
    return-void
.end method
