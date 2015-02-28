.class final Lcom/android/email/service/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Uh:I

.field final Ui:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/email/service/g;",
            ">;"
        }
    .end annotation
.end field

.field final Uj:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/g;",
            ">;"
        }
    .end annotation
.end field

.field private final fK:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput v3, p0, Lcom/android/email/service/e;->Uh:I

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/email/service/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/email/service/f;-><init>(B)V

    invoke-direct {v0, v3, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/email/service/e;->Ui:Ljava/util/PriorityQueue;

    .line 287
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final c(Lcom/android/email/service/g;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    .line 305
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 307
    const-string v1, "AttachmentService"

    const-string v2, "Not adding a DownloadRequest with an invalid attachment id"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 321
    :goto_0
    return v0

    .line 310
    :cond_1
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 311
    iget-object v4, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/email/service/e;->Ui:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_1
    monitor-exit v4

    move v0, v1

    .line 321
    goto :goto_0

    .line 318
    :cond_2
    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final d(Lcom/android/email/service/g;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 331
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return v0

    .line 335
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 337
    iget-object v1, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Ui:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 340
    if-eqz v0, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p1, Lcom/android/email/service/g;->Ul:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final kA()Lcom/android/email/service/g;
    .locals 6

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Ui:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 356
    if-eqz v0, :cond_0

    .line 357
    iget-wide v2, v0, Lcom/android/email/service/g;->Ul:J

    .line 358
    iget-object v4, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    if-eqz v0, :cond_1

    .line 362
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 364
    :cond_1
    return-object v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final z(J)Lcom/android/email/service/g;
    .locals 3

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/email/service/e;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/e;->Uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
