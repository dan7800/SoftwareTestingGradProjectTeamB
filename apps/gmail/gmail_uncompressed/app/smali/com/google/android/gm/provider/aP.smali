.class final Lcom/google/android/gm/provider/aP;
.super Lcom/google/android/gm/provider/aS;
.source "SourceFile"


# instance fields
.field final aPP:J

.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field bks:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;J)V
    .locals 2

    .prologue
    .line 7962
    iput-object p1, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 7963
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aS;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 7960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aP;->bks:Z

    .line 7964
    iput-wide p2, p0, Lcom/google/android/gm/provider/aP;->aPP:J

    .line 7965
    return-void
.end method


# virtual methods
.method public final GQ()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x200000

    const/4 v6, 0x1

    .line 8055
    new-instance v0, Lcom/google/android/gm/provider/bj;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aP;->aPP:J

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gm/provider/bj;-><init>(JJ)V

    .line 8058
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MessageCursor requesting conversation %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gm/provider/aP;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8060
    iget-object v1, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/common/a;->dm(Ljava/lang/String;)I

    move-result v1

    .line 8061
    or-int/2addr v1, v7

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 8067
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/bj;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 8068
    iget-object v1, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 8070
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aP;->bkB:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->a(Lorg/apache/http/HttpResponse;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8072
    :try_start_2
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->c(Lorg/apache/http/HttpResponse;)V

    .line 8075
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "All messages received for conversation."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8076
    iget-object v0, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->D(Lcom/google/android/gm/provider/MailEngine;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8078
    invoke-static {v7, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 8079
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 8080
    return-void

    .line 8072
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->c(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8078
    :catchall_1
    move-exception v0

    invoke-static {v7, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 8079
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method

.method public final a(JLcom/google/android/gm/provider/aR;Z)I
    .locals 11

    .prologue
    const/4 v2, 0x2

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7976
    .line 7977
    iget-wide v4, p0, Lcom/google/android/gm/provider/aP;->bkB:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 7978
    iput-boolean v1, p0, Lcom/google/android/gm/provider/aP;->bks:Z

    .line 7983
    iget-object v4, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COUNT(*) FROM conversations WHERE _id = ?"

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 7986
    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    .line 7987
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Didn\'t find conversation entry for this conversation"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 8030
    :cond_0
    :goto_0
    return v0

    .line 7992
    :cond_1
    if-eqz p4, :cond_2

    .line 7993
    iget-object v4, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND queryId = ?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 7998
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    move v0, v2

    .line 7999
    goto :goto_0

    .line 8004
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM messages WHERE conversation = ? AND queryId = 0"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 8007
    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 8009
    const/4 v1, 0x4

    .line 8010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8011
    const-string v0, "queryId NOT IN (0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8012
    iget-object v0, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->J(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 8013
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->K(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8014
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8015
    iget-object v5, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->K(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/aP;

    iget-wide v6, v0, Lcom/google/android/gm/provider/aP;->bkB:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8017
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8018
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8019
    iget-object v0, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 8020
    invoke-virtual {p3}, Lcom/google/android/gm/provider/aR;->requery()Z

    .line 8025
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aP;->GZ()Z

    move-result v0

    .line 8026
    if-eqz v0, :cond_5

    .line 8027
    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public final declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 8035
    monitor-enter p0

    :try_start_0
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8036
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8037
    const-string v2, "setVisible"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8038
    const-string v1, "visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8039
    iget-object v1, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->J(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8040
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/aP;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->K(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gm/provider/aP;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8041
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8043
    :cond_0
    :try_start_2
    const-string v1, "commandResponse"

    const-string v2, "ok"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8048
    :goto_0
    monitor-exit p0

    return-object v0

    .line 8041
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8035
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 8048
    :cond_1
    :try_start_4
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/aS;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    goto :goto_0
.end method
