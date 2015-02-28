.class final Lcom/google/android/gm/provider/bf;
.super Lcom/google/android/gm/provider/x;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/bf;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/x;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method private Hi()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS search_status"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE search_status (_id INTEGER PRIMARY KEY, app_data_search_enabled INTEGER)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/bf;->cb(Z)V

    .line 396
    return-void
.end method

.method private Hl()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT app_data_search_enabled FROM search_status WHERE _id = 0"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 458
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v0, :cond_0

    .line 462
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 464
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 459
    goto :goto_0

    .line 462
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 464
    goto :goto_1

    .line 462
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private Hm()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP INDEX IF EXISTS search_sequence_messageId_type_labelId"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS insert_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_messages_keychange"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS insert_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS search_sequence"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private Hn()V
    .locals 5

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS insert_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_messages_keychange"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS insert_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS update_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    const-string v0, "  DELETE FROM search_sequence WHERE messageId = old.messageId\n  AND type IN (0,1);\n  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,1,  old.messageId, old.conversation);\n"

    .line 495
    const-string v1, "  INSERT INTO search_sequence (type,action,messageId,conversationId)  VALUES(0,0,  new.messageId, new.conversation);\n"

    .line 500
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TRIGGER insert_messages AFTER INSERT ON messages\nBEGIN\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TRIGGER update_messages AFTER UPDATE ON messages\nWHEN new.messageId = old.messageId AND new.conversation = old.conversation\nBEGIN\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE TRIGGER update_messages_keychange AFTER UPDATE ON messages\nWHEN new.messageId != old.messageId OR new.conversation != old.conversation\nBEGIN\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "END;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TRIGGER delete_messages AFTER DELETE ON messages\nBEGIN\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "END;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER insert_message_labels AFTER INSERT ON message_labels\nBEGIN\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,0,  new.message_messageId, new.message_conversation, new.labels_id);\nEND;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER update_message_labels AFTER UPDATE ON message_labels\nBEGIN\n  DELETE FROM search_sequence WHERE messageId = old.message_messageId\n  AND type = 1 AND labelId = old.labels_id;\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,1,  old.message_messageId, old.message_conversation, old.labels_id);\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,0,  new.message_messageId, old.message_conversation, new.labels_id);\nEND;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER delete_message_labels AFTER DELETE ON message_labels\nBEGIN\n  DELETE FROM search_sequence WHERE messageId = old.message_messageId\n  AND type = 1 AND labelId = old.labels_id;\n  INSERT INTO search_sequence (type,action,messageId,conversationId,labelId)  VALUES(1,1,  old.message_messageId, old.message_conversation, old.labels_id);\nEND;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method private Ho()V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hm()V

    .line 559
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE search_sequence (\n_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER NOT NULL DEFAULT 0, action INTEGER NOT NULL DEFAULT 0, messageId INTEGER NOT NULL DEFAULT 0, conversationId INTEGER NOT NULL DEFAULT 0, labelId INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hn()V

    .line 568
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX search_sequence_messageId_type_labelId ON search_sequence (messageId,type,labelId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO search_sequence (type,action,messageId,conversationId)  SELECT 0,0,  messageId,conversation FROM messages;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO search_sequence (type,action,messageId,conversationId,labelId) SELECT 1,0, message_messageId,message_conversation,labels_id FROM message_labels;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private Hp()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS dasher_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE dasher_info (\n  _id INTEGER PRIMARY KEY,\n  domainTitle TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private Hq()V
    .locals 3

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FR()V

    .line 1307
    return-void
.end method

.method private cb(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 385
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 386
    const-string v2, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v2, "app_data_search_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "search_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 389
    return-void
.end method


# virtual methods
.method public final DU()V
    .locals 5

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Bootstrapping db: %s Current version is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS engine_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE engine_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages (_id INTEGER PRIMARY KEY,messageId INTEGER,conversation INTEGER,fromAddress TEXT,toAddresses TEXT,ccAddresses TEXT,bccAddresses TEXT,replyToAddresses TEXT,dateSentMs INTEGER,dateReceivedMs INTEGER,subject TEXT,snippet TEXT,listInfo TEXT,personalLevel INTEGER,body TEXT,bodyEmbedsExternalResources INTEGER,joinedAttachmentInfos STRING,synced INTEGER,error TEXT, clientCreated INTEGER, refMessageId INTEGER DEFAULT 0, forward INTEGER DEFAULT 0, includeQuotedText INTEGER DEFAULT 0, quoteStartPos INTEGER DEFAULT 0, bodyCompressed BLOB DEFAULT NULL, customFromAddress TEXT DEFAULT NULL, queryId INTEGER DEFAULT 1, spamDisplayedReasonType INTEGER,deliveryChannel INTEGER,referencesRfc822MessageIds TEXT,showSendersFullEmailAddress INTEGER,viaDomain TEXT,showForgedFromMeWarning INTEGER,refAdEventId TEXT,permalink TEXT,clipped INTEGER DEFAULT 0,UNIQUE(messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, priority INTEGER DEFAULT 0, mimeType TEXT DEFAULT NULL, size INTEGER DEFAULT 0, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE labels ( _id INTEGER PRIMARY KEY, canonicalName TEXT, name TEXT, numConversations TEXT, numUnreadConversations TEXT, color INTEGER DEFAULT 2147483647, systemLabel INTEGER DEFAULT 0, systemLabelOrder INTEGER DEFAULT 0, hidden INTEGER DEFAULT 0, labelCountDisplayBehavior INTEGER DEFAULT 0, labelSyncPolicy INTEGER DEFAULT 0, visibility TEXT, lastTouched INTEGER DEFAULT 0, numUnseenConversations INTEGER DEFAULT 0, lastMessageTimestamp INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_index ON labels (_id, canonicalName, numConversations, numUnreadConversations)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE message_labels (_id INTEGER PRIMARY KEY,labels_id INTEGER not null,message_messageId INTEGER not null,message_conversation INTEGER,UNIQUE (labels_id, message_messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_index ON message_labels (labels_id, message_messageId, message_conversation)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_conversation ON message_labels (message_conversation, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS operations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE operations (_id INTEGER PRIMARY KEY AUTOINCREMENT,action TEXT,message_messageId INTEGER,value1 INTEGER,value2 INTEGER, numAttempts INTEGER DEFAULT 0, nextTimeToAttempt INTEGER DEFAULT 0, delay INTEGER DEFAULT 0, value3 TEXT, value4 TEXT, value5 TEXT, value6 TEXT, value7 TEXT, value8 TEXT )"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX operations_messageid_action_index ON operations (message_messageId, action)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations_to_fetch (_id INTEGER PRIMARY KEY, nextAttemptDateMs INTEGER DEFAULT 0, numAttempts INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversation_labels;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversation_labels (  labels_id TEXT,   queryId INTEGER,   isZombie INTEGER,   sortMessageId INTEGER,   date INTEGER,   conversation_id INTEGER,   UNIQUE(labels_id, queryId, conversation_id));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversation_labels_index ON conversation_labels (labels_id, sortMessageId, queryId, isZombie, date, conversation_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_conversationIndex ON conversation_labels (conversation_id, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_queryId ON conversation_labels (queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations (_id INTEGER, queryId INTEGER, subject TEXT, snippet TEXT, fromAddress TEXT, fromProtoBuf BLOB,fromCompact BLOB,personalLevel INTEGER, labelIds TEXT, numMessages INTEGER, maxMessageId INTEGER, hasAttachments INTEGER, hasMessagesWithErrors INTEGER, syncRationale STRING, syncRationaleMessageId INTEGER, forceAllUnread INTEGER, dirty INTEGER DEFAULT 0, unreadMessageId INTEGER DEFAULT 0, unreadMessageLocalId INTEGER DEFAULT 0, attachmentPreviews TEXT DEFAULT NULL, attachmentPreviewStates INTEGER DEFAULT 0, attachmentPreviewsCount INTEGER DEFAULT 0, permalink TEXT DEFAULT NULL, UNIQUE(_id, queryId));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_syncRationale on conversations (syncRationale, syncRationaleMessageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_name on labels (canonicalName);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_id on labels (_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_message_messageId_labels_id on message_labels (message_messageId, labels_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_messageId on messages (messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_queryId on messages (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_conversation on messages (conversation, messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_messageId_queryId on messages (messageId, queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_conversation_queryId on messages (conversation, queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  address TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT,\n  blobValue BLOB DEFAULT NULL);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hi()V

    .line 343
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS ads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE ads (_id INTEGER PRIMARY KEY, event_id TEXT, advertiser_name TEXT, title TEXT, line1 TEXT, visible_url TEXT, advertiser_image_data BLOB, body TEXT, expiration INTEGER, reason INTEGER, apm_extra_targeting_data TEXT, starred INTEGER, view_status INTEGER, view TEXT, slot TEXT, apm_xsrf_token TEXT, delete_status INTEGER DEFAULT 0, redirect_url TEXT, wta_data TEXT, view_url TEXT, click_url TEXT, interaction_url TEXT, obfuscated_data TEXT, report_ad_server INTEGER, report_bow INTEGER, send_body INTEGER, click_id TEXT, UNIQUE(event_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hp()V

    .line 376
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 377
    return-void
.end method

.method public final Hj()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Trying to setup search with read-only database reference"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 437
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gd()Z

    move-result v0

    .line 410
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hl()Z

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->Gz()V

    .line 414
    if-eqz v0, :cond_2

    .line 415
    if-nez v1, :cond_1

    .line 416
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Setting up for AppDataSearch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->G(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 418
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Ho()V

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/bf;->cb(Z)V

    .line 434
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    goto :goto_0

    .line 424
    :cond_2
    if-eqz v1, :cond_3

    .line 425
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "Setting up for FTS search"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 426
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hm()V

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->H(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/bf;->cb(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    throw v0

    .line 431
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->I(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final Hk()V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gz()V

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->G(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Ho()V

    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/bf;->cb(Z)V

    .line 447
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    .line 452
    :cond_0
    return-void

    .line 449
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->endTransaction()V

    throw v0
.end method

.method final dM(I)I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 51
    const/16 v1, 0x34

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 56
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public final upgradeDbTo100()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabel INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabel = 1 WHERE substr(canonicalName, 1, 1) = \'^\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabelOrder INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 1 WHERE canonicalName = \'^i\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN hidden INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET hidden = 1 WHERE substr(canonicalName, 1, 1) = \'^\' AND canonicalName NOT IN (\'^i\', \'^t\', \'^b\', \'^f\', \'^^out\', \'^r\', \'^all\', \'^s\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public final upgradeDbTo101()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelCountDisplayBehavior INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 1 WHERE canonicalName IN (\'^^out\', \'^r\', \'^s\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName IN (\'^f\', \'^t\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public final upgradeDbTo102()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelSyncPolicy INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 1 WHERE canonicalName IN (\'^^out\', \'^r\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 2 WHERE canonicalName IN (\'^s\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 3 WHERE canonicalName IN (\'^i\', \'^f\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public final upgradeDbTo103()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 802
    iget-object v2, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->biu:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    array-length v0, v0

    new-array v4, v0, [Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    sget-object v6, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v0, :cond_0

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v7, "(select value from sync_settings where name =\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\') as "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    aput-object v7, v4, v0

    aget-object v7, v4, v0

    const-string v8, "name"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v1

    :goto_1
    sget-object v6, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    aget-object v6, v4, v0

    const-string v7, "value"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :try_start_0
    const-string v0, "internal_sync_settings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    const-string v7, "internal_sync_settings"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from sync_settings where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->bdX:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, " name =\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Gv()V

    .line 809
    return-void
.end method

.method public final upgradeDbTo104()V
    .locals 2

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 869
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public final upgradeDbTo105()V
    .locals 2

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 883
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public final upgradeDbTo106()V
    .locals 2

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 896
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public final upgradeDbTo107()V
    .locals 2

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 907
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN visibility TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    return-void
.end method

.method public final upgradeDbTo108()V
    .locals 2

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 914
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method public final upgradeDbTo109()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN priority INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public final upgradeDbTo110()V
    .locals 5

    .prologue
    .line 944
    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x35

    if-lt v0, v1, :cond_0

    .line 946
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "skipping v110 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 955
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN nextAttemptDateMs INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final upgradeDbTo111()V
    .locals 5

    .prologue
    .line 960
    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x36

    if-lt v0, v1, :cond_0

    .line 962
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "skipping v111 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 968
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN customFromAddress TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final upgradeDbTo112()V
    .locals 2

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 975
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^iim\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 11 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public final upgradeDbTo113()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1000
    return-void
.end method

.method public final upgradeDbTo114()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Ga()V

    .line 1005
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FR()V

    .line 1006
    return-void
.end method

.method public final upgradeDbTo115()V
    .locals 0

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1011
    return-void
.end method

.method public final upgradeDbTo116()V
    .locals 2

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1017
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public final upgradeDbTo117()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN mimeType TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public final upgradeDbTo118()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 0 WHERE canonicalName = \'^i\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public final upgradeDbTo119()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN queryId INTEGER DEFAULT 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE messages SET queryId = 0 WHERE synced = 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM messages where synced = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_queryId on messages (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP INDEX IF EXISTS messages_synced;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public final upgradeDbTo120()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->H(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1057
    return-void
.end method

.method public final upgradeDbTo121()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN lastTouched INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public final upgradeDbTo122()V
    .locals 0

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1068
    return-void
.end method

.method public final upgradeDbTo123()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_messageId_queryId on messages (messageId, queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public final upgradeDbTo124()V
    .locals 5

    .prologue
    .line 1078
    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 1080
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v1, "skipping v124 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/bf;->bdA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1086
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN delay INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final upgradeDbTo125()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS message_fts_table_index"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE message_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversation_fts_table_index"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversation_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public final upgradeDbTo126()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_conversation_queryId on messages (conversation, queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public final upgradeDbTo127()V
    .locals 2

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1109
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  address TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public final upgradeDbTo128()V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hi()V

    .line 1120
    return-void
.end method

.method public final upgradeDbTo129()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN spamDisplayedReasonType INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN deliveryChannel INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN referencesRfc822MessageIds TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method public final upgradeDbTo130()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN fromProtoBuf BLOB"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public final upgradeDbTo131()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM labels WHERE canonicalName=\'\' AND name=\'\';"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public final upgradeDbTo132()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1142
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE server_preferences ADD COLUMN blobValue BLOB DEFAULT NULL;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public final upgradeDbTo133()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN numUnseenConversations INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method public final upgradeDbTo134()V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN lastMessageTimestamp INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method public final upgradeDbTo135()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value3 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public final upgradeDbTo136()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN showSendersFullEmailAddress INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN viaDomain TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN showForgedFromMeWarning INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public final upgradeDbTo137()V
    .locals 0

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1168
    return-void
.end method

.method public final upgradeDbTo138()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN fromCompact BLOB"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public final upgradeDbTo139()V
    .locals 2

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN unreadMessageId INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN unreadMessageLocalId INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN attachmentPreviews TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN attachmentPreviewStates INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN attachmentPreviewsCount INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method public final upgradeDbTo140()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN size INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public final upgradeDbTo141()V
    .locals 0

    .prologue
    .line 1193
    return-void
.end method

.method public final upgradeDbTo142()V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value4 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value5 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value6 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method public final upgradeDbTo143()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public final upgradeDbTo144()V
    .locals 0

    .prologue
    .line 1210
    return-void
.end method

.method public final upgradeDbTo145()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS ads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE ads (_id INTEGER PRIMARY KEY, event_id TEXT, advertiser_name TEXT, title TEXT, line1 TEXT, visible_url TEXT, advertiser_image_data BLOB, body TEXT, expiration INTEGER, reason INTEGER, apm_extra_targeting_data TEXT, starred INTEGER, view_status INTEGER, view TEXT, slot TEXT, apm_xsrf_token TEXT, delete_status INTEGER DEFAULT 0, UNIQUE(event_id))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public final upgradeDbTo146()V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN refAdEventId TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method public final upgradeDbTo147()V
    .locals 1

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hn()V

    .line 1248
    :cond_0
    return-void
.end method

.method public final upgradeDbTo148()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET unreadMessageId = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET unreadMessageLocalId = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET attachmentPreviews = NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET attachmentPreviewStates = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET attachmentPreviewsCount = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    return-void
.end method

.method public final upgradeDbTo149()V
    .locals 0

    .prologue
    .line 1265
    return-void
.end method

.method public final upgradeDbTo150()V
    .locals 0

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hp()V

    .line 1270
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 1271
    return-void
.end method

.method public final upgradeDbTo151()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN permalink TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN clipped INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN permalink TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    return-void
.end method

.method public final upgradeDbTo152()V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN redirect_url TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public final upgradeDbTo153()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN wta_data TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN view_url TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN click_url TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN interaction_url TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN obfuscated_data TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN report_ad_server INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN report_bow INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN send_body INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE ads ADD COLUMN click_id TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method public final upgradeDbTo154()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value7 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN value8 TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public final upgradeDbTo37()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET labelIds = \',\' || labelIds"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public final upgradeDbTo38()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN clientCreated INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN refMessageId INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public final upgradeDbTo39()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/ae;->E(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 604
    return-void
.end method

.method public final upgradeDbTo40()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public final upgradeDbTo41()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN nextTimeToAttempt INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public final upgradeDbTo42()V
    .locals 2

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 616
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN color INTEGER DEFAULT 2147483647"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public final upgradeDbTo43()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public final upgradeDbTo44()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN forward INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN includeQuotedText INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN quoteStartPos INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public final upgradeDbTo45()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public final upgradeDbTo46()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public final upgradeDbTo47()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public final upgradeDbTo48()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN dirty INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public final upgradeDbTo49()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN bodyCompressed BLOB DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public final upgradeDbTo50()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_synced on messages (synced);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public final upgradeDbTo51()V
    .locals 2

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 690
    iget-object v0, p0, Lcom/google/android/gm/provider/bf;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public final upgradeDbTo52()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/android/gm/provider/bf;->Hq()V

    .line 697
    return-void
.end method
