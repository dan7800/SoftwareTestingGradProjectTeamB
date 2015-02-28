.class final Lcom/google/android/gm/provider/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 6617
    iput-object p1, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6618
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6621
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6623
    iget-object v2, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->z(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6674
    :goto_0
    return-void

    .line 6633
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6635
    iget-object v4, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6641
    :goto_1
    iget-object v4, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->B(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 6642
    :try_start_1
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 6644
    const-wide/16 v6, 0x1f4

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 6645
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v6, "Blocked while waiting for mSyncLock in MailEngine.SyncThread.run() %d ms\n  foreground Sync: %b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6650
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6651
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    new-instance v2, Lcom/google/android/gm/provider/aX;

    invoke-direct {v2}, Lcom/google/android/gm/provider/aX;-><init>()V

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;)Z

    .line 6652
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Run sync loop complete."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6653
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6654
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 6670
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    move v0, v1

    .line 6635
    goto :goto_1

    .line 6637
    :cond_3
    const-wide/16 v2, 0x0

    move v0, v1

    .line 6638
    goto :goto_1

    .line 6653
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 6675
    :catch_0
    move-exception v0

    .line 6656
    :try_start_5
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Sync thread encountered an IOException: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6657
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 6670
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6675
    :catch_1
    move-exception v0

    .line 6659
    :try_start_7
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Sync thread encountered an AuthenticationException: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6661
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 6670
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6675
    :catch_2
    move-exception v0

    .line 6663
    :try_start_9
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Sync thread encountered a ResponseParseException: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6665
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 6670
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6675
    :catch_3
    move-exception v0

    .line 6667
    :try_start_b
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Sync thread encountered a Conscrypt installation error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6668
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 6670
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6675
    :catchall_6
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 6671
    iget-object v1, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 6672
    iget-object v1, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6673
    :try_start_d
    iget-object v2, p0, Lcom/google/android/gm/provider/aY;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 6674
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method
