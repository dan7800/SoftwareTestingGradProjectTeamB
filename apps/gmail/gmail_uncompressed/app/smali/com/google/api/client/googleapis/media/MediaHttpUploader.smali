.class public final Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cvC:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field private final cvD:Lcom/google/api/client/http/b;

.field private final cvE:Lcom/google/api/client/http/u;

.field private cvF:Lcom/google/api/client/http/k;

.field private cvG:J

.field private cvH:Z

.field private cvI:Ljava/lang/String;

.field private cvJ:Lcom/google/api/client/http/o;

.field private cvK:Lcom/google/api/client/http/t;

.field private cvL:Ljava/io/InputStream;

.field private cvM:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private cvN:Z

.field private cvO:Lcom/google/api/client/googleapis/media/a;

.field cvP:Ljava/lang/String;

.field private cvQ:J

.field private cvR:I

.field private cvS:Ljava/lang/Byte;

.field private cvT:J

.field private cvU:I

.field private cvV:[B

.field private cvW:Z


# direct methods
.method private WU()Z
    .locals 4

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private WV()J
    .locals 2

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvH:Z

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvG:J

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvH:Z

    .line 513
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvG:J

    return-wide v0
.end method

.method private a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    .locals 1

    .prologue
    .line 960
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvC:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 961
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvO:Lcom/google/api/client/googleapis/media/a;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvO:Lcom/google/api/client/googleapis/media/a;

    .line 964
    :cond_0
    return-void
.end method

.method private b(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;
    .locals 4

    .prologue
    .line 355
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 357
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    .line 358
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvF:Lcom/google/api/client/http/k;

    if-eqz v1, :cond_1

    .line 359
    new-instance v0, Lcom/google/api/client/http/F;

    invoke-direct {v0}, Lcom/google/api/client/http/F;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/k;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvF:Lcom/google/api/client/http/k;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/F;->E(Ljava/util/Collection;)Lcom/google/api/client/http/F;

    move-result-object v0

    .line 360
    const-string v1, "uploadType"

    const-string v2, "multipart"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/j;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvE:Lcom/google/api/client/http/u;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvI:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvJ:Lcom/google/api/client/http/o;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/o;->putAll(Ljava/util/Map;)V

    .line 369
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;

    move-result-object v1

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    .line 375
    :cond_0
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    return-object v1

    .line 362
    :cond_1
    const-string v1, "uploadType"

    const-string v2, "media"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/j;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    throw v0
.end method

.method private c(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;
    .locals 11

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->XO()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 487
    :goto_0
    return-object v0

    .line 400
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/o;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    .line 406
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v1}, Lcom/google/api/client/http/b;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    .line 407
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    .line 417
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvE:Lcom/google/api/client/http/u;

    const-string v2, "PUT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    .line 418
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvR:I

    int-to-long v2, v1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    :goto_2
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/google/api/client/util/h;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/google/api/client/http/C;

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v4}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/api/client/http/C;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lcom/google/api/client/http/C;->XU()Lcom/google/api/client/http/C;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/google/api/client/http/C;->be(J)Lcom/google/api/client/http/C;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/C;->co(Z)Lcom/google/api/client/http/C;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvP:Ljava/lang/String;

    :goto_3
    iput v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvU:I

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-virtual {v3, v2}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-virtual {v1}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    const-string v2, "bytes */0"

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/o;->hj(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 419
    :goto_4
    iget-boolean v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvM:Z

    if-eqz v1, :cond_d

    .line 421
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    new-instance v2, Lcom/google/api/client/googleapis/media/c;

    invoke-direct {v2, p0}, Lcom/google/api/client/googleapis/media/c;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/c;)Lcom/google/api/client/http/t;

    .line 428
    :goto_5
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v1

    if-nez v1, :cond_2

    .line 431
    iget-boolean v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvW:Z

    if-nez v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    new-instance v2, Lcom/google/api/client/http/h;

    invoke-direct {v2}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/t;

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-static {v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;

    move-result-object v1

    .line 437
    :try_start_1
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->XO()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 438
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    .line 439
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->Xl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_3
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 487
    goto/16 :goto_0

    .line 402
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    throw v0

    .line 418
    :cond_4
    iget v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvR:I

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    if-nez v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    :goto_6
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_7
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v6, v3

    invoke-static {v4, v5, v6, v3}, Lcom/google/api/client/util/h;->a(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ge v4, v3, :cond_b

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    :cond_6
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvP:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvP:Ljava/lang/String;

    :cond_7
    :goto_8
    new-instance v2, Lcom/google/api/client/http/d;

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v3}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    invoke-direct {v2, v3, v4, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[BI)V

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvT:J

    goto/16 :goto_3

    :cond_8
    move v2, v1

    goto :goto_6

    :cond_9
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvT:J

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    iget v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvU:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    :cond_a
    sub-int v3, v1, v2

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvS:Ljava/lang/Byte;

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-virtual {v2}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/o;->hj(Ljava/lang/String;)Lcom/google/api/client/http/o;

    goto/16 :goto_4

    .line 425
    :cond_d
    new-instance v1, Lcom/google/api/client/googleapis/media/b;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/googleapis/media/b;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/t;)V

    goto/16 :goto_5

    .line 447
    :cond_e
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v2

    const/16 v3, 0x134

    if-eq v2, v3, :cond_f

    move-object v0, v1

    .line 487
    goto/16 :goto_0

    .line 453
    :cond_f
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/o;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_10

    .line 455
    new-instance v0, Lcom/google/api/client/http/j;

    invoke-direct {v0, v2}, Lcom/google/api/client/http/j;-><init>(Ljava/lang/String;)V

    .line 460
    :cond_10
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/o;->Xu()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 462
    :goto_9
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    sub-long v6, v4, v2

    .line 463
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_13

    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvU:I

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_13

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Lcom/google/api/client/util/H;->cq(Z)V

    .line 465
    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvU:I

    int-to-long v2, v2

    sub-long/2addr v2, v6

    .line 466
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 467
    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_11

    .line 473
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 474
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvL:Ljava/io/InputStream;

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 475
    cmp-long v2, v6, v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/api/client/util/H;->cq(Z)V

    .line 483
    :cond_11
    :goto_c
    iput-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvQ:J

    .line 485
    sget-object v2, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 487
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    goto/16 :goto_1

    .line 460
    :cond_12
    const/16 v3, 0x2d

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_9

    .line 463
    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    .line 475
    :cond_14
    const/4 v2, 0x0

    goto :goto_b

    .line 477
    :cond_15
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_11

    .line 481
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvV:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_c

    .line 487
    :catchall_1
    move-exception v0

    .line 488
    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    throw v0

    :cond_16
    move v10, v3

    move v3, v2

    move v2, v10

    goto/16 :goto_7
.end method

.method private static c(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;
    .locals 1

    .prologue
    .line 555
    new-instance v0, Lcom/google/api/client/googleapis/b;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/api/client/googleapis/b;->b(Lcom/google/api/client/http/t;)V

    .line 557
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->XM()Lcom/google/api/client/http/t;

    .line 559
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->XN()Lcom/google/api/client/http/w;

    move-result-object v0

    .line 560
    return-object v0
.end method

.method private d(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;
    .locals 6

    .prologue
    .line 522
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvY:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 524
    const-string v0, "uploadType"

    const-string v1, "resumable"

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/http/j;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvF:Lcom/google/api/client/http/k;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/api/client/http/e;

    invoke-direct {v0}, Lcom/google/api/client/http/e;-><init>()V

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvE:Lcom/google/api/client/http/u;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvI:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/u;->a(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvJ:Lcom/google/api/client/http/o;

    const-string v2, "X-Upload-Content-Type"

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvD:Lcom/google/api/client/http/b;

    invoke-virtual {v3}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/o;->m(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/o;

    .line 529
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvJ:Lcom/google/api/client/http/o;

    const-string v2, "X-Upload-Content-Length"

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/o;->m(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/o;

    .line 532
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvJ:Lcom/google/api/client/http/o;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/o;->putAll(Ljava/util/Map;)V

    .line 533
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;

    move-result-object v1

    .line 534
    :try_start_0
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvZ:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    return-object v1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvF:Lcom/google/api/client/http/k;

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->disconnect()V

    throw v0
.end method

.method private d(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvM:Z

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/c;)Lcom/google/api/client/http/t;

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvW:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XA()Lcom/google/api/client/http/k;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/e;

    if-nez v0, :cond_1

    .line 578
    new-instance v0, Lcom/google/api/client/http/h;

    invoke-direct {v0}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/t;->a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/t;

    .line 581
    :cond_1
    invoke-static {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;

    move-result-object v0

    .line 582
    return-object v0
.end method


# virtual methods
.method final WW()V
    .locals 6

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    const-string v1, "The current request should not be null"

    invoke-static {v0, v1}, Lcom/google/api/client/util/H;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    new-instance v1, Lcom/google/api/client/http/e;

    invoke-direct {v1}, Lcom/google/api/client/http/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/t;->b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;

    .line 700
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvK:Lcom/google/api/client/http/t;

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XD()Lcom/google/api/client/http/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "bytes */"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->WV()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/o;->hj(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 702
    return-void

    .line 700
    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method public final a(Lcom/google/api/client/http/o;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvJ:Lcom/google/api/client/http/o;

    .line 935
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvC:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->cvX:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 342
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvN:Z

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;

    move-result-object v0

    .line 345
    :goto_1
    return-object v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;

    move-result-object v0

    goto :goto_1
.end method

.method public final cm(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cvW:Z

    .line 880
    return-object p0
.end method
