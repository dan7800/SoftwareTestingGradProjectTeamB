.class abstract Lcom/google/android/gm/provider/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field protected volatile bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

.field final bkB:J

.field protected volatile bkx:Ljava/lang/Thread;

.field protected bky:Ljava/lang/Object;

.field protected volatile bkz:Z

.field private eP:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6691
    iput-object p1, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6686
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bky:Ljava/lang/Object;

    .line 6809
    iput-object v4, p0, Lcom/google/android/gm/provider/aS;->eP:[Ljava/lang/String;

    .line 6692
    sget-wide v0, Lcom/google/android/gm/provider/MailEngine;->bjt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gm/provider/MailEngine;->bjt:J

    iput-wide v0, p0, Lcom/google/android/gm/provider/aS;->bkB:J

    .line 6693
    iput-object v4, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    .line 6694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6695
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6696
    return-void
.end method


# virtual methods
.method public GM()Z
    .locals 1

    .prologue
    .line 6751
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract GQ()V
.end method

.method protected final GZ()Z
    .locals 4

    .prologue
    .line 6824
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 6826
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aS;->bky:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6827
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->E(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6828
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "NetworkCursor Fetcher"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    .line 6829
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6830
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6834
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    monitor-enter v1

    .line 6835
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 6836
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6838
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 6841
    :goto_0
    return v0

    .line 6838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6832
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6834
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    monitor-enter v1

    .line 6835
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 6836
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6838
    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 6841
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 6832
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6839
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    monitor-enter v1

    .line 6835
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    .line 6836
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6838
    :cond_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final Ha()Z
    .locals 1

    .prologue
    .line 6845
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    return v0
.end method

.method public dR(I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 6766
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aS;->GM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6767
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beB:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    .line 6776
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6777
    const-string v2, "status"

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6780
    const-string v0, "error"

    iget-object v2, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$CursorError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6782
    return-object v1

    .line 6768
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    if-eqz v0, :cond_1

    .line 6769
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beC:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    goto :goto_0

    .line 6770
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 6771
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    goto :goto_0

    .line 6773
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorStatus;->bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    goto :goto_0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 6816
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->eP:[Ljava/lang/String;

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 6854
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 6786
    monitor-enter p0

    :try_start_0
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6787
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6788
    const-string v2, "retry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6789
    const-string v0, "force_refresh"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6790
    iget-boolean v2, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 6791
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Mail cursor told to retry, but not in error state"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6800
    :goto_0
    const-string v0, "commandResponse"

    const-string v2, "ok"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6806
    :goto_1
    monitor-exit p0

    return-object v1

    .line 6792
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 6793
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Mail cursor told to retry, but already fetching"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6795
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Mail cursor told to retry, retrying"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6797
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aS;->GZ()Z

    .line 6798
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->D(Lcom/google/android/gm/provider/MailEngine;)V

    goto :goto_0

    .line 6803
    :cond_2
    const-string v0, "commandResponse"

    const-string v2, "unknownCommand"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6704
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aS;->GQ()V

    .line 6705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6706
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6707
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6736
    :goto_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    monitor-enter v1

    .line 6737
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 6738
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bjd:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6740
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6741
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->D(Lcom/google/android/gm/provider/MailEngine;)V

    .line 6742
    iget-object v1, p0, Lcom/google/android/gm/provider/aS;->bky:Ljava/lang/Object;

    monitor-enter v1

    .line 6743
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkx:Ljava/lang/Thread;

    .line 6744
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 6708
    :catch_0
    move-exception v0

    .line 6709
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered an IOException: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6710
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6711
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bes:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6712
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    goto :goto_0

    .line 6713
    :catch_1
    move-exception v0

    .line 6714
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered an AuthenticationException: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6716
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6717
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bet:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6718
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    goto :goto_0

    .line 6719
    :catch_2
    move-exception v0

    .line 6720
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a ResponseParseException: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6722
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6723
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->beu:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6724
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v6}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    goto :goto_0

    .line 6725
    :catch_3
    move-exception v0

    .line 6726
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a SQLiteException: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6727
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6728
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bev:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6729
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v6}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    goto/16 :goto_0

    .line 6730
    :catch_4
    move-exception v0

    .line 6731
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a Conscrypt installation error"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6732
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aS;->bkz:Z

    .line 6733
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bew:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aS;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 6734
    iget-object v0, p0, Lcom/google/android/gm/provider/aS;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V

    goto/16 :goto_0

    .line 6740
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6744
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final setSelectionArguments([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6812
    iput-object p1, p0, Lcom/google/android/gm/provider/aS;->eP:[Ljava/lang/String;

    .line 6813
    return-void
.end method
