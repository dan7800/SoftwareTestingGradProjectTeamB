.class public final Lcom/google/android/gm/provider/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bdp:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final bdq:Lcom/android/mail/utils/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/V",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bdr:Lcom/google/android/gm/provider/SenderInstructions;

.field private bds:Z

.field private bdt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    sget-object v1, Lcom/android/mail/utils/ag;->aQJ:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/google/android/gm/provider/s;->bdp:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 42
    new-instance v0, Lcom/android/mail/utils/V;

    new-instance v1, Lcom/google/android/gm/provider/t;

    invoke-direct {v1}, Lcom/google/android/gm/provider/t;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mail/utils/V;-><init>(Lcom/android/mail/utils/W;)V

    sput-object v0, Lcom/google/android/gm/provider/s;->bdq:Lcom/android/mail/utils/V;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions;

    invoke-direct {v0}, Lcom/google/android/gm/provider/SenderInstructions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/s;->bdr:Lcom/google/android/gm/provider/SenderInstructions;

    .line 60
    iput-boolean v1, p0, Lcom/google/android/gm/provider/s;->bds:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/android/gm/provider/s;->bdt:Z

    return-void
.end method

.method public static a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/SenderInstructions;)V
    .locals 11

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v8

    .line 400
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v9

    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    const/4 v0, 0x3

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/provider/bv;->b(Lcom/google/common/a/a/a;ILjava/util/Collection;)V

    .line 406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v7, v0

    .line 407
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/a;

    .line 408
    new-instance v6, Lcom/google/android/gm/provider/by;

    invoke-direct {v6}, Lcom/google/android/gm/provider/by;-><init>()V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v7, :cond_1

    .line 412
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v0, v6, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 415
    const-string v1, "e"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    goto :goto_1

    .line 406
    :cond_0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 418
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->fx(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/google/android/gm/provider/by;->apC:Z

    .line 420
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/google/android/gm/provider/by;->priority:I

    .line 422
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    .line 424
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->bJ(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/a/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    .line 429
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bna:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v0, v6, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 430
    iget-object v1, v6, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    iget-object v2, v6, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    const/4 v3, 0x0

    iget-boolean v4, v6, Lcom/google/android/gm/provider/by;->apC:Z

    iget-object v0, v6, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x1

    :goto_2
    iget v6, v6, Lcom/google/android/gm/provider/by;->priority:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 434
    :cond_4
    invoke-virtual {p1, v8}, Lcom/google/android/gm/provider/SenderInstructions;->dI(I)V

    .line 435
    invoke-virtual {p1, v9}, Lcom/google/android/gm/provider/SenderInstructions;->dX(I)V

    .line 436
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dW(I)V

    .line 437
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gm/provider/SenderInstructions;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 448
    sget-object v0, Lcom/google/android/gm/provider/s;->bdq:Lcom/android/mail/utils/V;

    invoke-virtual {v0}, Lcom/android/mail/utils/V;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 450
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 452
    sget-object v1, Lcom/google/android/gm/provider/s;->bdp:Landroid/text/TextUtils$SimpleStringSplitter;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :try_start_1
    sget-object v0, Lcom/google/android/gm/provider/s;->bdp:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 455
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/s;->bdp:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/google/android/gm/provider/s;->bdp:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/google/android/gm/provider/s;->bdq:Lcom/android/mail/utils/V;

    invoke-virtual {v1, v7}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    throw v0

    .line 458
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v10

    .line 460
    :goto_1
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 461
    add-int/lit8 v1, v0, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 464
    const-string v2, "e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 466
    const-string v2, "n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 468
    :cond_1
    const-string v2, "d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dX(I)V

    move v0, v2

    goto :goto_1

    .line 470
    :cond_2
    const-string v2, "l"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v5, v9

    :goto_2
    const/4 v6, -0x1

    move-object v0, p1

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 496
    :cond_3
    sget-object v0, Lcom/google/android/gm/provider/s;->bdq:Lcom/android/mail/utils/V;

    invoke-virtual {v0, v7}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    .line 498
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dW(I)V

    .line 499
    return-void

    :cond_4
    move v5, v10

    .line 472
    goto :goto_2

    .line 475
    :cond_5
    :try_start_5
    const-string v2, "s"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 477
    const-string v2, "f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 480
    add-int/lit8 v2, v1, 0x2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    move v4, v9

    .line 488
    :goto_3
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    add-int/lit8 v8, v2, 0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 491
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move v5, v9

    :goto_4
    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v8

    goto/16 :goto_1

    :cond_6
    move v4, v10

    .line 487
    goto :goto_3

    :cond_7
    move v5, v10

    .line 491
    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public static a([BLcom/google/android/gm/provider/SenderInstructions;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 183
    .line 185
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dI(I)V

    .line 187
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dX(I)V

    .line 188
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    move v8, v9

    .line 189
    :goto_0
    if-ge v8, v10, :cond_2

    .line 190
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 191
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    .line 192
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 193
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 195
    const/4 v3, 0x1

    if-le v10, v3, :cond_0

    if-eqz v0, :cond_0

    .line 196
    const-string v1, "e"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 189
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 199
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 204
    :goto_2
    :try_start_2
    const-string v2, "TAG"

    const-string v3, "Unable to deserialize sender instructions"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    if-eqz v1, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 214
    :cond_1
    :goto_3
    return-void

    .line 202
    :cond_2
    const/4 v0, 0x5

    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dW(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 209
    :catch_1
    move-exception v0

    .line 210
    const-string v1, "TAG"

    const-string v2, "Unable to close sender instructions deserializer"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 209
    :catch_2
    move-exception v0

    .line 210
    const-string v1, "TAG"

    const-string v2, "Unable to close sender instructions deserializer"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 206
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_3

    .line 208
    :try_start_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 211
    :cond_3
    :goto_5
    throw v0

    .line 209
    :catch_3
    move-exception v1

    .line 210
    const-string v2, "TAG"

    const-string v3, "Unable to close sender instructions deserializer"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 206
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 203
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static a(Lcom/google/android/gm/provider/SenderInstructions;)[B
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/SenderInstructions;->dW(I)V

    .line 124
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    const/4 v1, 0x0

    .line 127
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/SenderInstructions;->uH()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gm/provider/SenderInstructions;->HN()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gm/provider/SenderInstructions;->HO()Ljava/util/Collection;

    move-result-object v7

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gm/provider/SenderInstructions;->HP()I

    move-result v0

    if-le v0, v3, :cond_0

    move v5, v3

    .line 133
    :goto_0
    new-instance v8, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v8}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    .line 134
    new-instance v9, Lcom/google/android/mail/common/html/parser/v;

    invoke-direct {v9}, Lcom/google/android/mail/common/html/parser/v;-><init>()V

    .line 137
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v4

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    .line 138
    iget-object v0, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v11, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-eq v0, v11, :cond_a

    .line 139
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 141
    goto :goto_1

    :cond_0
    move v5, v4

    .line 132
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    .line 146
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v10, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-eq v1, v10, :cond_2

    .line 147
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v10, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-ne v1, v10, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 151
    iget-boolean v1, v0, Lcom/google/android/gm/provider/by;->apC:Z

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 152
    iget v1, v0, Lcom/google/android/gm/provider/by;->priority:I

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 154
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v10, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-ne v1, v10, :cond_5

    .line 155
    const-string v1, "e"

    .line 161
    :goto_5
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 162
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->ed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 167
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 168
    :goto_7
    :try_start_2
    const-string v2, "TAG"

    const-string v3, "Unable to serialize sender instructions"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v5}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 170
    if-eqz v1, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :cond_3
    :goto_8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_4
    move v1, v4

    .line 147
    goto :goto_4

    .line 157
    :cond_5
    if-eqz v5, :cond_6

    :try_start_4
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/s;->dS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-static {v1, v8, v9}, Lcom/android/mail/utils/ag;->a(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    goto :goto_9

    .line 162
    :cond_7
    const-string v0, ""
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    .line 170
    :cond_8
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    .line 173
    :catch_1
    move-exception v0

    .line 174
    const-string v1, "TAG"

    const-string v2, "Unable to close sender instructions serializer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8

    .line 173
    :catch_2
    move-exception v0

    .line 174
    const-string v1, "TAG"

    const-string v2, "Unable to close sender instructions serializer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8

    .line 170
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_a
    if-eqz v2, :cond_9

    .line 172
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 175
    :cond_9
    :goto_b
    throw v0

    .line 173
    :catch_3
    move-exception v1

    .line 174
    const-string v2, "TAG"

    const-string v3, "Unable to close sender instructions serializer"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_b

    .line 170
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_a

    .line 167
    :catch_4
    move-exception v0

    goto :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public static b(Lcom/google/common/a/a/a;)[B
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions;

    invoke-direct {v0}, Lcom/google/android/gm/provider/SenderInstructions;-><init>()V

    .line 441
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/s;->a(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/SenderInstructions;)V

    .line 442
    invoke-static {v0}, Lcom/google/android/gm/provider/s;->a(Lcom/google/android/gm/provider/SenderInstructions;)[B

    move-result-object v0

    return-object v0
.end method

.method private static dS(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-static {p0}, Lcom/google/android/mail/common/base/K;->gJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v9, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 342
    const/4 v1, -0x1

    if-eq v4, v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v4, v1, :cond_6

    .line 343
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v3, "\\s+"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    move v3, v2

    .line 347
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 348
    aget-object v6, v5, v1

    .line 349
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 350
    add-int/lit8 v3, v3, 0x1

    .line 351
    if-ge v3, v9, :cond_2

    .line 352
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    if-ne v3, v8, :cond_6

    .line 357
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 363
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "the "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_3
    const-string v3, "\\s+"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 370
    :goto_2
    array-length v1, v3

    if-ge v2, v1, :cond_4

    .line 371
    aget-object v1, v3, v2

    .line 372
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v1

    .line 378
    :cond_4
    return-object v0

    .line 370
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public static g([B)Lcom/google/common/a/a/a;
    .locals 5

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 387
    :try_start_0
    new-instance v1, Lcom/google/common/a/a/a;

    sget-object v2, Lcom/google/android/gm/provider/a/a;->bnX:Lcom/google/common/a/a/b;

    invoke-direct {v1, v2}, Lcom/google/common/a/a/a;-><init>(Lcom/google/common/a/a/b;)V

    invoke-virtual {v1, p0}, Lcom/google/common/a/a/a;->o([B)Lcom/google/common/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    const-string v2, "Gmail"

    const-string v3, "Unable to read sender instructions protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 229
    if-eqz p5, :cond_2

    .line 230
    iput-boolean v5, p0, Lcom/google/android/gm/provider/s;->bds:Z

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/s;->bdr:Lcom/google/android/gm/provider/SenderInstructions;

    if-nez p1, :cond_3

    move-object v1, v2

    :goto_1
    if-nez p1, :cond_4

    :goto_2
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p6, :cond_5

    :cond_1
    :goto_3
    const/4 v6, -0x1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/SenderInstructions;->a(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 238
    return-void

    .line 231
    :cond_2
    if-eqz p6, :cond_0

    .line 232
    iput-boolean v5, p0, Lcom/google/android/gm/provider/s;->bdt:Z

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->ec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->ed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public final dI(I)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gm/provider/s;->bdr:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/SenderInstructions;->dI(I)V

    .line 242
    return-void
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gm/provider/s;->bdr:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-static {v0}, Lcom/google/android/gm/provider/s;->a(Lcom/google/android/gm/provider/SenderInstructions;)[B

    move-result-object v0

    return-object v0
.end method
