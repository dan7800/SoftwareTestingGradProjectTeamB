.class public final Lcom/google/android/gm/provider/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/a/a/a;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v1

    .line 108
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/google/common/a/a/a;->getLong(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public static b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/a/a/a;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v1

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/google/common/a/a/a;->ap(II)Lcom/google/common/a/a/a;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public static c(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/a/a/a;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/common/a/a/a;->fA(I)I

    move-result v1

    .line 136
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/google/common/a/a/a;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public static g(Lcom/google/common/a/a/a;)V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 274
    invoke-virtual {p0, v1}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    .line 275
    const-string v0, "Gmail"

    const-string v3, "ForwardSyncProto: operationid: %d"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v0, v3, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    :try_start_0
    const-string v0, "Gmail"

    const-string v3, "Proto: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/common/a/a/a;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    invoke-virtual {p0, v11}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    invoke-virtual {p0, v11}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v5

    .line 285
    invoke-virtual {v5, v11}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    .line 287
    invoke-virtual {v5, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    .line 289
    if-nez v0, :cond_3

    move v4, v1

    .line 291
    :goto_1
    if-ne v0, v1, :cond_4

    move v3, v1

    .line 293
    :goto_2
    if-ne v0, v11, :cond_5

    move v0, v1

    .line 295
    :goto_3
    const-string v8, "Gmail"

    const-string v9, "ForwardSyncProto: ThreadLabelOrUnlabeled, conversationId: %d,labelAdded: %b labelRemoved: %b messagesExpunged: %b"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v12

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 298
    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 299
    :cond_0
    invoke-virtual {v5, v12}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v6

    .line 301
    const-string v0, "Gmail"

    const-string v3, "ForwardSyncProto: ThreadLabelOrUnLabel, labelId: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 303
    :cond_1
    invoke-virtual {v5, v13}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v0

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v4, 0x5

    invoke-static {v5, v4, v3}, Lcom/google/android/gm/provider/bv;->a(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 310
    const-string v4, "Gmail"

    const-string v5, "ForwardSyncProto: syncRationale: %d, messageIds: %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    :cond_2
    :goto_4
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v3, "Gmail"

    const-string v4, "Error reading proto"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    move v4, v2

    .line 289
    goto :goto_1

    :cond_4
    move v3, v2

    .line 291
    goto :goto_2

    :cond_5
    move v0, v2

    .line 293
    goto :goto_3

    .line 312
    :cond_6
    invoke-virtual {p0, v12}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    invoke-virtual {p0, v12}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    .line 317
    invoke-virtual {v0, v11}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v12}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v6, "Gmail"

    const-string v7, "ForwardSyncProto: LabelCreated, labelId: %d canonicalName: %sdisplayName: %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    aput-object v3, v8, v1

    aput-object v0, v8, v11

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 323
    :cond_7
    invoke-virtual {p0, v13}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 324
    invoke-virtual {p0, v13}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    .line 328
    invoke-virtual {v0, v11}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-virtual {v0, v12}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v6, "Gmail"

    const-string v7, "ForwardSyncProto: LabelRenamed, labelId: %d newCanonicalName: %s newDisplayName: %s"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    aput-object v3, v8, v1

    aput-object v0, v8, v11

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 334
    :cond_8
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 335
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->fy(I)Lcom/google/common/a/a/a;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getLong(I)J

    move-result-wide v4

    .line 339
    const-string v0, "Gmail"

    const-string v3, "ForwardSyncProto: LabelDeleted, labelId: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 340
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 341
    const-string v0, "Gmail"

    const-string v1, "ForwardSyncProto: CheckConversation"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 342
    :cond_a
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "Gmail"

    const-string v1, "ForwardSyncProto: PreferenceChanged"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4
.end method
