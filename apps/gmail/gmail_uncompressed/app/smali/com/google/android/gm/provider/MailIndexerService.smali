.class public Lcom/google/android/gm/provider/MailIndexerService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static bkK:I

.field private static bkL:Ljava/lang/String;

.field private static final bkM:[Ljava/lang/String;

.field private static final bkN:[Ljava/lang/String;

.field private static final bkO:[Ljava/lang/String;

.field private static final bkP:[Ljava/lang/String;

.field private static volatile bkQ:Lcom/google/android/gm/provider/MailIndexerService;

.field private static bkS:I


# instance fields
.field private volatile bkR:Z

.field private mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x32

    sput v0, Lcom/google/android/gm/provider/MailIndexerService;->bkK:I

    .line 53
    const-string v0, "gmail_full_text_search_message_index_batch_size"

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkL:Ljava/lang/String;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "messageId"

    aput-object v1, v0, v3

    const-string v1, "conversation"

    aput-object v1, v0, v4

    const-string v1, "subject"

    aput-object v1, v0, v5

    const-string v1, "snippet"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkM:[Ljava/lang/String;

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "snippet"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkN:[Ljava/lang/String;

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "docid"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkO:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "tbl_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkP:[Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "MailIndexerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    .line 92
    return-void
.end method

.method static G(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 694
    const-string v0, "DROP TABLE IF EXISTS conversation_fts_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    const-string v0, "DROP TABLE IF EXISTS message_fts_table"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    const-string v0, "DROP TABLE IF EXISTS message_fts_table_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    const-string v0, "DROP TABLE IF EXISTS conversation_fts_table_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method static H(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 701
    invoke-static {p0}, Lcom/google/android/gm/provider/MailIndexerService;->G(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 702
    invoke-static {p0}, Lcom/google/android/gm/provider/MailIndexerService;->I(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 703
    return-void
.end method

.method private Hf()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 652
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 657
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->bZ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail_large_data_partition_min_indexing_available_space"

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v2, v3, v6, v7}, Lcom/google/android/gsf/c;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 662
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 673
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 662
    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 666
    long-to-float v2, v4

    long-to-float v3, v6

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v8

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    move v2, v0

    .line 668
    :goto_1
    if-nez v2, :cond_2

    .line 669
    const-string v3, "Gmail"

    const-string v8, "Data space requirement not met for indexing. Total: %d, Avail: %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v3, v8, v9}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    .line 666
    goto :goto_1
.end method

.method public static I(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 708
    const-string v0, "conversation_fts_table"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailIndexerService;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const-string v0, "CREATE VIRTUAL TABLE conversation_fts_table USING FTS4 (subject TEXT, snippet TEXT, fromAddress TEXT, )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 720
    :cond_0
    const-string v0, "message_fts_table"

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailIndexerService;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    const-string v0, "CREATE VIRTUAL TABLE message_fts_table USING FTS4 (conversation TEXT, subject TEXT, snippet TEXT, body TEXT, fromAddress TEXT, toAddresses TEXT, ccAddresses TEXT, bccAddresses TEXT, )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    :cond_1
    const-string v0, "CREATE TABLE IF NOT EXISTS message_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    const-string v0, "CREATE TABLE IF NOT EXISTS conversation_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method private N(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 19

    .prologue
    .line 215
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 216
    const-string v4, "message_fts_table"

    const-string v5, "message_fts_table_index"

    const-string v6, "messages"

    const-string v7, "message_fts_table_index.docid = messages.messageId"

    const-string v8, "messages.messageId is null"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gm/provider/MailIndexerService;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 217
    if-eqz v11, :cond_1

    .line 219
    const/4 v5, 0x1

    .line 357
    :cond_0
    :goto_0
    return v5

    .line 222
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailIndexerService;->Hf()Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    const/4 v5, 0x0

    goto :goto_0

    .line 227
    :cond_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 228
    const-string v4, "messages"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "messageId"

    aput-object v6, v5, v2

    const-string v6, "queryId = 0 AND messageId NOT IN (SELECT docid from message_fts_table_index)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 233
    if-nez v4, :cond_3

    .line 234
    const/4 v5, 0x0

    goto :goto_0

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v2, :cond_4

    .line 239
    const/4 v5, 0x1

    goto :goto_0

    .line 243
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 244
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 250
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v6

    .line 251
    const-string v2, "Gmail"

    const-string v4, "Number of messages to index: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailIndexerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/gm/provider/MailIndexerService;->bkL:Ljava/lang/String;

    sget v5, Lcom/google/android/gm/provider/MailIndexerService;->bkK:I

    invoke-static {v2, v4, v5}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 257
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const/4 v2, 0x0

    .line 259
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    move v5, v11

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 261
    sget-object v10, Lcom/google/android/gm/provider/MailIndexerService;->bkM:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13}, Lcom/google/android/gm/provider/MailEngine;->c([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v10

    .line 263
    if-eqz v10, :cond_7

    .line 265
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 266
    new-instance v2, Landroid/content/ContentValues;

    const/16 v11, 0x9

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 267
    const-string v11, "messageId"

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v11, "conversation"

    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v11, "subject"

    const/4 v12, 0x2

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v11, "snippet"

    const/4 v12, 0x3

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 276
    const-string v12, "fromAddress"

    const/4 v13, 0x5

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v12, "toAddresses"

    const/4 v13, 0x6

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v12, "ccAddresses"

    const/4 v13, 0x7

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v12, "bccAddresses"

    const/16 v13, 0x8

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v12, "body"

    invoke-static {v11}, Lcom/android/mail/utils/N;->cD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v2, :cond_9

    .line 310
    const-string v2, "Gmail"

    const-string v3, "Yielded for contention, while indexing messages"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    const/4 v5, 0x1

    .line 313
    goto/16 :goto_0

    .line 287
    :catch_0
    move-exception v2

    .line 289
    :try_start_2
    const-string v11, "Gmail"

    const-string v12, "Unable to decompress the message body for indexing"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v2, v12, v13}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 290
    :catch_1
    move-exception v2

    .line 291
    :try_start_3
    const-string v11, "Gmail"

    const-string v12, "Out of memory error when loading message body"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v2, v12, v13}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 297
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_8

    .line 306
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 300
    :catch_2
    move-exception v2

    .line 301
    :try_start_4
    const-string v11, "Gmail"

    const-string v12, "IllegalStateExcption reading message from cursor"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v2, v12, v13}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 306
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 321
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v7, :cond_a

    if-ne v4, v6, :cond_12

    .line 322
    :cond_a
    const-string v2, "Gmail"

    const-string v10, "Indexing batch with %d messages"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v10, v11}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 327
    :try_start_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 328
    if-eqz v2, :cond_c

    .line 330
    :try_start_6
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v12

    if-nez v12, :cond_e

    .line 338
    :cond_c
    :goto_4
    :try_start_7
    sget v2, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    int-to-long v12, v2

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v2, :cond_b

    .line 340
    :cond_d
    const-string v2, "Gmail"

    const-string v5, "Yielded for contention, while indexing messages"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v5, v10}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    const/4 v2, 0x1

    .line 347
    :goto_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 349
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 352
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 355
    :goto_6
    if-eqz v2, :cond_13

    move v5, v2

    goto/16 :goto_0

    .line 330
    :cond_e
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/MailEngine;->Ge()Z

    move-result v12

    if-eqz v12, :cond_c

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "messageId"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    const-string v15, "message_fts_table"

    const-string v16, "docid = ?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_f
    if-eqz v14, :cond_10

    const-string v15, "docid"

    invoke-virtual {v12, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "docid"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v14, "conversation"

    const-string v15, "conversation"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "subject"

    const-string v15, "subject"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "snippet"

    const-string v15, "snippet"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "body"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    const-string v15, "body"

    invoke-virtual {v12, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v14, "fromAddress"

    const-string v15, "fromAddress"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "toAddresses"

    const-string v15, "toAddresses"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "ccAddresses"

    const-string v15, "ccAddresses"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "bccAddresses"

    const-string v15, "bccAddresses"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message_fts_table"

    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v2, "message_fts_table_index"

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_4

    .line 331
    :catch_3
    move-exception v2

    .line 335
    :try_start_9
    new-instance v4, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 349
    :catchall_2
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :cond_12
    move v2, v5

    goto/16 :goto_6

    :cond_13
    move v5, v2

    goto/16 :goto_2

    :cond_14
    move v2, v5

    goto/16 :goto_5
.end method

.method private O(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 365
    iget-object v1, p1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 367
    const-string v2, "conversation_fts_table"

    const-string v3, "conversation_fts_table_index"

    const-string v4, "conversations"

    const-string v5, "conversation_fts_table_index.docid = conversations._id"

    const-string v6, "conversations._id is null"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailIndexerService;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 368
    if-eqz v11, :cond_0

    move v0, v9

    .line 431
    :goto_0
    return v0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailIndexerService;->Hf()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    .line 373
    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    const-string v2, "conversations"

    sget-object v3, Lcom/google/android/gm/provider/MailIndexerService;->bkN:[Ljava/lang/String;

    const-string v4, "queryId = 0 AND _id NOT IN (SELECT docid from conversation_fts_table_index)"

    move-object v5, v12

    move-object v6, v12

    move-object v7, v12

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 383
    if-nez v2, :cond_2

    move v0, v10

    .line 384
    goto :goto_0

    .line 387
    :cond_2
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 389
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    .line 392
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 394
    const-string v4, "_id"

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string v4, "subject"

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v4, "snippet"

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "fromAddress"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 401
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 404
    const-string v2, "Gmail"

    const-string v3, "Number of conversations to index: %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 409
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 410
    if-eqz v0, :cond_6

    .line 411
    iget-object v3, p1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_8

    .line 413
    :cond_6
    :goto_2
    sget v0, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v0, :cond_5

    .line 415
    :cond_7
    const-string v0, "Gmail"

    const-string v2, "Yielded for contention while indexing conversations"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v9

    .line 422
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 411
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->Ge()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "conversation_fts_table"

    const-string v8, "docid = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v10, v12

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v7, "docid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "docid"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "subject"

    const-string v7, "subject"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "snippet"

    const-string v7, "snippet"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "fromAddress"

    const-string v7, "fromAddress"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conversation_fts_table"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "conversation_fts_table_index"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 423
    :catch_0
    move-exception v0

    .line 427
    :try_start_4
    new-instance v2, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 429
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_9
    move v0, v11

    goto :goto_3
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 551
    const/4 v8, 0x0

    .line 562
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/provider/MailIndexerService;->bkO:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 566
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 574
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v0, :cond_1

    .line 576
    const/4 v0, 0x1

    .line 642
    :goto_1
    return v0

    .line 580
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 582
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE docid = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 586
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 589
    const/4 v1, 0x0

    .line 590
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 593
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    const/4 v1, 0x1

    .line 597
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 600
    :goto_3
    if-eqz v1, :cond_3

    .line 602
    :try_start_4
    const-string v1, "docid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    const-string v1, "docid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, p3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 612
    :cond_3
    :goto_4
    :try_start_5
    sget v0, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    if-eqz v0, :cond_2

    .line 614
    :cond_4
    const-string v0, "Gmail"

    const-string v1, "Yielded for contention, while deleting indexed content from table: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 617
    const/4 v0, 0x1

    .line 622
    :goto_5
    const-string v1, "Gmail"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 623
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of old index entries deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 626
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 629
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 630
    :catch_0
    move-exception v0

    .line 634
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 597
    :catch_1
    move-exception v4

    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 628
    :catchall_1
    move-exception v0

    .line 629
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 639
    throw v0

    .line 597
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    throw v0

    .line 604
    :catch_2
    move-exception v1

    .line 607
    const-string v4, "Gmail"

    const-string v5, "Exception attempting to delete docid: %d from table: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object p2, v6, v0

    invoke-static {v4, v1, v5, v6}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    .line 635
    :catch_3
    move-exception v0

    .line 639
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :catch_4
    move-exception v0

    .line 634
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 635
    :catch_5
    move-exception v0

    .line 639
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move v0, v8

    goto :goto_5
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 742
    const-string v2, "sqlite_master"

    sget-object v3, Lcom/google/android/gm/provider/MailIndexerService;->bkP:[Ljava/lang/String;

    const-string v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v10

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_1

    .line 748
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 750
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 753
    :goto_1
    return v1

    :cond_0
    move v1, v10

    .line 748
    goto :goto_0

    .line 750
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v10

    .line 753
    goto :goto_1
.end method

.method static eY(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 191
    sget-object v0, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "Gmail"

    const-string v2, "Database access which requesting indexer delay for account: %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    iput-boolean v5, v0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 98
    sget v0, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailIndexerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/provider/MailIndexerService;->bkS:I

    .line 108
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "Gmail"

    const-string v2, "MailIndexerService handling intent with action: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 114
    const-string v1, "com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->bkR:Z

    .line 120
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    .line 122
    sput-object p0, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    .line 126
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    const-string v0, "Gmail"

    const-string v1, "No MailEngine for account: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    sput-object v6, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->FT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "Gmail"

    const-string v2, "Background tasks have been disabled for testing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gg()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    sput-object v6, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 141
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Ge()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    const-string v0, "Gmail"

    const-string v2, "Full text search has been disabled for this account: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/provider/MailIndexerService;->mAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    sput-object v6, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 149
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->I(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailIndexerService;->N(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 157
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailIndexerService;->O(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v0

    .line 165
    :cond_4
    if-nez v0, :cond_5

    .line 167
    const-string v0, "Gmail"

    const-string v2, "Successful index run, cancel next scheduled index run"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gg()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :cond_5
    :goto_1
    sput-object v6, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 173
    :try_start_4
    const-string v2, "Gmail"

    const-string v3, "Database appears to be corrupt.  Canceling index pass"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Gg()V

    .line 179
    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "Gmail"

    const-string v2, "Recreating search index tables"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v1}, Lcom/google/android/gm/provider/MailIndexerService;->H(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string v0, "Gmail"

    const-string v2, "Search index tables created successfully"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    sput-object v6, Lcom/google/android/gm/provider/MailIndexerService;->bkQ:Lcom/google/android/gm/provider/MailIndexerService;

    throw v0

    .line 179
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
