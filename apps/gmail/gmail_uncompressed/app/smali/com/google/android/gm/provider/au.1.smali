.class final Lcom/google/android/gm/provider/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 5

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "UserRefreshCompleted is true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 611
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z

    move-result v0

    if-nez v0, :cond_6

    .line 614
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->GC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    .line 617
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :goto_1
    monitor-exit p0

    return-void

    .line 605
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "LiveQueryInProgress is true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 607
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "BackgroundSyncInProgress is true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for sync try %d out of %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->f(Lcom/google/android/gm/provider/MailEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->g(Lcom/google/android/gm/provider/MailEngine;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 624
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->h(Lcom/google/android/gm/provider/MailEngine;)I

    .line 625
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->f(Lcom/google/android/gm/provider/MailEngine;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->g(Lcom/google/android/gm/provider/MailEngine;)I

    move-result v1

    if-le v0, v1, :cond_4

    .line 628
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V

    goto :goto_1

    .line 631
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->k(Lcom/google/android/gm/provider/MailEngine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->i(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->j(Lcom/google/android/gm/provider/MailEngine;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    .line 640
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 641
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V

    goto/16 :goto_1

    .line 646
    :cond_6
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Transitioning from user refresh to automatic refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 647
    iget-object v0, p0, Lcom/google/android/gm/provider/au;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
