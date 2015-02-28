.class public Lcom/android/email/service/AttachmentService$AttachmentWatchdog;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private Ue:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final L(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 422
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->g(Landroid/content/Context;J)V

    .line 423
    return-void
.end method

.method final a(Lcom/android/email/service/AttachmentService;I)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 469
    iget-object v0, p1, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/g;

    .line 472
    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/email/service/g;->Up:J

    sub-long/2addr v6, v8

    int-to-long v8, p2

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    const-string v1, "AttachmentService"

    const-string v5, "Timeout for DownloadRequest #%d "

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 475
    :goto_1
    if-eqz v1, :cond_0

    .line 476
    const-string v1, "AttachmentService"

    const-string v5, "Cancelling DownloadRequest #%d"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/android/email/service/g;->Ul:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    invoke-virtual {p1, v0}, Lcom/android/email/service/AttachmentService;->b(Lcom/android/email/service/g;)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 473
    goto :goto_1

    .line 482
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/service/AttachmentService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {p1}, Lcom/android/email/service/AttachmentService;->kw()V

    .line 485
    :cond_3
    iget-object v0, p1, Lcom/android/email/service/AttachmentService;->TX:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    invoke-virtual {p0, p1}, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->L(Landroid/content/Context;)V

    .line 486
    :cond_4
    return-void
.end method

.method public final g(Landroid/content/Context;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 407
    iget-object v0, p0, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->Ue:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    const-string v1, "callback_timeout"

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->Ue:Landroid/app/PendingIntent;

    .line 414
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v1, p0, Lcom/android/email/service/AttachmentService$AttachmentWatchdog;->Ue:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 417
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcom/android/email/service/AttachmentService;->ky()V

    .line 418
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 427
    const-string v0, "callback_timeout"

    const/16 v1, 0x7530

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 429
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/service/d;

    invoke-direct {v2, p0, v0}, Lcom/android/email/service/d;-><init>(Lcom/android/email/service/AttachmentService$AttachmentWatchdog;I)V

    const-string v0, "AttachmentService AttachmentWatchdog"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 447
    return-void
.end method
