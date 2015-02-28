.class Lcom/google/android/gm/provider/aR;
.super Landroid/database/sqlite/SQLiteCursor;
.source "SourceFile"


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field bkv:Lcom/google/android/gm/provider/aS;

.field protected final bkw:Ljava/lang/Object;

.field cV:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V
    .locals 1

    .prologue
    .line 6864
    iput-object p1, p0, Lcom/google/android/gm/provider/aR;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 6865
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 6860
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/aR;->bkw:Ljava/lang/Object;

    .line 6861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/aR;->cV:Landroid/os/Bundle;

    .line 6866
    iput-object p6, p0, Lcom/google/android/gm/provider/aR;->bkv:Lcom/google/android/gm/provider/aS;

    .line 6867
    return-void
.end method


# virtual methods
.method public final dS(I)V
    .locals 2

    .prologue
    .line 6878
    iget-object v0, p0, Lcom/google/android/gm/provider/aR;->cV:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6883
    :goto_0
    return-void

    .line 6881
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aR;->bkw:Ljava/lang/Object;

    monitor-enter v1

    .line 6882
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aR;->bkv:Lcom/google/android/gm/provider/aS;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/aS;->dR(I)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/aR;->cV:Landroid/os/Bundle;

    .line 6883
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/google/android/gm/provider/aR;->cV:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 2

    .prologue
    .line 6900
    iget-object v1, p0, Lcom/google/android/gm/provider/aR;->bkw:Ljava/lang/Object;

    monitor-enter v1

    .line 6901
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aR;->bkv:Lcom/google/android/gm/provider/aS;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/aS;->getWantsAllOnMoveCalls()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 6902
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 6893
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aR;->bkw:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6894
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aR;->bkv:Lcom/google/android/gm/provider/aS;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/aS;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6895
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6893
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
