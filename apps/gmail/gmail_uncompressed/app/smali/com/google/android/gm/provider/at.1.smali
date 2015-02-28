.class final Lcom/google/android/gm/provider/at;
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
    .line 8146
    iput-object p1, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 8149
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "calculateUnknownSyncRationalesAndPurgeInBackground: running"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8153
    iget-object v0, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v2, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    move v0, v1

    .line 8156
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT IFNULL((SELECT _id FROM conversations WHERE syncRationale = \'UNKNOWN\'), 0)"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 8161
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 8162
    iget-object v4, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;JLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    .line 8165
    iget-object v2, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 8166
    iget-object v2, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->L(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 8168
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8170
    iget-object v1, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 8172
    if-eqz v0, :cond_3

    .line 8173
    iget-object v0, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->M(Lcom/google/android/gm/provider/MailEngine;)V

    .line 8175
    :cond_3
    return-void

    .line 8170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/at;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method
