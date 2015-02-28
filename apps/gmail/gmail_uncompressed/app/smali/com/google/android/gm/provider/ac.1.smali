.class public final Lcom/google/android/gm/provider/ac;
.super Lcom/google/android/gm/provider/u;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/u;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V

    .line 17
    return-void
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/bs;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/google/android/gm/provider/ac;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT   labelIds, \n  maxMessageId FROM   conversations WHERE   _id = ? AND queryId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 212
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 216
    new-instance v3, Lcom/google/android/gm/provider/bs;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/gm/provider/bs;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private eC(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/bs;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/gm/provider/ac;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT \n  messageId,\n  group_concat(labels_id, \',\'),\n  dateReceivedMs \nFROM\n  messages LEFT OUTER JOIN   message_labels ON messageId = message_messageId\nWHERE\n  synced = 0 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 173
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 177
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 180
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 183
    new-instance v0, Lcom/google/android/gm/provider/bs;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/bs;-><init>(Ljava/lang/String;JJ)V

    .line 185
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 190
    goto :goto_0
.end method


# virtual methods
.method protected final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLcom/google/android/gm/provider/v;Landroid/util/TimingLogger;)Z
    .locals 23
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
    .line 44
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 46
    const-wide/high16 v2, -0x8000000000000000L

    .line 47
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/ab;

    .line 52
    iget-wide v2, v2, Lcom/google/android/gm/provider/ab;->bhy:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v6, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 56
    if-eqz p9, :cond_1

    .line 61
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gm/provider/ac;->eC(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    :cond_1
    if-nez v2, :cond_2

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/ac;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 82
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/ac;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/D;->En()J

    move-result-wide v14

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/ac;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/D;->Em()J

    move-result-wide v16

    .line 85
    const-wide/high16 v8, -0x8000000000000000L

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/bs;

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gm/provider/bs;->sM()J

    move-result-wide v8

    .line 89
    invoke-virtual {v2}, Lcom/google/android/gm/provider/bs;->HH()[Ljava/lang/String;

    move-result-object v12

    .line 91
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    array-length v0, v12

    move/from16 v19, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_1
    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    aget-object v3, v12, v11

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 99
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 100
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    cmp-long v3, v14, v20

    if-nez v3, :cond_4

    .line 102
    const/4 v3, 0x1

    move v4, v10

    .line 97
    :goto_2
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v10, v4

    move v5, v3

    goto :goto_1

    .line 103
    :cond_4
    cmp-long v3, v16, v20

    if-nez v3, :cond_e

    .line 104
    const/4 v3, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 110
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    .line 112
    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 113
    new-instance v3, Lcom/google/android/gm/provider/ab;

    invoke-direct {v3}, Lcom/google/android/gm/provider/ab;-><init>()V

    .line 114
    move-object/from16 v0, p8

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v3

    .line 118
    :goto_4
    iget-wide v12, v11, Lcom/google/android/gm/provider/ab;->bhx:J

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 119
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/ab;

    .line 120
    if-eqz v3, :cond_7

    .line 121
    iget-wide v12, v11, Lcom/google/android/gm/provider/ab;->bhx:J

    iget-wide v0, v3, Lcom/google/android/gm/provider/ab;->bhx:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 124
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gm/provider/bs;->HI()Ljava/lang/Long;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_5
    iput-wide v12, v11, Lcom/google/android/gm/provider/ab;->bhy:J

    .line 132
    if-nez v5, :cond_8

    if-eqz v10, :cond_a

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v14

    if-nez v3, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v16

    if-nez v3, :cond_6

    .line 135
    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/google/android/gm/provider/ab;->bhz:Z

    goto :goto_3

    .line 116
    :cond_b
    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/ab;

    move-object v11, v3

    goto :goto_4

    :cond_c
    move-wide v12, v6

    .line 125
    goto :goto_5

    .line 141
    :cond_d
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gm/provider/ac;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;Lcom/google/android/gm/provider/v;)V

    .line 143
    const-string v2, "process labels"

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    return v2

    :cond_e
    move v3, v5

    move v4, v10

    goto/16 :goto_2
.end method
