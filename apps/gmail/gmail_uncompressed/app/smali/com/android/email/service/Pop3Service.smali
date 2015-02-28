.class public Lcom/android/email/service/Pop3Service;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final Vm:Lcom/android/email/service/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/android/email/service/A;

    invoke-direct {v0, p0}, Lcom/android/email/service/A;-><init>(Lcom/android/email/service/Pop3Service;)V

    iput-object v0, p0, Lcom/android/email/service/Pop3Service;->Vm:Lcom/android/email/service/l;

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    invoke-static {p1}, Lcom/android/emailcommon/f;->l(Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 111
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v1

    .line 114
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/service/Pop3Service;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 116
    if-eqz v1, :cond_0

    .line 117
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-interface {v1, v2, v3}, Lcom/android/email/m;->f(J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    return v5

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-boolean v2, Lcom/android/emailcommon/b;->LOGD:Z

    if-eqz v2, :cond_1

    .line 121
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "synchronizeMailbox"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    :cond_1
    instance-of v2, v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 125
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-interface {v1, v2, v3, v6}, Lcom/android/email/m;->a(JZ)V

    .line 127
    :cond_2
    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/store/e;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/android/email/mail/store/e;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/g;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 173
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "Pop3Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Loading "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " unsynced messages"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v0

    .line 180
    :goto_0
    if-ge v4, v5, :cond_3

    .line 181
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/g;

    .line 182
    const/16 v1, 0x694

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/email/mail/store/e;->a(Lcom/android/email/mail/store/g;ILorg/apache/james/mime4j/e;)V

    .line 185
    invoke-virtual {v0}, Lcom/android/email/mail/store/g;->isComplete()Z

    move-result v1

    if-nez v1, :cond_4

    .line 191
    const/4 v1, 0x2

    move v2, v1

    .line 193
    :goto_1
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 194
    const-string v6, "Pop3Service"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "Message is "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/mail/store/g;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "complete"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 198
    :cond_1
    invoke-static {p0, v0, p1, p4, v2}, Lcom/android/email/provider/H;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 180
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 194
    :cond_2
    const-string v1, "NOT "
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v0, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 202
    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 20

    .prologue
    .line 233
    const-class v11, Lcom/android/email/service/Pop3Service;

    monitor-enter v11

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 236
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/Mailbox;->Zr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    .line 478
    :cond_0
    :goto_0
    monitor-exit v11

    return-void

    .line 242
    :cond_1
    const/4 v10, 0x0

    .line 243
    :try_start_1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    sget-object v5, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/service/C;->kK()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "mailboxKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v5

    .line 254
    :goto_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 255
    new-instance v6, Lcom/android/email/service/C;

    invoke-direct {v6, v5}, Lcom/android/email/service/C;-><init>(Landroid/database/Cursor;)V

    .line 256
    iget-object v7, v6, Lcom/android/email/service/C;->Vv:Ljava/lang/String;

    invoke-virtual {v12, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v5, :cond_2

    .line 260
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    :catchall_1
    move-exception v4

    monitor-exit v11

    throw v4

    .line 259
    :cond_3
    if-eqz v5, :cond_4

    .line 260
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/Pop3Store;

    .line 268
    if-eqz v5, :cond_0

    .line 270
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/Pop3Store;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/email/mail/store/e;

    move-object v10, v0

    .line 274
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v10, v5}, Lcom/android/email/mail/store/e;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 276
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 277
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v5}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v14

    .line 278
    sget-object v5, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/g;->YI:[Ljava/lang/String;

    const-string v7, "accountKey=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 285
    :goto_3
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 286
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 287
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v5

    .line 289
    iget-wide v0, v5, Lcom/android/emailcommon/provider/g;->YR:J

    move-wide/from16 v16, v0

    cmp-long v7, v16, v14

    if-nez v7, :cond_5

    .line 291
    iget-object v5, v5, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    invoke-virtual {v10, v5}, Lcom/android/email/mail/store/e;->A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/g;

    .line 293
    if-eqz v5, :cond_5

    .line 294
    invoke-virtual {v10, v5}, Lcom/android/email/mail/store/e;->a(Lcom/android/emailcommon/mail/Message;)V

    .line 298
    :cond_5
    sget-object v5, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 302
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    invoke-virtual {v10}, Lcom/android/email/mail/store/e;->ja()I

    move-result v5

    .line 309
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/emailcommon/provider/Mailbox;->g(Landroid/content/Context;I)V

    .line 312
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 314
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 316
    if-lez v5, :cond_e

    .line 321
    invoke-virtual {v10, v5, v5}, Lcom/android/email/mail/store/e;->C(II)[Lcom/android/email/mail/store/g;

    move-result-object v9

    .line 322
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remoteMessageCount "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    const/4 v7, 0x0

    .line 332
    const/16 v6, 0x64

    .line 333
    array-length v8, v9

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_7

    aget-object v15, v9, v5

    .line 334
    invoke-virtual {v15}, Lcom/android/email/mail/store/g;->ln()Ljava/lang/String;

    move-result-object v16

    .line 335
    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 354
    :cond_7
    array-length v15, v9

    const/4 v5, 0x0

    move v8, v5

    :goto_5
    if-ge v8, v15, :cond_9

    aget-object v16, v9, v8

    .line 355
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/g;->ln()Ljava/lang/String;

    move-result-object v17

    .line 356
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/service/C;

    .line 357
    if-nez v5, :cond_b

    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 370
    :goto_6
    if-eqz v5, :cond_8

    iget v0, v5, Lcom/android/email/service/C;->Vu:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    iget v5, v5, Lcom/android/email/service/C;->Vu:I

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_c

    .line 373
    :cond_8
    sget-object v5, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "need to sync "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 374
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_7
    if-lt v7, v6, :cond_d

    .line 380
    sget-object v5, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "loaded "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " messages, stopping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 393
    :cond_9
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->XO:[Ljava/lang/String;

    const-string v7, "accountKey=? AND uiState=2"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    .line 398
    :try_start_8
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 399
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 400
    const-string v5, "uiState"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 402
    invoke-virtual {v8, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->b(Landroid/database/Cursor;)V

    .line 403
    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v5

    .line 404
    if-eqz v5, :cond_a

    iget v9, v5, Lcom/android/emailcommon/provider/g;->Vu:I

    const/4 v15, 0x1

    if-ne v9, v15, :cond_10

    .line 405
    :cond_a
    const-string v5, "uiDownloadedSize"

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    .line 442
    :catchall_3
    move-exception v4

    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    .line 362
    :cond_b
    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "found a local message, need "

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " more remote messages"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    const/4 v6, 0x0

    move v7, v6

    move/from16 v6, p3

    goto/16 :goto_6

    .line 376
    :cond_c
    sget-object v5, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "don\'t need to sync "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 354
    :cond_d
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_5

    .line 385
    :cond_e
    sget-boolean v4, Lcom/android/email/b;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 386
    const-string v4, "Pop3Service"

    const-string v5, "*** Message count is zero??"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    :cond_f
    invoke-virtual {v10}, Lcom/android/email/mail/store/e;->iY()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 410
    :cond_10
    :try_start_a
    iget-object v9, v5, Lcom/android/emailcommon/provider/g;->Vv:Ljava/lang/String;

    .line 411
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/g;

    .line 412
    if-eqz v5, :cond_12

    .line 413
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v8

    .line 415
    const/4 v9, -0x1

    :try_start_b
    new-instance v15, Lcom/android/email/service/B;

    invoke-direct {v15, v4, v8}, Lcom/android/email/service/B;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v10, v5, v9, v15}, Lcom/android/email/mail/store/e;->a(Lcom/android/email/mail/store/g;ILorg/apache/james/mime4j/e;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 422
    :try_start_c
    const-string v9, "uiState"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v8, v7, v9, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    invoke-virtual {v5}, Lcom/android/email/mail/store/g;->isComplete()Z

    move-result v9

    if-nez v9, :cond_11

    .line 427
    const-string v9, "Pop3Service"

    const-string v15, "How is this possible?"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 429
    :cond_11
    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v5, v1, v2, v9}, Lcom/android/email/provider/H;->a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 432
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8

    .line 418
    :catch_0
    move-exception v4

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v4

    .line 437
    :cond_12
    const-string v5, "Pop3Service"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "Could not find message for attachment "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_8

    .line 442
    :cond_13
    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 446
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 447
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 448
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 449
    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "need to delete "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 450
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/service/C;

    .line 455
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-wide v14, v5, Lcom/android/email/service/C;->Ln:J

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v14, v15}, Lcom/android/emailcommon/b/a;->c(Landroid/content/Context;JJ)V

    .line 459
    sget-object v7, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v5, Lcom/android/email/service/C;->Ln:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 461
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    sget-object v7, Lcom/android/emailcommon/provider/g;->YF:Landroid/net/Uri;

    iget-wide v8, v5, Lcom/android/email/service/C;->Ln:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 466
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    sget-object v7, Lcom/android/emailcommon/provider/g;->DELETED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v5, Lcom/android/email/service/C;->Ln:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 469
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_9

    .line 472
    :cond_14
    const-string v4, "Pop3Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadUnsynchedMessages "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v10, v13, v2}, Lcom/android/email/service/Pop3Service;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/email/mail/store/e;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 477
    invoke-virtual {v10}, Lcom/android/email/mail/store/e;->iY()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 259
    :catchall_4
    move-exception v4

    move-object v5, v10

    goto/16 :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/email/service/Pop3Service;->Vm:Lcom/android/email/service/l;

    invoke-virtual {v0, p0}, Lcom/android/email/service/l;->g(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lcom/android/email/service/Pop3Service;->Vm:Lcom/android/email/service/l;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
