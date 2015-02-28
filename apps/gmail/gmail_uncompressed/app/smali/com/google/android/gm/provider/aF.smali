.class final Lcom/google/android/gm/provider/aF;
.super Lcom/google/android/gm/provider/aR;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/J;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field bjU:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V
    .locals 1

    .prologue
    .line 6962
    iput-object p1, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 6963
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gm/provider/aR;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V

    .line 6959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aF;->bjU:Z

    .line 6964
    return-void
.end method

.method private GH()Lcom/google/android/gm/provider/aG;
    .locals 3

    .prologue
    .line 7065
    iget-object v1, p0, Lcom/google/android/gm/provider/aF;->bkw:Ljava/lang/Object;

    monitor-enter v1

    .line 7066
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7067
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->GL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7068
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7071
    :goto_0
    return-object v0

    .line 7070
    :cond_0
    monitor-exit v1

    .line 7071
    const/4 v0, 0x0

    goto :goto_0

    .line 7070
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final GG()V
    .locals 2

    .prologue
    .line 6967
    invoke-direct {p0}, Lcom/google/android/gm/provider/aF;->GH()Lcom/google/android/gm/provider/aG;

    move-result-object v0

    .line 6968
    if-eqz v0, :cond_0

    .line 6969
    iget-boolean v1, p0, Lcom/google/android/gm/provider/aF;->bjU:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/aG;->ca(Z)V

    .line 6970
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    .line 6971
    if-eqz v0, :cond_0

    .line 6972
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aF;->setSelectionArguments([Ljava/lang/String;)V

    .line 6975
    :cond_0
    return-void
.end method

.method public final kc()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 7076
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7078
    if-eqz v0, :cond_0

    .line 7079
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->GT()J

    move-result-wide v2

    .line 7080
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 7081
    invoke-static {v0}, Lcom/google/android/gm/provider/aG;->b(Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 7083
    iget-object v1, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    if-nez v0, :cond_1

    move-object v5, v6

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 7087
    :cond_0
    return-void

    .line 7083
    :cond_1
    iget-object v5, v0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-wide v6, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1
.end method

.method public final kd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 7091
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7093
    if-eqz v0, :cond_0

    .line 7094
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->GT()J

    move-result-wide v2

    .line 7095
    invoke-static {v0}, Lcom/google/android/gm/provider/aG;->b(Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/af;

    move-result-object v1

    .line 7096
    iget-object v1, v1, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/GmailProvider;->ey(Ljava/lang/String;)I

    move-result v1

    .line 7099
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_1

    .line 7100
    const-string v1, "emptySpam"

    .line 7111
    :goto_0
    iget-object v4, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->bhA:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gm/provider/Operations;->c(JLjava/lang/String;)J

    .line 7114
    iget-object v1, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/Gmail;->dU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 7117
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->GU()V

    .line 7119
    :cond_0
    :goto_1
    return-void

    .line 7101
    :cond_1
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_2

    .line 7102
    const-string v1, "emptyTrash"

    goto :goto_0

    .line 7104
    :cond_2
    const-string v0, "CursorLogic"

    const-string v2, "We just tried to empty a folder that is not spam or trash. Folder type was %d"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public final onMove(II)Z
    .locals 2

    .prologue
    .line 6980
    iget-object v1, p0, Lcom/google/android/gm/provider/aF;->bkw:Ljava/lang/Object;

    monitor-enter v1

    .line 6981
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 6982
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6983
    invoke-virtual {v0, p2, p0}, Lcom/google/android/gm/provider/aG;->b(ILcom/google/android/gm/provider/aR;)V

    .line 6984
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/provider/aR;->onMove(II)Z

    move-result v0

    return v0

    .line 6982
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 6989
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6990
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6994
    const-string v2, "setVisible"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "visible"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6996
    const-string v0, "commandResponse"

    const-string v2, "ok"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 7060
    :goto_0
    return-object v0

    .line 7001
    :cond_0
    const-string v2, "setUIPosition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7002
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 7003
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "ConversationCursorLogic#respond Set position: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7004
    iget-object v3, p0, Lcom/google/android/gm/provider/aF;->bkw:Ljava/lang/Object;

    monitor-enter v3

    .line 7005
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7008
    invoke-static {v0, v2, p0}, Lcom/google/android/gm/provider/aG;->a(Lcom/google/android/gm/provider/aG;ILcom/google/android/gm/provider/aR;)I

    .line 7009
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7010
    const-string v0, "commandResponse"

    const-string v2, "ok"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 7012
    goto :goto_0

    .line 7009
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 7015
    :cond_1
    const-string v2, "activate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7017
    iget-object v2, p0, Lcom/google/android/gm/provider/aF;->bkw:Ljava/lang/Object;

    monitor-enter v2

    .line 7018
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7020
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 7021
    iget-object v4, p0, Lcom/google/android/gm/provider/aF;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->F(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7025
    const-string v0, "failed"

    .line 7026
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v5, "ignoring request to re-enable stale cursor: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7031
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7032
    const-string v2, "commandResponse"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 7034
    goto :goto_0

    .line 7028
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, v0, Lcom/google/android/gm/provider/aG;->bjV:Z

    .line 7029
    const-string v0, "ok"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 7031
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 7035
    :cond_3
    const-string v2, "deactivate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7036
    iget-object v2, p0, Lcom/google/android/gm/provider/aF;->bkw:Ljava/lang/Object;

    monitor-enter v2

    .line 7037
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/aF;->bkv:Lcom/google/android/gm/provider/aS;

    check-cast v0, Lcom/google/android/gm/provider/aG;

    .line 7039
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aG;->GL()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7040
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gm/provider/aG;->bjV:Z

    .line 7041
    const-string v0, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7047
    :goto_2
    monitor-exit v2

    move-object v0, v1

    .line 7048
    goto/16 :goto_0

    .line 7044
    :cond_4
    const-string v0, "commandResponse"

    const-string v3, "failed"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 7047
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 7049
    :cond_5
    const-string v2, "setVisible"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7050
    invoke-direct {p0}, Lcom/google/android/gm/provider/aF;->GH()Lcom/google/android/gm/provider/aG;

    move-result-object v0

    .line 7053
    if-eqz v0, :cond_6

    .line 7054
    invoke-static {v0}, Lcom/google/android/gm/provider/aG;->c(Lcom/google/android/gm/provider/aG;)V

    .line 7056
    :cond_6
    const-string v0, "commandResponse"

    const-string v2, "ok"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 7058
    goto/16 :goto_0

    .line 7060
    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/aR;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method
