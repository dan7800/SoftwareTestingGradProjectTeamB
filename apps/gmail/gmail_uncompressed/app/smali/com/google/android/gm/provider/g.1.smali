.class public final Lcom/google/android/gm/provider/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Wp:Ljava/util/Random;

.field private static final aCz:[Ljava/lang/String;

.field public static bcH:Ljava/lang/String;

.field private static final bcI:[Ljava/lang/String;

.field private static final bcO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ud:Landroid/accounts/AccountManager;

.field private final azU:Landroid/app/DownloadManager;

.field private final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field private final bcK:Lcom/google/android/gm/provider/bG;

.field private final bcL:Lcom/google/android/gm/provider/j;

.field private bcM:J

.field private final bcN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccount:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-string v0, "attachment_from_sender"

    sput-object v0, Lcom/google/android/gm/provider/g;->bcH:Ljava/lang/String;

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "filename"

    aput-object v1, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/g;->bcI:[Ljava/lang/String;

    .line 109
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attachments._id"

    aput-object v1, v0, v2

    const-string v1, "messages_conversation"

    aput-object v1, v0, v3

    const-string v1, "messages_messageId"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "messages_partId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "desiredRendition"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "originExtras"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "downloadedRendition"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "downloadId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "saveToSd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "automatic"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/google/android/gm/provider/g;->Wp:Ljava/util/Random;

    .line 163
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/g;->bcO:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/bG;Lcom/google/android/gm/provider/j;)V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    iput-object p4, p0, Lcom/google/android/gm/provider/g;->bcK:Lcom/google/android/gm/provider/bG;

    .line 181
    iput-object p5, p0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/g;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/g;->Ud:Landroid/accounts/AccountManager;

    .line 185
    invoke-direct {p0, p2}, Lcom/google/android/gm/provider/g;->dP(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/g;->bcM:J

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/g;->bcN:Ljava/util/Set;

    .line 188
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    new-instance v1, Lcom/google/android/gm/provider/h;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/h;-><init>(Lcom/google/android/gm/provider/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/j;->g(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    invoke-interface {v0}, Lcom/google/android/gm/provider/j;->DS()V

    .line 196
    return-void
.end method

.method private D(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 746
    if-lez v2, :cond_2

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 750
    if-lez v1, :cond_0

    .line 751
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 759
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 763
    :cond_2
    return-void
.end method

.method private DM()Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 298
    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 303
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/provider/g;->Ud:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    long-to-float v7, v4

    mul-float/2addr v7, v10

    int-to-float v6, v6

    div-float v6, v7, v6

    float-to-long v6, v6

    .line 317
    iget-wide v8, p0, Lcom/google/android/gm/provider/g;->bcM:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_2

    .line 318
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/gm/provider/g;->bcM:J

    .line 319
    iget-object v8, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/g;->dP(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/gm/provider/g;->bcM:J

    .line 322
    :cond_2
    long-to-float v2, v2

    long-to-float v3, v4

    mul-float/2addr v3, v10

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gm/provider/g;->bcM:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    const-string v0, "Gmail"

    const-string v2, "This maybe called from tests where we don\'t have Account Manager."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 309
    goto :goto_0
.end method

.method private DP()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1220
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    sget-object v2, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v3, "status NOT IN (?, ?, ?, ?)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/16 v6, 0xbe

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const/4 v6, 0x2

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1229
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1230
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1231
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    .line 1233
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    if-eqz v1, :cond_0

    move-object v0, v5

    :cond_0
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v1, v9

    .line 1232
    goto :goto_1

    .line 1237
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1241
    invoke-static {v11}, Lcom/google/android/gm/provider/g;->E(Ljava/util/List;)V

    .line 1244
    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/g;->D(Ljava/util/List;)V

    .line 1245
    return-void
.end method

.method private DQ()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1251
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    sget-object v2, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v3, "status = ?"

    new-array v4, v8, [Ljava/lang/String;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1257
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1258
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1259
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1260
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v12, 0x0

    aput-wide v0, v4, v12

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1261
    iget-object v1, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1262
    if-eqz v1, :cond_0

    .line 1264
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1267
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1268
    if-eq v0, v8, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 1277
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1277
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1279
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1280
    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    .line 1281
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    if-eqz v1, :cond_3

    move-object v0, v5

    :cond_3
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    move v1, v9

    .line 1280
    goto :goto_1

    .line 1285
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1289
    invoke-static {v11}, Lcom/google/android/gm/provider/g;->E(Ljava/util/List;)V

    .line 1292
    invoke-direct {p0, v10}, Lcom/google/android/gm/provider/g;->D(Ljava/util/List;)V

    .line 1293
    return-void
.end method

.method private static E(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1296
    if-eqz p0, :cond_1

    .line 1297
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1298
    if-eqz v0, :cond_0

    .line 1299
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1303
    :cond_1
    return-void
.end method

.method private static L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1314
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1315
    const-string v0, ""

    .line 1316
    if-eq v1, v6, :cond_0

    .line 1317
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1323
    :cond_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 1324
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x5f

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1328
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1330
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1336
    :cond_2
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1337
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1340
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v0, v1

    .line 1382
    :goto_0
    return-object v0

    .line 1331
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v3

    .line 1332
    goto :goto_0

    .line 1349
    :cond_5
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1350
    if-eq v5, v6, :cond_9

    .line 1352
    add-int/lit8 v1, v5, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1355
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 1360
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v6, v2

    .line 1373
    :goto_2
    const v2, 0x3b9aca00

    if-ge v6, v2, :cond_8

    move v2, v4

    move v5, v1

    .line 1374
    :goto_3
    const/16 v1, 0x9

    if-ge v2, v1, :cond_7

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    move-object v0, v1

    .line 1377
    goto :goto_0

    .line 1379
    :cond_6
    sget-object v1, Lcom/google/android/gm/provider/g;->Wp:Ljava/util/Random;

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v5, v1

    .line 1374
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 1373
    :cond_7
    mul-int/lit8 v2, v6, 0xa

    move v6, v2

    move v1, v5

    goto :goto_2

    :cond_8
    move-object v0, v3

    .line 1382
    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method private a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IJZZI)J
    .locals 5

    .prologue
    .line 539
    const/16 v0, 0xbe

    .line 540
    iget v1, p5, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bom:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 542
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    .line 543
    const-wide/16 p7, -0x1

    .line 545
    :cond_0
    const/16 v0, 0xc8

    .line 547
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 548
    const-string v1, "messages_conversation"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    const-string v1, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string v1, "desiredRendition"

    invoke-static {p6}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v1, "downloadedRendition"

    invoke-static {p6}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "downloadId"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    const-string v3, "automatic"

    if-eqz p10, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v1, "priority"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v3, "saveToSd"

    if-eqz p9, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v1, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    const-string v0, "messages_partId"

    iget-object v1, p5, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "originExtras"

    invoke-virtual {p5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->Ib()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "filename"

    iget-object v0, p5, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p5, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bor:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "mimeType"

    invoke-virtual {p5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "size"

    iget v1, p5, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0

    .line 553
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 555
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 560
    :cond_4
    invoke-virtual {p5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static a(JJLjava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "conversationId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", partId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rendition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveToSd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    return-object v0
.end method

.method private a(JJILjava/lang/String;)V
    .locals 7

    .prologue
    .line 727
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/io/File;

    invoke-static {p6}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 731
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 732
    const-string v1, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    const-string v1, "downloadId"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    iget-object v1, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 736
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/g;->ac(J)V

    .line 737
    return-void
.end method

.method private a(JJJLjava/lang/String;IZILjava/lang/String;)V
    .locals 13

    .prologue
    .line 1168
    move-object v3, p0

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/g;->a(JLjava/lang/String;IILjava/lang/String;)V

    .line 1170
    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_1

    .line 1172
    if-eqz p9, :cond_0

    const/4 v9, 0x1

    .line 1176
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v3 .. v11}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;IILjava/lang/String;)V

    .line 1182
    :goto_1
    return-void

    .line 1172
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1179
    :cond_1
    const-string v2, "Gmail"

    const-string v3, "Dropping download finished, as this is an thumbnail attachment.  %d/%d/%d/%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private a(JJJLjava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 19

    .prologue
    .line 1393
    if-eqz p9, :cond_4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1396
    :goto_0
    move-object/from16 v0, p10

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/g;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1397
    const/4 v2, 0x0

    .line 1398
    const/16 v16, 0x0

    .line 1402
    :try_start_0
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/g;->ab(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    move-wide/from16 v0, p11

    invoke-virtual {v3, v0, v1}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1404
    new-instance v15, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v15, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1408
    :goto_1
    :try_start_1
    new-instance v17, Ljava/io/FileOutputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1541
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1422
    const/16 v2, 0x1000

    new-array v3, v2, [B

    .line 1423
    const/4 v2, 0x0

    move/from16 v16, v2

    .line 1425
    :goto_2
    invoke-virtual {v15, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 1426
    const/4 v2, -0x1

    if-eq v6, v2, :cond_7

    .line 1427
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 1429
    add-int v2, v16, v6

    .line 1431
    if-nez p9, :cond_0

    .line 1432
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gm/provider/g;->bcM:J

    int-to-long v6, v6

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gm/provider/g;->bcM:J

    .line 1437
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 1438
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out reading attachment data."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1515
    :catch_0
    move-exception v2

    .line 1517
    :try_start_3
    const-string v3, "Gmail"

    const-string v4, "Cannot write to file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1518
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1520
    const/16 v13, 0x3e8

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1525
    :cond_1
    :goto_3
    :try_start_4
    invoke-static/range {p11 .. p12}, Lcom/google/android/gm/provider/g;->ab(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p11, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1534
    :cond_2
    :goto_4
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 1539
    :goto_5
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 1543
    :cond_3
    :goto_6
    return-void

    .line 1393
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/provider/g;->dO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1406
    :cond_5
    :try_start_7
    new-instance v15, Ljava/io/FileInputStream;

    invoke-static/range {p13 .. p13}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 1410
    :catch_1
    move-exception v3

    :goto_7
    :try_start_8
    const-string v3, "Gmail"

    const-string v4, "File not found for download %d or file %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p13, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1411
    const/16 v13, 0x194

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1534
    if-eqz v2, :cond_3

    .line 1535
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_6

    .line 1539
    :catch_2
    move-exception v2

    goto :goto_6

    .line 1415
    :catch_3
    move-exception v3

    :goto_8
    :try_start_a
    const-string v3, "Gmail"

    const-string v4, "This maybe called from tests where we don\'t have Download Manager."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1416
    const/16 v13, 0xc8

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1534
    if-eqz v2, :cond_3

    .line 1535
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6

    .line 1539
    :catch_4
    move-exception v2

    goto :goto_6

    :cond_6
    move/from16 v16, v2

    .line 1440
    goto/16 :goto_2

    .line 1445
    :cond_7
    if-eqz v16, :cond_8

    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_d

    if-eqz p17, :cond_d

    move/from16 v0, v16

    move/from16 v1, p17

    if-eq v0, v1, :cond_d

    .line 1449
    :cond_8
    :try_start_c
    const-string v2, "Gmail"

    const-string v3, "DownloadManager file size %d != expectedSize %d for attachment %d download %d or file %s to file %s."

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p13, v4, v5

    const/4 v5, 0x5

    aput-object v18, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1453
    const/16 v13, 0x194

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v8

    .line 1459
    if-eqz p9, :cond_9

    const/4 v10, 0x1

    :goto_9
    const/4 v11, 0x0

    const/16 v12, 0x194

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p1

    move-object/from16 v9, v18

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V

    .line 1463
    if-eqz p16, :cond_a

    .line 1465
    const-string v2, "Gmail"

    const-string v3, "Retrying download."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1469
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1470
    const-string v3, "filename"

    invoke-virtual {v8}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v3, "automatic"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "attachments"

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1475
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/provider/g;->c(JJZ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1534
    :goto_a
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 1539
    :goto_b
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_6

    .line 1542
    :catch_5
    move-exception v2

    goto/16 :goto_6

    .line 1459
    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    .line 1478
    :cond_a
    :try_start_f
    const-string v2, "Gmail"

    const-string v3, "Marking as fail."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    .line 1533
    :catchall_0
    move-exception v2

    move-object/from16 v3, v17

    .line 1534
    :goto_c
    if-eqz v15, :cond_b

    .line 1535
    :try_start_10
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 1539
    :cond_b
    :goto_d
    if-eqz v3, :cond_c

    .line 1540
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 1542
    :cond_c
    :goto_e
    throw v2

    .line 1483
    :cond_d
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1484
    const/16 v13, 0xc8

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V

    .line 1488
    if-eqz p9, :cond_1

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    const v3, 0x7f090377

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    const v3, 0x7f090378

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v2

    .line 1491
    if-nez p15, :cond_f

    .line 1493
    :goto_f
    if-nez v4, :cond_e

    move-object/from16 v4, p10

    .line 1500
    :cond_e
    :try_start_13
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v3, p10

    .line 1502
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    const/4 v5, 0x1

    move/from16 v0, v16

    int-to-long v8, v0

    const/4 v10, 0x0

    move-object/from16 v6, p14

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1511
    :goto_11
    :try_start_14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1491
    :cond_f
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p15, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v4

    goto :goto_f

    .line 1500
    :cond_10
    :try_start_15
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v3

    goto :goto_10

    .line 1506
    :catch_6
    move-exception v2

    .line 1509
    :try_start_16
    const-string v3, "Gmail"

    const-string v4, "Failed to save download to Downloads app."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_11

    .line 1530
    :catch_7
    move-exception v2

    :try_start_17
    const-string v2, "Gmail"

    const-string v3, "This maybe called from tests where we don\'t have Download Manager."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_4

    :catch_8
    move-exception v2

    goto/16 :goto_b

    :catch_9
    move-exception v2

    goto/16 :goto_5

    .line 1543
    :catch_a
    move-exception v2

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto/16 :goto_d

    :catch_c
    move-exception v3

    goto/16 :goto_e

    .line 1533
    :catchall_1
    move-exception v3

    move-object v15, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto/16 :goto_c

    :catchall_2
    move-exception v2

    move-object/from16 v3, v16

    goto/16 :goto_c

    :catchall_3
    move-exception v3

    move-object v15, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto/16 :goto_c

    .line 1415
    :catch_d
    move-exception v2

    move-object v2, v15

    goto/16 :goto_8

    .line 1410
    :catch_e
    move-exception v2

    move-object v2, v15

    goto/16 :goto_7
.end method

.method private a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V
    .locals 11

    .prologue
    .line 961
    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-static/range {p6 .. p6}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 963
    :goto_0
    if-eqz p8, :cond_2

    .line 967
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_0

    .line 968
    const/4 v2, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    .line 970
    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/g;->a(JJILjava/lang/String;)V

    .line 993
    :goto_1
    return-void

    .line 961
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 972
    :cond_2
    if-eqz v2, :cond_4

    .line 977
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_3

    .line 978
    const/4 v2, 0x3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    .line 980
    :cond_3
    const/16 v8, 0xc8

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/g;->a(JJILjava/lang/String;)V

    goto :goto_1

    .line 986
    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    iget v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_5

    .line 987
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->setState(I)V

    .line 988
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->aw(Ljava/lang/String;)V

    :cond_5
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p9

    move-object/from16 v9, p6

    .line 990
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/g;->a(JJILjava/lang/String;)V

    goto :goto_1
.end method

.method private a(JLjava/lang/String;IILjava/lang/String;)V
    .locals 7

    .prologue
    .line 1187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1188
    const-string v1, "downloadId"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1189
    if-eqz p6, :cond_0

    .line 1190
    const-string v1, "filename"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_0
    const-string v1, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    iget-object v1, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attachments"

    const-string v3, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1198
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/g;J)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/g;->ac(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/g;JJJLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19

    .prologue
    .line 55
    const-wide/16 v12, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v18, p13

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static aa(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/google/android/gm/provider/g;->bcO:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static ab(J)Z
    .locals 2

    .prologue
    .line 248
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ac(J)V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/google/android/gm/provider/Gmail;->g(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 345
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->n(Ljava/lang/String;J)V

    .line 346
    return-void
.end method

.method private ad(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v3, v0, [J

    aput-wide p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 688
    iget-object v3, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 690
    if-nez v2, :cond_0

    .line 691
    const-string v0, "Gmail"

    const-string v2, "null cursor from DownloadManager"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 704
    :goto_0
    return v1

    .line 696
    :cond_0
    :try_start_0
    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 697
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 698
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 699
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 702
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 699
    goto :goto_1

    .line 702
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private c(JJZ)V
    .locals 21

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    const-string v2, "Gmail"

    const-string v3, "SQLiteDatabase lock held beforecalling startAttachmentDownloadInDownloadManager"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 392
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    sget-object v4, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 395
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    const-string v2, "Gmail"

    const-string v3, "Cannot find attachment %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 531
    :goto_0
    return-void

    .line 406
    :cond_1
    :try_start_1
    new-instance v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-direct {v6}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;-><init>()V

    .line 407
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    .line 408
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    .line 409
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 410
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->fo(Ljava/lang/String;)V

    .line 411
    iget-wide v2, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bku:J

    .line 412
    iget-wide v4, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->bol:J

    .line 413
    iget-object v6, v6, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 414
    const/4 v7, 0x6

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v7

    .line 416
    const/16 v8, 0xa

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 417
    const/16 v8, 0x9

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 418
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 420
    const/4 v8, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-static/range {v2 .. v8}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v18

    .line 425
    if-eqz v7, :cond_3

    const/4 v13, 0x1

    .line 426
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/g;->bcK:Lcom/google/android/gm/provider/bG;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    invoke-interface {v7}, Lcom/google/android/gm/provider/j;->DR()I

    move-result v9

    move-wide v10, v4

    move-object v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gm/provider/bG;->a(IJLjava/lang/String;Z)Ljava/net/URI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 429
    const/4 v7, 0x0

    .line 431
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    invoke-interface {v9}, Lcom/google/android/gm/provider/j;->Cm()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 436
    :goto_3
    if-nez v7, :cond_4

    .line 440
    :try_start_3
    const-string v2, "Gmail"

    const-string v3, "Authentication failed for attachment %d, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 420
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 425
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 445
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/google/android/gm/provider/bG;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    .line 448
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/g;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/google/android/common/http/UrlRules;->a(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v10

    .line 449
    invoke-virtual {v10, v9}, Lcom/google/android/common/http/UrlRules;->do(Ljava/lang/String;)Lcom/google/android/common/http/j;

    move-result-object v10

    .line 450
    invoke-virtual {v10, v9}, Lcom/google/android/common/http/j;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 452
    if-nez v9, :cond_6

    .line 453
    const-string v4, "Gmail"

    const-string v5, "Abandon download of %s because it is blocked by rules."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 455
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 456
    const-string v5, "status"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "attachments"

    const-string v7, "_id = ? OR _id = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 528
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gm/provider/g;->ac(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 530
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 459
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mail/utils/b;->ay(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 460
    const-string v7, "Gmail"

    const-string v9, "Abandon download of %s because there is no network connection."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v7, v9, v10}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    move-wide v8, v2

    move-wide v10, v4

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v10

    .line 467
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-eqz v4, :cond_7

    .line 468
    const/4 v13, 0x0

    const/16 v14, 0x3e8

    move-object/from16 v5, p0

    move-wide v6, v2

    move-wide/from16 v8, p3

    move-object/from16 v11, v17

    move/from16 v12, v16

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V

    .line 473
    :cond_7
    const/4 v13, 0x0

    const/16 v14, 0x3e8

    move-object/from16 v5, p0

    move-wide v6, v2

    move-wide/from16 v8, p1

    move-object/from16 v11, v17

    move/from16 v12, v16

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    const v5, 0x7f090376

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 530
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 486
    :cond_8
    :try_start_6
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v5, "Cookie"

    invoke-virtual {v4, v5, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    move-result-object v4

    .line 488
    const-wide/16 v6, -0x1

    cmp-long v5, p3, v6

    if-nez v5, :cond_9

    .line 489
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 494
    :cond_9
    if-eqz p5, :cond_a

    .line 495
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 498
    :cond_a
    const/4 v5, 0x0

    .line 499
    const-wide/16 v6, -0x1

    .line 502
    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v8, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v4

    .line 503
    const/4 v6, 0x1

    .line 515
    :goto_5
    if-eqz v6, :cond_5

    .line 516
    :try_start_8
    sget-object v6, Lcom/google/android/gm/provider/g;->bcO:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 519
    const-string v7, "downloadId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v7, "status"

    const/16 v8, 0xc0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "attachments"

    const-string v9, "_id = ? OR _id = ?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 524
    const-string v6, "Gmail"

    const-string v7, "ATTACHMENT: start downloading attachment %d dlid=%d, %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v4, 0x2

    aput-object v18, v8, v4

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 504
    :catch_0
    move-exception v4

    .line 505
    const-string v8, "Gmail"

    const-string v9, "ATTACHMENT: DownloadManager error downloading attachment %d, %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v18, v10, v11

    invoke-static {v8, v4, v9, v10}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 509
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 510
    const-string v8, "status"

    const/16 v9, 0x194

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "attachments"

    const-string v10, "_id = ? OR _id = ?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide/from16 v19, v6

    move v6, v5

    move-wide/from16 v4, v19

    goto/16 :goto_5

    :catch_1
    move-exception v9

    goto/16 :goto_3
.end method

.method private static dC(I)Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dD(I)Z
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dE(I)Z
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dF(I)Z
    .locals 1

    .prologue
    .line 223
    const/16 v0, 0xc1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dG(I)Z
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dH(I)Z
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0xc8

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dP(Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    .line 269
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/g;->dO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 271
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v6, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v4, v3, v2

    .line 272
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 271
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 275
    :cond_0
    return-wide v0
.end method

.method static dQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_0
    return-object p0
.end method

.method public static dR(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 713
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final DN()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1000
    invoke-direct {p0}, Lcom/google/android/gm/provider/g;->DM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "Gmail"

    const-string v1, "Not enough free space to download attachments in background"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1085
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    sget-object v2, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v3, "status = ?"

    new-array v4, v8, [Ljava/lang/String;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1015
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 1016
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1017
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1054
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1020
    :cond_1
    :try_start_1
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 1021
    iget-object v3, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 1022
    if-nez v2, :cond_2

    .line 1023
    const-string v0, "Gmail"

    const-string v2, "null cursor from DownloadManager"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1027
    :cond_2
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1028
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1029
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1030
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1033
    const-string v0, "Gmail"

    const-string v3, "ATTACHMENT: existing download in progress (dlid=%d), exiting"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1039
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1054
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1039
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1042
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 1043
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 1044
    if-eqz v2, :cond_d

    .line 1047
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-lez v0, :cond_6

    move v0, v8

    .line 1049
    :goto_2
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v10, v0

    .line 1054
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1057
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    sget-object v2, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v3, "downloadId = ?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v9

    const-string v7, "priority DESC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1061
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1062
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1063
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v0

    .line 1065
    if-eqz v0, :cond_7

    move v6, v8

    .line 1068
    :goto_4
    if-eqz v6, :cond_5

    if-nez v10, :cond_b

    .line 1069
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "scale"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "status"

    const/4 v10, -0x1

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_8

    move v0, v8

    :goto_5
    if-nez v0, :cond_9

    int-to-float v0, v1

    int-to-float v1, v4

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_9

    :goto_6
    if-eqz v8, :cond_a

    .line 1070
    const-string v0, "Gmail"

    const-string v1, "ATTACHMENT: not downloading full version id=%d b/c battery level is low."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1084
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1039
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    move v0, v9

    .line 1047
    goto/16 :goto_2

    .line 1049
    :catchall_2
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    move v6, v9

    .line 1065
    goto :goto_4

    :cond_8
    move v0, v9

    .line 1069
    goto :goto_5

    :cond_9
    move v8, v9

    goto :goto_6

    .line 1073
    :cond_a
    const-wide/16 v4, -0x1

    move-object v1, p0

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/provider/g;->c(JJZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    .line 1084
    :catchall_3
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1076
    :cond_b
    :try_start_a
    const-string v0, "Gmail"

    const-string v1, "ATTACHMENT: unable to download full version id=%d b/c DL mgr has paused an existing DL."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_7

    .line 1080
    :cond_c
    const-string v0, "Gmail"

    const-string v1, "ATTACHMENT: unable to find attachment download record to work on, exiting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :cond_d
    move v10, v9

    goto/16 :goto_3
.end method

.method final DO()V
    .locals 3

    .prologue
    .line 1204
    const-string v0, "Gmail"

    const-string v1, "Purging old attachments."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1206
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Db should not be locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/g;->DP()V

    .line 1213
    invoke-direct {p0}, Lcom/google/android/gm/provider/g;->DQ()V

    .line 1214
    return-void
.end method

.method public final a(JII)V
    .locals 31

    .prologue
    .line 872
    const/4 v2, 0x0

    .line 873
    sparse-switch p3, :sswitch_data_0

    move/from16 p4, v2

    .line 881
    :goto_0
    :sswitch_0
    sget-object v2, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    const-string v3, "fromAddress"

    aput-object v3, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments, messages"

    const-string v5, "downloadId = ? AND attachments.messages_messageId = messages.messageId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "saveToSd DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Gmail"

    const-string v5, "No attachments found with downloadId %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v11

    const/16 v2, 0xa

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v12, 0x1

    :goto_2
    invoke-static/range {v6 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Gmail"

    const-string v13, "Download finished with status %d for download %d. %s"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    invoke-static {v5, v13, v0}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    :goto_3
    const/16 v2, 0xb

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v2, 0xc

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v5, 0xd

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {p4 .. p4}, Lcom/google/android/gm/provider/g;->dG(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v26, 0x0

    if-eqz v2, :cond_3

    const/16 v29, 0x1

    :goto_4
    move-object/from16 v13, p0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v24, p1

    invoke-direct/range {v13 .. v30}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/gm/provider/g;->ac(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 875
    :sswitch_1
    const/16 p4, 0xc8

    .line 876
    goto/16 :goto_0

    .line 881
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_2
    :try_start_1
    const-string v23, ""

    goto :goto_3

    :cond_3
    const/16 v29, 0x0

    goto :goto_4

    :cond_4
    const-string v2, "Gmail"

    const-string v5, "Download id %d failed with status %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v16

    invoke-static {v2, v5, v13}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v24, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, p4

    invoke-direct/range {v13 .. v24}, Lcom/google/android/gm/provider/g;->a(JJJLjava/lang/String;IZILjava/lang/String;)V

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    move-object/from16 v7, p0

    move/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gm/provider/g;->a(JLjava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    invoke-interface {v2}, Lcom/google/android/gm/provider/j;->DS()V

    .line 882
    return-void

    .line 873
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZI)V
    .locals 21

    .prologue
    .line 575
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 578
    const-string v3, "Gmail"

    const-string v4, "queryAndStartDownloadingAttachment for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 582
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    sget-object v4, Lcom/google/android/gm/provider/g;->aCz:[Ljava/lang/String;

    const-string v5, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p6 .. p6}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 589
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Long;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v2

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v2

    .line 590
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 591
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    .line 592
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v4, v19, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput-object v4, v19, v2

    .line 594
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    const/16 v2, 0xa

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 597
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v2

    .line 598
    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v17, v2

    .line 599
    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v18, v2

    .line 600
    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 607
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 608
    aget v3, v18, v2

    invoke-static {v3}, Lcom/google/android/gm/provider/g;->dG(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v19, v2

    invoke-static {v3}, Lcom/google/android/gm/provider/g;->dR(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 609
    :cond_2
    const/4 v3, 0x0

    aput-object v3, v19, v2

    .line 607
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 613
    :cond_4
    if-eqz p7, :cond_6

    const/4 v2, 0x1

    move v15, v2

    .line 616
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-gt v2, v15, :cond_8

    .line 617
    aget-object v3, v16, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 618
    const-wide/16 v10, -0x1

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    :goto_4
    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v14, p8

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IJZZI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v16, v2

    .line 616
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 613
    :cond_6
    const/4 v2, 0x0

    move v15, v2

    goto :goto_2

    .line 618
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 623
    :cond_8
    const/4 v2, 0x0

    aget v2, v18, v2

    invoke-static {v2}, Lcom/google/android/gm/provider/g;->dC(I)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget v2, v18, v2

    invoke-static {v2}, Lcom/google/android/gm/provider/g;->dC(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 625
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() starting new download"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 680
    :cond_9
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/provider/g;->c(JJZ)V

    .line 683
    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/g;->ac(J)V

    .line 684
    :cond_b
    :goto_6
    return-void

    .line 629
    :cond_c
    const/4 v2, 0x0

    aget-object v2, v19, v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    aget-object v2, v19, v2

    if-eqz v2, :cond_e

    .line 631
    :cond_d
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() file exists either on cache or sd card, will copy if needed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 634
    aget-object v2, v19, v15

    if-nez v2, :cond_b

    .line 635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gm/provider/g;->bcL:Lcom/google/android/gm/provider/j;

    new-instance v2, Lcom/google/android/gm/provider/i;

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move v5, v15

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, v19

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gm/provider/i;-><init>(Lcom/google/android/gm/provider/g;[Ljava/lang/Long;IJJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZ[Ljava/lang/String;)V

    invoke-interface {v14, v2}, Lcom/google/android/gm/provider/j;->g(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 649
    :cond_e
    aget v2, v18, v15

    invoke-static {v2}, Lcom/google/android/gm/provider/g;->dE(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 650
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() download already running"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 652
    aget-wide v2, v17, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gm/provider/g;->ad(J)Z

    move-result v2

    .line 653
    if-eqz v2, :cond_a

    .line 654
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() download was paused. Forcing it to start."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aget-wide v6, v17, v15

    aput-wide v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 658
    aget-object v2, v16, v15

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz p7, :cond_f

    const/4 v10, 0x1

    :goto_7
    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V

    .line 662
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gm/provider/g;->c(JJZ)V

    goto/16 :goto_5

    .line 658
    :cond_f
    const/4 v10, 0x0

    goto :goto_7

    .line 666
    :cond_10
    const-string v2, "Gmail"

    const-string v3, "AttachmentManager.queryAndStartDownloadingAttachment() refetch attachment"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 669
    const/4 v2, 0x0

    :goto_8
    if-gt v2, v15, :cond_9

    .line 670
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 671
    const-string v4, "filename"

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v4, "automatic"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "attachments"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v9, v16, v2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 590
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data

    .line 591
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZZI)V
    .locals 15

    .prologue
    .line 365
    const-wide/16 v10, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IJZZI)J

    move-result-wide v10

    .line 368
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v3, "Gmail"

    const-string v4, "enqueueAttachment attachmentId: %d: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 375
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/g;->ac(J)V

    .line 376
    return-void
.end method

.method public final b(J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1555
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_conversation = ? AND desiredRendition = ?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v7}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJLjava/lang/String;IZ)Landroid/os/ParcelFileDescriptor;
    .locals 11

    .prologue
    .line 771
    invoke-static/range {p1 .. p7}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v9

    .line 773
    const-string v0, "Gmail"

    const-string v1, "AttachmentManager.openAttachment: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 775
    const/4 v8, 0x0

    .line 778
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/g;->bcI:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ? AND saveToSd = ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p6 .. p6}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    if-eqz p7, :cond_1

    const-wide/16 v6, 0x1

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 780
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 782
    invoke-static {v0}, Lcom/google/android/gm/provider/g;->dG(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 783
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Download not complete or not successful."

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 778
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 786
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/g;->dQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 792
    :try_start_3
    const-string v4, "Gmail"

    const-string v5, "Opening attachment %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 793
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 796
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 803
    if-eqz v1, :cond_3

    .line 804
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    .line 796
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 799
    :cond_4
    const-string v0, "Gmail"

    const-string v2, "Attachment is not requested %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 800
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v2, "Attachment not requested."

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 803
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public final c(JJLjava/lang/String;IZ)I
    .locals 13

    .prologue
    .line 909
    iget-object v1, p0, Lcom/google/android/gm/provider/g;->mAccount:Ljava/lang/String;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    move-result-object v11

    .line 911
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v11, :cond_0

    .line 912
    iget v0, v11, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-wide v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gm/provider/g;->a(JJLjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 915
    const-string v1, "Gmail"

    const-string v2, "cancelDownloadRequest: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 917
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "downloadId"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "filename"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "saveToSd"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attachments"

    const-string v3, "messages_messageId = ? AND messages_partId = ? AND desiredRendition = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p6 .. p6}, Lcom/android/mail/providers/F;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "saveToSd DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 921
    const/4 v0, 0x0

    .line 922
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 923
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 924
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 925
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 926
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 930
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/g;->ab(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v6, 0x0

    aput-wide v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 934
    :cond_1
    const/4 v10, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v6, v11

    move/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gm/provider/g;->a(JJLcom/google/android/gm/provider/uiprovider/GmailAttachment;Ljava/lang/String;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    const/4 v0, 0x1

    .line 938
    goto :goto_1

    .line 912
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 939
    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 941
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return v0

    .line 939
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 941
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 839
    const-string v0, "extra_download_id"

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 840
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->bcN:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    :goto_0
    return-void

    .line 845
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 846
    const-string v0, "Gmail"

    const-string v1, "Received notification from DownloadManager with invalid download id"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 850
    :cond_1
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    .line 851
    iget-object v3, p0, Lcom/google/android/gm/provider/g;->azU:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 853
    if-nez v2, :cond_2

    .line 854
    const-string v0, "Gmail"

    const-string v1, "null cursor from DownloadManager"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 859
    :cond_2
    :try_start_0
    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 860
    const-string v4, "reason"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 861
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 862
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 863
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 864
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/google/android/gm/provider/g;->a(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final e(JJ)V
    .locals 5

    .prologue
    .line 891
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 892
    const-string v1, "messages_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 893
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 894
    iget-object v2, p0, Lcom/google/android/gm/provider/g;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "attachments"

    const-string v4, "messages_messageId = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method public final v(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    const-string v0, "Gmail"

    const-string v1, "AttachmentManager: setting watched ids %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcN:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 351
    return-void
.end method

.method public final w(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    const-string v0, "Gmail"

    const-string v1, "AttachmentManager: removing watched ids %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    iget-object v0, p0, Lcom/google/android/gm/provider/g;->bcN:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 356
    return-void
.end method
