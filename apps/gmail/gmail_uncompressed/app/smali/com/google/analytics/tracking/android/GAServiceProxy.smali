.class final Lcom/google/analytics/tracking/android/GAServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/ae;
.implements Lcom/google/analytics/tracking/android/e;
.implements Lcom/google/analytics/tracking/android/f;


# instance fields
.field private final aSK:Landroid/content/Context;

.field private aSL:Lcom/google/analytics/tracking/android/g;

.field private final aSM:Lcom/google/analytics/tracking/android/i;

.field private aSO:Z

.field private volatile aSV:J

.field private volatile aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

.field private volatile aSX:Lcom/google/analytics/tracking/android/b;

.field private aSY:Lcom/google/analytics/tracking/android/g;

.field private final aSZ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/analytics/tracking/android/C;",
            ">;"
        }
    .end annotation
.end field

.field private volatile aTa:I

.field private volatile aTb:Ljava/util/Timer;

.field private volatile aTc:Ljava/util/Timer;

.field private volatile aTd:Ljava/util/Timer;

.field private aTe:Z

.field private aTf:Lcom/google/analytics/tracking/android/k;

.field private aTg:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    .line 64
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTg:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSY:Lcom/google/analytics/tracking/android/g;

    .line 69
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSK:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSM:Lcom/google/analytics/tracking/android/i;

    .line 71
    new-instance v0, Lcom/google/analytics/tracking/android/x;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/x;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTf:Lcom/google/analytics/tracking/android/k;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    .line 78
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTp:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;B)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V

    .line 83
    return-void
.end method

.method private BL()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    .line 149
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    .line 151
    return-void
.end method

.method private declared-synchronized BN()V
    .locals 8

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSM:Lcom/google/analytics/tracking/android/i;

    invoke-interface {v3}, Lcom/google/analytics/tracking/android/i;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSM:Lcom/google/analytics/tracking/android/i;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/i;->BC()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/analytics/tracking/android/y;

    invoke-direct {v3, p0}, Lcom/google/analytics/tracking/android/y;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTe:Z

    if-eqz v2, :cond_2

    .line 204
    const-string v2, "clearHits called"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    sget-object v2, Lcom/google/analytics/tracking/android/z;->aTi:[I

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTe:Z

    .line 206
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/analytics/tracking/android/z;->aTi:[I

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 208
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/analytics/tracking/android/C;

    move-object v7, v0

    .line 210
    const-string v2, "Sending hit to store"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSL:Lcom/google/analytics/tracking/android/g;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BT()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BU()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BV()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/g;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 194
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 204
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSL:Lcom/google/analytics/tracking/android/g;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/g;->BA()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTe:Z

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/b;->By()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTe:Z

    goto :goto_1

    .line 215
    :cond_3
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSO:Z

    if-eqz v2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BO()V

    goto :goto_0

    .line 220
    :goto_3
    :pswitch_3
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/analytics/tracking/android/C;

    move-object v7, v0

    .line 222
    const-string v2, "Sending hit to service"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BT()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BU()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/analytics/tracking/android/C;->BV()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/analytics/tracking/android/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 225
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_3

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTf:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/k;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSV:J

    goto/16 :goto_0

    .line 230
    :pswitch_4
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BQ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private BO()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSL:Lcom/google/analytics/tracking/android/g;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/g;->BB()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSO:Z

    .line 247
    return-void
.end method

.method private declared-synchronized BP()V
    .locals 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTl:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BL()V

    .line 258
    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSY:Lcom/google/analytics/tracking/android/g;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSY:Lcom/google/analytics/tracking/android/g;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSL:Lcom/google/analytics/tracking/android/g;

    .line 266
    :goto_1
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTl:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 267
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/analytics/tracking/android/u;->BI()Lcom/google/analytics/tracking/android/u;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSK:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSM:Lcom/google/analytics/tracking/android/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/u;->a(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V

    .line 264
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/u;->BJ()Lcom/google/analytics/tracking/android/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSL:Lcom/google/analytics/tracking/android/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized BQ()V
    .locals 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTl:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 273
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    .line 274
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 275
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTj:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 276
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    .line 277
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/B;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 278
    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/b;->connect()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BP()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized BR()V
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTk:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    .line 292
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTo:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 293
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/b;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private BS()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    .line 340
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    .line 341
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTb:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/D;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/D;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 342
    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 144
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BN()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BP()V

    return-void
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BQ()V

    return-void
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSV:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/analytics/tracking/android/GAServiceProxy;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTg:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/k;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTf:Lcom/google/analytics/tracking/android/k;

    return-object v0
.end method

.method static synthetic i(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BR()V

    return-void
.end method

.method static synthetic j(Lcom/google/analytics/tracking/android/GAServiceProxy;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final BB()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/google/analytics/tracking/android/z;->aTi:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSO:Z

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BO()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final BM()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/c;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSK:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/c;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/e;Lcom/google/analytics/tracking/android/f;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSX:Lcom/google/analytics/tracking/android/b;

    .line 163
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BQ()V

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 97
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSZ:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/C;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/C;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BN()V

    .line 99
    return-void
.end method

.method public final declared-synchronized dv(I)V
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTn:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 329
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onConnected()V
    .locals 4

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTc:Ljava/util/Timer;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    .line 301
    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTk:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 303
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BN()V

    .line 304
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    .line 305
    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    .line 306
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTd:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/A;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/A;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;B)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTg:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDisconnected()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTo:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    .line 312
    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BL()V

    .line 314
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTp:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTn:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aSW:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    .line 318
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy;->aTa:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BS()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->BP()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
