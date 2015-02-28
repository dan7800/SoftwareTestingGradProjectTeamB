.class final Lcom/google/android/gm/provider/bp;
.super Lcom/google/android/common/b;
.source "SourceFile"


# instance fields
.field private volatile bbE:Lcom/google/android/gm/provider/MailEngine;

.field private bmt:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bmu:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/common/b;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/google/android/gm/provider/bq;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/bq;-><init>(Lcom/google/android/gm/provider/bp;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/provider/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_min_sync_size_to_log_bytes"

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/bp;->bmu:I

    .line 77
    return-void
.end method


# virtual methods
.method protected final a(JJLandroid/content/SyncResult;)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v8, 0x4

    .line 87
    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v2, :cond_0

    .line 88
    const v2, 0x318f9

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Gmail"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->Gc()Lcom/google/android/gm/provider/MailSync;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/google/android/gm/provider/MailSync;->a(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 92
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    add-long v2, p1, p3

    iget v4, p0, Lcom/google/android/gm/provider/bp;->bmu:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 95
    mul-long v4, p3, v6

    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v4, v2

    .line 96
    mul-long/2addr v6, p1

    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v6, v2

    .line 98
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 99
    const-string v8, "sync_time_millis"

    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "rx_bytes"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "tx_bytes"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "tx_throughput_bps"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gm/provider/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v6, v4, v3}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Landroid/os/Bundle;)V

    .line 114
    :cond_1
    return-void
.end method

.method public final a(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    const-string v0, "Gmail"

    const-string v1, "Sync started for account: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hg()Lcom/google/android/gm/provider/MailProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    .line 126
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v2, p3, p2}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/content/SyncResult;Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 134
    iget-object v4, p0, Lcom/google/android/gm/provider/bp;->bmt:Ljava/lang/ThreadLocal;

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const-string v0, "Gmail"

    const-string v1, "Sync complete for account: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    const-string v1, "Gmail"

    const-string v2, "Mail sync failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p3, Landroid/content/SyncResult;->databaseError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    const-string v0, "Gmail"

    const-string v1, "Sync complete for account: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Gmail"

    const-string v2, "Sync complete for account: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    throw v0
.end method

.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Lcom/google/android/common/b;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    .line 83
    return-void
.end method

.method public final onSyncCanceled(Ljava/lang/Thread;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    const-string v0, "Gmail"

    const-string v1, "MailSyncAdapterService#onSyncCanceled %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    iget-object v0, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "Gmail"

    const-string v1, "MailEngine != null account: %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/ad;->cx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/provider/bp;->bbE:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/common/b;->onSyncCanceled(Ljava/lang/Thread;)V

    .line 153
    return-void
.end method
