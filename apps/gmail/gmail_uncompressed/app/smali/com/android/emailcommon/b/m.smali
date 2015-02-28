.class public final Lcom/android/emailcommon/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static abw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/b/m;->abw:Z

    return-void
.end method

.method public static declared-synchronized mh()V
    .locals 4

    .prologue
    .line 25
    const-class v1, Lcom/android/emailcommon/b/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "migration started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/emailcommon/b/m;->abw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mi()V
    .locals 4

    .prologue
    .line 30
    const-class v1, Lcom/android/emailcommon/b/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "migration finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/b/m;->abw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized mj()Z
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/android/emailcommon/b/m;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/emailcommon/b/m;->abw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
