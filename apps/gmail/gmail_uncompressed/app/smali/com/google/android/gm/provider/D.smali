.class public final Lcom/google/android/gm/provider/D;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field private static final So:Landroid/content/ContentValues;


# instance fields
.field private beF:Landroid/content/ContentQueryMap;

.field private beG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private beH:J

.field private beI:J

.field private beJ:J

.field private beK:J

.field private beL:J

.field private beM:J

.field private beN:J

.field private beO:J

.field private beP:J

.field private beQ:J

.field private beR:J

.field private beS:J

.field private beT:J

.field private beU:J

.field private beV:J

.field private beW:J

.field private beX:Ljava/lang/Boolean;

.field private beY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2459
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/D;->So:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 2497
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/D;->beX:Ljava/lang/Boolean;

    .line 2485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/D;->beY:Z

    .line 2498
    new-instance v0, Lcom/google/android/gm/provider/F;

    const-string v1, "_id"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gm/provider/F;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/D;->beG:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/google/android/gm/provider/E;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/E;-><init>(Lcom/google/android/gm/provider/D;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 2499
    return-void
.end method

.method private declared-synchronized Eg()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 2535
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/D;->beY:Z

    .line 2537
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2539
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2540
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2541
    if-eqz v1, :cond_0

    .line 2542
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2549
    iget-object v1, p0, Lcom/google/android/gm/provider/D;->beG:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    const-string v1, "^f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2552
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beH:J

    .line 2585
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beH:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beI:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beJ:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beK:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beL:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beM:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beN:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beO:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beP:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_11

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/D;->beX:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2553
    :cond_2
    :try_start_1
    const-string v1, "^i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2554
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beI:J

    goto :goto_1

    .line 2555
    :cond_3
    const-string v1, "^r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2556
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beJ:J

    goto :goto_1

    .line 2557
    :cond_4
    const-string v1, "^u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2558
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beK:J

    goto :goto_1

    .line 2559
    :cond_5
    const-string v1, "^k"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2560
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beL:J

    goto :goto_1

    .line 2561
    :cond_6
    const-string v1, "^s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2562
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beM:J

    goto :goto_1

    .line 2563
    :cond_7
    const-string v1, "^t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2564
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beN:J

    goto/16 :goto_1

    .line 2565
    :cond_8
    const-string v1, "^b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2566
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beO:J

    goto/16 :goto_1

    .line 2567
    :cond_9
    const-string v1, "^g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2568
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beP:J

    goto/16 :goto_1

    .line 2569
    :cond_a
    const-string v1, "^^cached"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2570
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beQ:J

    goto/16 :goto_1

    .line 2571
    :cond_b
    const-string v1, "^^out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2572
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beR:J

    goto/16 :goto_1

    .line 2573
    :cond_c
    const-string v1, "^io_im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2574
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beS:J

    goto/16 :goto_1

    .line 2575
    :cond_d
    const-string v1, "^^important"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2576
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beT:J

    goto/16 :goto_1

    .line 2577
    :cond_e
    const-string v1, "^^unimportant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2578
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beU:J

    goto/16 :goto_1

    .line 2579
    :cond_f
    const-string v1, "^^retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2580
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beV:J

    goto/16 :goto_1

    .line 2581
    :cond_10
    const-string v1, "^^failed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2582
    iput-wide v4, p0, Lcom/google/android/gm/provider/D;->beW:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2585
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2595
    :cond_12
    monitor-exit p0

    return-void
.end method

.method private Ev()V
    .locals 2

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/google/android/gm/provider/D;->Ee()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LabelMap not initalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2684
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/D;)V
    .locals 0

    .prologue
    .line 2458
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Eg()V

    return-void
.end method

.method private ah(J)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 2776
    iget-boolean v0, p0, Lcom/google/android/gm/provider/D;->beY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2778
    :goto_0
    if-eqz v0, :cond_1

    .line 2781
    :goto_1
    return-object v0

    .line 2776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2781
    :cond_1
    sget-object v0, Lcom/google/android/gm/provider/D;->So:Landroid/content/ContentValues;

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gm/provider/D;)V
    .locals 0

    .prologue
    .line 2458
    invoke-virtual {p0}, Lcom/google/android/gm/provider/D;->setChanged()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized Ee()Z
    .locals 1

    .prologue
    .line 2518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beX:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Ef()Z
    .locals 1

    .prologue
    .line 2525
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beX:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final Eh()Landroid/content/ContentQueryMap;
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method public final declared-synchronized Ei()J
    .locals 2

    .prologue
    .line 2602
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2603
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Ej()J
    .locals 2

    .prologue
    .line 2607
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2608
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beI:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Ek()J
    .locals 2

    .prologue
    .line 2612
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2613
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beJ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized El()J
    .locals 2

    .prologue
    .line 2617
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2618
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beK:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Em()J
    .locals 2

    .prologue
    .line 2622
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2623
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beL:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized En()J
    .locals 2

    .prologue
    .line 2627
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2628
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Eo()J
    .locals 2

    .prologue
    .line 2632
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2633
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beN:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Ep()J
    .locals 2

    .prologue
    .line 2642
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2643
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beP:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Eq()J
    .locals 2

    .prologue
    .line 2647
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2648
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beQ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Er()J
    .locals 2

    .prologue
    .line 2652
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2653
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beR:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Es()J
    .locals 2

    .prologue
    .line 2666
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2667
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Et()J
    .locals 2

    .prologue
    .line 2671
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2672
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beV:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Eu()J
    .locals 2

    .prologue
    .line 2676
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/D;->Ev()V

    .line 2677
    iget-wide v0, p0, Lcom/google/android/gm/provider/D;->beW:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ae(J)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2693
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/D;->ah(J)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "numUnreadConversations"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2698
    if-eqz v1, :cond_0

    .line 2699
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 2702
    :cond_0
    :goto_0
    return v0

    .line 2699
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final af(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2721
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/D;->ah(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ag(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2728
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/D;->ah(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ej(Ljava/lang/String;)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2737
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/D;->ek(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2740
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown canonical name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ek(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final el(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2757
    iget-boolean v2, p0, Lcom/google/android/gm/provider/D;->beY:Z

    if-nez v2, :cond_1

    .line 2772
    :cond_0
    :goto_0
    return v0

    .line 2761
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/D;->ek(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 2762
    goto :goto_0

    .line 2765
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/D;->ej(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/provider/D;->ah(J)Landroid/content/ContentValues;

    move-result-object v2

    .line 2767
    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2768
    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2771
    :cond_3
    const-string v2, "Gmail"

    const-string v3, "Unknown HIDDEN value for %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final requery()V
    .locals 1

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/google/android/gm/provider/D;->beF:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    .line 2788
    return-void
.end method
