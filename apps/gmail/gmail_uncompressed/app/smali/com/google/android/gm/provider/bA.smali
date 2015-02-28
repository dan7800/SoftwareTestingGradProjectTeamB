.class public final Lcom/google/android/gm/provider/bA;
.super Lcom/google/android/gm/provider/u;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLcom/google/android/gm/provider/v;Landroid/util/TimingLogger;)Z
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;Z",
            "Lcom/google/android/gm/provider/v;",
            "Landroid/util/TimingLogger;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    .line 51
    const-wide/high16 v12, -0x8000000000000000L

    .line 52
    const/high16 v8, -0x80000000

    .line 55
    const/4 v14, 0x0

    .line 56
    const/16 v18, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    const/16 v19, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v5, 0x0

    .line 64
    const/4 v10, 0x0

    .line 68
    sget-object v24, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 69
    const-wide/16 v22, 0x0

    .line 72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/bA;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT \n  messageId,\n  fromAddress,\n  group_concat(labels_id, \' \'),\n  subject,\n  snippet,\n  personalLevel,\n  joinedAttachmentInfos,\n  dateReceivedMs,\n  error,\n  permalink\nFROM\n  messages\nLEFT OUTER JOIN message_labels   ON messageId = message_messageId\nWHERE\n  synced = 1 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v32, v11, v15

    invoke-virtual {v4, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 93
    const-string v4, "fetch messages"

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 94
    new-instance v4, Lcom/google/android/gm/provider/s;

    invoke-direct {v4}, Lcom/google/android/gm/provider/s;-><init>()V

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->Ek()J

    move-result-wide v34

    .line 98
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->El()J

    move-result-wide v36

    .line 99
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->Ei()J

    move-result-wide v38

    .line 100
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->Er()J

    move-result-wide v40

    .line 101
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->En()J

    move-result-wide v42

    .line 102
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/D;->Em()J

    move-result-wide v44

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v17, v7

    move/from16 v28, v8

    move-wide/from16 v30, v12

    move-object/from16 v5, v19

    .line 104
    :goto_0
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 105
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 106
    const/4 v5, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    const/4 v6, 0x7

    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 111
    const/4 v6, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    if-eqz v6, :cond_1

    sget-object v7, Lcom/google/android/gm/provider/Gmail;->bdH:Ljava/util/regex/Pattern;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    .line 116
    :goto_1
    const/4 v9, 0x0

    .line 117
    move-object/from16 v0, v21

    array-length v8, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v6, v21, v7

    .line 118
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 119
    cmp-long v6, v42, v12

    if-eqz v6, :cond_0

    cmp-long v6, v44, v12

    if-nez v6, :cond_1f

    .line 120
    :cond_0
    const/4 v6, 0x1

    .line 117
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v6

    goto :goto_2

    .line 112
    :cond_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v21, v6

    goto :goto_1

    .line 124
    :cond_2
    const/16 v19, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    const/16 v25, 0x0

    .line 128
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    const/4 v6, 0x0

    move/from16 v20, v6

    move-object/from16 v17, v14

    move/from16 v6, v19

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    aget-object v11, v21, v20

    .line 129
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 130
    cmp-long v11, v34, v50

    if-nez v11, :cond_4

    const/4 v6, 0x1

    move/from16 v11, v25

    move v14, v8

    move v15, v7

    move/from16 v19, v6

    .line 135
    :goto_5
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 136
    new-instance v6, Lcom/google/android/gm/provider/ab;

    invoke-direct {v6}, Lcom/google/android/gm/provider/ab;-><init>()V

    .line 137
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_6
    iget-wide v12, v6, Lcom/google/android/gm/provider/ab;->bhx:J

    move-wide/from16 v0, v46

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 142
    iget-wide v12, v6, Lcom/google/android/gm/provider/ab;->bhy:J

    move-wide/from16 v0, v48

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/google/android/gm/provider/ab;->bhy:J

    .line 145
    if-nez v9, :cond_3

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/bA;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v6, v6, Lcom/google/android/gm/provider/ae;->bhD:Ljava/util/Map;

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 158
    if-nez v9, :cond_1d

    if-eqz v6, :cond_1d

    sget-object v7, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p3

    if-eq v0, v7, :cond_1d

    .line 160
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 162
    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-wide/from16 v12, v22

    move-object v7, v6

    .line 172
    :goto_7
    cmp-long v6, v46, p6

    if-lez v6, :cond_1c

    .line 173
    if-nez v17, :cond_1b

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 174
    :goto_8
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    :goto_9
    add-int/lit8 v8, v20, 0x1

    move/from16 v20, v8

    move/from16 v25, v11

    move-wide/from16 v22, v12

    move-object/from16 v24, v7

    move-object/from16 v17, v6

    move v8, v14

    move v7, v15

    move/from16 v6, v19

    goto/16 :goto_4

    .line 131
    :cond_4
    cmp-long v11, v36, v50

    if-nez v11, :cond_5

    const/4 v7, 0x1

    move/from16 v11, v25

    move v14, v8

    move v15, v7

    move/from16 v19, v6

    goto/16 :goto_5

    .line 132
    :cond_5
    cmp-long v11, v38, v50

    if-nez v11, :cond_6

    const/4 v8, 0x1

    move/from16 v11, v25

    move v14, v8

    move v15, v7

    move/from16 v19, v6

    goto/16 :goto_5

    .line 133
    :cond_6
    cmp-long v11, v40, v50

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    move v14, v8

    move v15, v7

    move/from16 v19, v6

    goto/16 :goto_5

    .line 139
    :cond_7
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/provider/ab;

    goto/16 :goto_6

    .line 165
    :cond_8
    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, v24

    if-eq v0, v6, :cond_1d

    .line 166
    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 167
    move-wide/from16 v0, v22

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v12, v6

    move-object v7, v8

    goto :goto_7

    .line 178
    :cond_9
    if-nez v18, :cond_1a

    const/4 v9, 0x3

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v9

    .line 179
    :goto_a
    const/4 v9, 0x4

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 180
    if-nez v16, :cond_19

    if-nez v7, :cond_a

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 184
    :cond_a
    new-instance v29, Ljava/util/ArrayList;

    const/4 v9, 0x2

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v48, v0

    .line 187
    const/4 v9, 0x0

    move/from16 v20, v9

    move/from16 v18, v10

    :goto_b
    move-object/from16 v0, v48

    array-length v9, v0

    move/from16 v0, v20

    if-ge v0, v9, :cond_d

    .line 188
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iget-object v14, v9, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    .line 189
    aput-object v14, v48, v20

    .line 191
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gm/provider/bA;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "attachments"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "status"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "desiredRendition"

    aput-object v13, v11, v12

    const-string v12, "messages_messageId = ? AND messages_partId = ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 198
    :goto_c
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 199
    const/4 v9, 0x0

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ea(I)I

    move-result v9

    .line 201
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mail/providers/F;->cg(Ljava/lang/String;)I

    move-result v11

    .line 203
    const/4 v12, 0x3

    if-ne v9, v12, :cond_b

    const/4 v9, 0x1

    :goto_d
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1, v11, v9}, Lcom/android/mail/providers/Attachment;->d(IIIZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    goto :goto_c

    :cond_b
    const/4 v9, 0x0

    goto :goto_d

    .line 208
    :cond_c
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 187
    add-int/lit8 v9, v20, 0x1

    move/from16 v20, v9

    goto :goto_b

    .line 208
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    :catchall_1
    move-exception v4

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_d
    move/from16 v11, v18

    move-object/from16 v16, v19

    .line 212
    :goto_e
    const/4 v9, 0x5

    :try_start_3
    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 213
    move/from16 v0, v28

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 214
    move-wide/from16 v0, v30

    move-wide/from16 v2, v46

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    .line 215
    const/4 v9, 0x6

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    const/4 v9, 0x1

    :goto_f
    or-int v13, v27, v9

    .line 216
    const/16 v9, 0x8

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    move v10, v9

    .line 217
    :goto_10
    or-int v12, v26, v10

    .line 218
    const/16 v9, 0x9

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 220
    if-eqz v25, :cond_10

    if-nez v10, :cond_10

    const/4 v9, 0x1

    :goto_11
    if-eqz v25, :cond_11

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_12
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gm/provider/s;->a(Ljava/lang/String;ZZZZZ)V

    move v10, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v5, v19

    move-object/from16 v18, v21

    move-wide/from16 v30, v28

    move/from16 v28, v15

    move-object/from16 v52, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v52

    .line 224
    goto/16 :goto_0

    .line 215
    :cond_e
    const/4 v9, 0x0

    goto :goto_f

    .line 216
    :cond_f
    const/4 v9, 0x0

    move v10, v9

    goto :goto_10

    .line 220
    :cond_10
    const/4 v9, 0x0

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .line 229
    :cond_12
    const-wide/16 v6, 0x0

    cmp-long v6, v22, v6

    if-eqz v6, :cond_14

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p3

    if-eq v0, v6, :cond_13

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p3

    if-ne v0, v6, :cond_14

    :cond_13
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_14

    .line 233
    const-string v6, "Gmail"

    const-string v7, "Server sent rational %s but we calculated %s with messageId %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    aput-object v24, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    :cond_14
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 238
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gm/provider/s;->dI(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 243
    const-string v6, "process messages"

    move-object/from16 v0, p11

    invoke-virtual {v0, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    move-wide/from16 v12, v30

    move-object/from16 v15, p10

    .line 245
    invoke-virtual/range {v6 .. v15}, Lcom/google/android/gm/provider/bA;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;Lcom/google/android/gm/provider/v;)V

    .line 247
    const-string v6, "process labels"

    move-object/from16 v0, p11

    invoke-virtual {v0, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 250
    if-nez v19, :cond_15

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/bA;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversations"

    const-string v6, "_id = ? AND queryId = 0"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v32, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    const/4 v4, 0x1

    .line 283
    :goto_13
    return v4

    .line 258
    :cond_15
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 259
    const-string v7, "_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string v7, "queryId"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v7, "subject"

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v7, "snippet"

    if-eqz v16, :cond_16

    move-object/from16 v5, v16

    :cond_16
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v5, "personalLevel"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string v5, "numMessages"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v5, "maxMessageId"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail;->j(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string v7, "labelIds"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v7, "hasAttachments"

    if-eqz v27, :cond_17

    const/4 v5, 0x1

    :goto_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v7, "hasMessagesWithErrors"

    if-eqz v26, :cond_18

    const/4 v5, 0x1

    :goto_15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v5, "syncRationale"

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v5, "syncRationaleMessageId"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v5, "fromCompact"

    invoke-virtual {v4}, Lcom/google/android/gm/provider/s;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 281
    const-string v4, "permalink"

    move-object/from16 v0, v17

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/bA;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "conversations"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 283
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 270
    :cond_17
    const/4 v5, 0x0

    goto :goto_14

    .line 272
    :cond_18
    const/4 v5, 0x0

    goto :goto_15

    :cond_19
    move v11, v10

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v21, v18

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v6, v17

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v6, v17

    goto/16 :goto_9

    :cond_1d
    move-wide/from16 v12, v22

    move-object/from16 v7, v24

    goto/16 :goto_7

    :cond_1e
    move/from16 v11, v25

    move v14, v8

    move v15, v7

    move/from16 v19, v6

    goto/16 :goto_5

    :cond_1f
    move v6, v9

    goto/16 :goto_3
.end method
