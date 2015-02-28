.class public abstract Lcom/google/android/gm/provider/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field protected final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field protected final bdv:Lcom/google/android/gm/provider/ae;

.field protected final bdw:Lcom/google/android/gm/provider/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/gm/provider/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/u;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/ae;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iput-object p2, p0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    .line 29
    iget-object v0, p0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fn()Lcom/google/android/gm/provider/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/u;->bdw:Lcom/google/android/gm/provider/D;

    .line 30
    return-void
.end method

.method private a(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v2, v2, Lcom/google/android/gm/provider/ae;->bhC:Ljava/util/Collection;

    if-nez v2, :cond_1

    .line 212
    :cond_0
    return-void

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v2, v2, Lcom/google/android/gm/provider/ae;->bhC:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/ah;

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gm/provider/ah;->FM()J

    move-result-wide v14

    .line 174
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/ah;->n(Ljava/util/Set;)Z

    move-result v10

    .line 175
    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p10

    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ah;->FN()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    const/4 v3, 0x1

    .line 178
    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 179
    if-eq v10, v4, :cond_8

    const/4 v4, 0x1

    move v11, v4

    .line 181
    :goto_2
    if-eqz v10, :cond_5

    if-eqz v3, :cond_5

    .line 186
    if-eqz p6, :cond_9

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/ah;->n(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    .line 188
    :goto_3
    if-eqz v3, :cond_5

    .line 191
    invoke-virtual {v2}, Lcom/google/android/gm/provider/ah;->FL()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/gm/provider/ab;

    .line 192
    if-eqz v9, :cond_4

    .line 193
    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gm/provider/ae;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v6

    const/4 v7, 0x1

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/ae;->a(JLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v3, v3, Lcom/google/android/gm/provider/ae;->bhG:Lcom/google/android/gm/provider/ag;

    invoke-interface {v3, v2}, Lcom/google/android/gm/provider/ag;->a(Lcom/google/android/gm/provider/ah;)V

    .line 199
    const-string v3, "Gmail"

    const-string v4, "onConversationChanged %d added tag label %d for label %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ah;->FL()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    :cond_5
    if-nez v10, :cond_2

    .line 204
    sget-object v10, Lcom/google/android/gm/provider/Operations$RecordHistory;->bmN:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/gm/provider/ae;->as(J)Lcom/google/android/gm/provider/af;

    move-result-object v8

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gm/provider/ae;->a(JJLcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_6
    const-string v3, "Gmail"

    const-string v4, "onConversationChanged %d removed tag label %d for label %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ah;->FL()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 175
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 179
    :cond_8
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_2

    .line 186
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method private a(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/v;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v2, p0, Lcom/google/android/gm/provider/u;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->El()J

    move-result-wide v4

    .line 223
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 225
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 226
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 229
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 233
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/ab;

    iget-boolean v8, v2, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 234
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/ab;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 241
    if-nez v8, :cond_3

    if-eqz v2, :cond_3

    .line 242
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    if-eqz v8, :cond_2

    if-nez v2, :cond_2

    .line 245
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 248
    :cond_4
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 250
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 252
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-eqz v3, :cond_5

    .line 253
    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    if-eq p1, v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    :cond_6
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/ab;

    iget-boolean v3, v3, Lcom/google/android/gm/provider/ab;->bhz:Z

    if-nez v3, :cond_5

    .line 265
    :cond_7
    if-eqz p7, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gm/provider/v;->a(ZLjava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    :cond_8
    if-eqz v7, :cond_9

    .line 276
    iget-object v3, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0),\n  numUnreadConversations =     max(numUnreadConversations - 1, 0)\nWHERE _id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const-string v3, "Gmail"

    const-string v9, "onConversationChanged decreased total and unread, label %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 291
    :goto_4
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 285
    :cond_9
    iget-object v3, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0)\nWHERE _id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    const-string v3, "Gmail"

    const-string v9, "onConversationChanged decreased total, label %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 293
    :cond_a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 294
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 296
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-eqz v3, :cond_b

    .line 297
    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    if-eq p1, v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gm/provider/ae;->au(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 302
    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/ab;

    iget-boolean v3, v3, Lcom/google/android/gm/provider/ab;->bhz:Z

    if-nez v3, :cond_b

    .line 307
    :cond_d
    if-eqz p7, :cond_e

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gm/provider/v;->a(ZLjava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 314
    :cond_e
    if-eqz v7, :cond_f

    .line 318
    iget-object v3, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "UPDATE labels SET\n  numConversations = numConversations + 1,\n  numUnreadConversations = numUnreadConversations + 1\nWHERE _id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const-string v3, "Gmail"

    const-string v9, "onConversationChanged increased total and unread, label %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 332
    :goto_6
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 326
    :cond_f
    iget-object v3, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "UPDATE labels SET\n  numConversations = numConversations + 1\nWHERE _id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    const-string v3, "Gmail"

    const-string v9, "onConversationChanged increased total, label %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v9, v10}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 334
    :cond_10
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 337
    iget-object v2, p0, Lcom/google/android/gm/provider/u;->bdw:Lcom/google/android/gm/provider/D;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/D;->requery()V

    .line 340
    iget-object v2, p0, Lcom/google/android/gm/provider/u;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v2, v2, Lcom/google/android/gm/provider/ae;->bhG:Lcom/google/android/gm/provider/ag;

    invoke-interface {v2, v6}, Lcom/google/android/gm/provider/ag;->m(Ljava/util/Set;)V

    .line 342
    :cond_11
    return-void
.end method


# virtual methods
.method public final a(JJLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 147
    const-string v0, "queryId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v0, "conversation_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ab;

    .line 153
    const-string v1, "labels_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "isZombie"

    iget-boolean v4, v0, Lcom/google/android/gm/provider/ab;->bhz:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 155
    const-string v1, "sortMessageId"

    iget-wide v4, v0, Lcom/google/android/gm/provider/ab;->bhx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "date"

    iget-wide v4, v0, Lcom/google/android/gm/provider/ab;->bhy:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/provider/u;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversation_labels"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;JLjava/util/Map;JLjava/util/Map;ZLcom/google/android/gm/provider/v;Landroid/util/TimingLogger;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "J",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gm/provider/u;->a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLcom/google/android/gm/provider/v;Landroid/util/TimingLogger;)Z

    move-result v2

    .line 82
    const-string v3, "process messages"

    move-object/from16 v0, p12

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 84
    if-nez v2, :cond_0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p9

    .line 85
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/u;->a(JJLjava/util/Map;)V

    .line 86
    const-string v2, "write labels"

    move-object/from16 v0, p12

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;Lcom/google/android/gm/provider/v;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/ab;",
            ">;J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 110
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 111
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-boolean v2, Lcom/google/android/gm/provider/u;->vb:Z

    if-nez v2, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-boolean v2, Lcom/google/android/gm/provider/u;->vb:Z

    if-nez v2, :cond_1

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-interface {v9, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v9, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-boolean v2, Lcom/google/android/gm/provider/u;->vb:Z

    if-nez v2, :cond_2

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 116
    const-string v0, "Gmail"

    const-string v1, "onConversationChanged %d removedLabels (%s), addedLabels (%s), keptLabels (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v11, p3

    .line 123
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gm/provider/u;->a(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 125
    const-string v0, "Gmail"

    const-string v1, "onConversationChanged after updateLabels %d removedLabels (%s), addedLabels (%s), keptLabels (%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p9

    .line 128
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/provider/u;->a(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/v;)V

    .line 136
    return-void
.end method

.method protected abstract a(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLcom/google/android/gm/provider/v;Landroid/util/TimingLogger;)Z
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
.end method
