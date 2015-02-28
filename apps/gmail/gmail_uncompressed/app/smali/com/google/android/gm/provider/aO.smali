.class public final Lcom/google/android/gm/provider/aO;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field private bkr:Lcom/google/android/gm/provider/bf;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 8417
    iput-object p1, p0, Lcom/google/android/gm/provider/aO;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 8418
    const/4 v3, 0x0

    const/16 v4, 0x9a

    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 8423
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aO;->setWriteAheadLoggingEnabled(Z)V

    .line 8426
    :cond_0
    return-void
.end method

.method private declared-synchronized F(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/gm/provider/bf;
    .locals 2

    .prologue
    .line 8461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aO;->bkr:Lcom/google/android/gm/provider/bf;

    if-nez v0, :cond_0

    .line 8462
    new-instance v0, Lcom/google/android/gm/provider/bf;

    iget-object v1, p0, Lcom/google/android/gm/provider/aO;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gm/provider/bf;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/aO;->bkr:Lcom/google/android/gm/provider/bf;

    .line 8464
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aO;->bkr:Lcom/google/android/gm/provider/bf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/aO;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 8411
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aO;->F(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/gm/provider/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bf;->Hj()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 8430
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aO;->F(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/gm/provider/bf;

    move-result-object v0

    .line 8432
    invoke-virtual {v0}, Lcom/google/android/gm/provider/bf;->DU()V

    .line 8433
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 8439
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 8442
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8443
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 8445
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 8449
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aO;->F(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/gm/provider/bf;

    move-result-object v0

    .line 8451
    const/16 v1, 0x24

    if-lt p2, v1, :cond_0

    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    const/16 v1, 0x50

    if-le p2, v1, :cond_1

    .line 8454
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/bf;->DU()V

    .line 8458
    :goto_0
    return-void

    .line 8456
    :cond_1
    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bf;->dJ(I)V

    goto :goto_0
.end method
