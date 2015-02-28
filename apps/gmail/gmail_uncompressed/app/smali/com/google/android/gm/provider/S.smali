.class final Lcom/google/android/gm/provider/S;
.super Lcom/google/android/gm/provider/x;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/x;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final DU()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 16
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Bootstrapping db:%s Current version is %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/S;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/S;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 18
    iget-object v0, p0, Lcom/google/android/gm/provider/S;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS internal_sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gm/provider/S;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE internal_sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gm/provider/S;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 25
    return-void
.end method
