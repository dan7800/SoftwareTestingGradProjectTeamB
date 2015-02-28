.class final Lcom/android/email/provider/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final PJ:J

.field final synthetic TL:Lcom/android/email/provider/D;

.field private final TM:Lcom/android/email/provider/F;

.field private TN:I


# direct methods
.method constructor <init>(Lcom/android/email/provider/D;JLcom/android/email/provider/F;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/provider/G;->TN:I

    .line 100
    iput-wide p2, p0, Lcom/android/email/provider/G;->PJ:J

    .line 101
    iput-object p4, p0, Lcom/android/email/provider/G;->TM:Lcom/android/email/provider/F;

    .line 102
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 108
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->b(Lcom/android/email/provider/D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/android/email/provider/D;->km()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RefreshStatusMonitor: mailboxId=%d LOW STORAGE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    iget-object v0, p0, Lcom/android/email/provider/G;->TM:Lcom/android/email/provider/F;

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    const/4 v4, 0x4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/email/provider/F;->c(JI)V

    .line 115
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_0
    monitor-exit v1

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->c(Lcom/android/email/provider/D;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Lcom/android/email/provider/D;->km()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RefreshStatusMonitor: mailboxId=%d NOT CONNECTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    iget-object v0, p0, Lcom/android/email/provider/G;->TM:Lcom/android/email/provider/F;

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/android/email/provider/F;->c(JI)V

    .line 122
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 127
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/email/provider/G;->TN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/provider/G;->TN:I

    .line 128
    invoke-static {}, Lcom/android/email/provider/D;->km()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RefreshStatusMonitor: mailboxId=%d Retry %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/email/provider/G;->TN:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget v0, p0, Lcom/android/email/provider/G;->TN:I

    const/16 v2, 0xf0

    if-le v0, v2, :cond_2

    .line 131
    invoke-static {}, Lcom/android/email/provider/D;->km()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RefreshStatusMonitor: mailboxId=%d TIMEOUT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/email/provider/G;->TM:Lcom/android/email/provider/F;

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    goto/16 :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->d(Lcom/android/email/provider/D;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 144
    :cond_3
    invoke-static {}, Lcom/android/email/provider/D;->km()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RefreshStatusMonitor: mailboxId=%d SYNC DETECTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    iget-object v0, p0, Lcom/android/email/provider/G;->TM:Lcom/android/email/provider/F;

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/android/email/provider/F;->c(JI)V

    .line 149
    iget-object v0, p0, Lcom/android/email/provider/G;->TL:Lcom/android/email/provider/D;

    invoke-static {v0}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/provider/G;->PJ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
