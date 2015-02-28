.class public final Lorg/apache/james/mime4j/codec/EncoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final cDH:[B

.field private static final cDI:Ljava/util/BitSet;

.field private static final cDJ:Ljava/util/BitSet;

.field private static final cDK:Ljava/util/BitSet;

.field private static final cDL:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    .line 55
    const-string v0, "=_?"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hQ(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDI:Ljava/util/BitSet;

    .line 57
    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hQ(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDJ:Ljava/util/BitSet;

    .line 66
    const-string v0, "()<>@,;:\\\"/[]?="

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hQ(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDK:Ljava/util/BitSet;

    .line 68
    const-string v0, "()<>@.,;:\\\"[]"

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hQ(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDL:Ljava/util/BitSet;

    return-void

    .line 45
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    array-length v0, p4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 518
    rsub-int/lit8 v1, p2, 0x4b

    if-gt v0, v1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->q([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .line 523
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-static {v1, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 525
    invoke-static {p0, v1, p2, p3, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0, p3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 530
    invoke-static {p0, v0, v3, p3, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 542
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->cDP:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p2, v0, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDI:Ljava/util/BitSet;

    :goto_0
    move v1, v6

    move v2, v6

    :goto_1
    array-length v3, p5

    if-ge v1, v3, :cond_2

    aget-byte v3, p5, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDJ:Ljava/util/BitSet;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 544
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    .line 546
    rsub-int/lit8 v1, p3, 0x4b

    if-gt v0, v1, :cond_3

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_3
    return-object v0

    .line 549
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v7

    .line 551
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v1, p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 553
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v8

    .line 556
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1, p4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move v3, v6

    move-object v4, p4

    .line 558
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-static {p0, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->s(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_0
    return-object p0
.end method

.method private static a([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 402
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->cDP:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDI:Ljava/util/BitSet;

    .line 405
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    array-length v3, p0

    .line 408
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 409
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    .line 410
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 411
    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDJ:Ljava/util/BitSet;

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 413
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    ushr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->fJ(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->fJ(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 417
    :cond_2
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 421
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 587
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 588
    return-object v1
.end method

.method private static b(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 324
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x32

    if-le p2, v0, :cond_2

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 327
    :cond_2
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hS(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/b/a;->id(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    if-nez v0, :cond_3

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported charset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_3
    invoke-static {p0, v4}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 338
    invoke-static {v5, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    move-result-object v1

    .line 341
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->cDM:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    if-ne v1, v2, :cond_4

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?B?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0, p0, p2, v4, v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 345
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?Q?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 346
    invoke-static/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;ILjava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([BLorg/apache/james/mime4j/codec/EncoderUtil$Usage;)Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 609
    array-length v0, p0

    if-nez v0, :cond_0

    .line 610
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->cDN:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    .line 624
    :goto_0
    return-object v0

    .line 612
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->cDP:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    if-ne p1, v0, :cond_2

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDI:Ljava/util/BitSet;

    :goto_1
    move v2, v1

    .line 616
    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 617
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 618
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 619
    add-int/lit8 v2, v2, 0x1

    .line 616
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 612
    :cond_2
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDJ:Ljava/util/BitSet;

    goto :goto_1

    .line 623
    :cond_3
    mul-int/lit8 v0, v2, 0x64

    array-length v1, p0

    div-int/2addr v0, v1

    .line 624
    const/16 v1, 0x1e

    if-le v0, v1, :cond_4

    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->cDM:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;->cDN:Lorg/apache/james/mime4j/codec/EncoderUtil$Encoding;

    goto :goto_0
.end method

.method private static fJ(I)C
    .locals 1

    .prologue
    .line 628
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method private static hQ(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/util/BitSet;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 72
    const/16 v0, 0x21

    :goto_0
    const/16 v2, 0x7f

    if-ge v0, v2, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 77
    :cond_1
    return-object v1
.end method

.method public static hR(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDL:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lorg/apache/james/mime4j/b/a;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 132
    :goto_1
    return-object p0

    .line 129
    :cond_3
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->s(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    sget-object v0, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->cDQ:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->b(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 132
    :cond_4
    const-string v0, "[\\\\\"]"

    const-string v1, "\\\\$0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static hS(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 594
    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    .line 596
    :goto_0
    if-ge v2, v3, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 598
    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    .line 599
    sget-object v0, Lorg/apache/james/mime4j/b/a;->UTF_8:Ljava/nio/charset/Charset;

    .line 605
    :goto_1
    return-object v0

    .line 601
    :cond_0
    const/16 v5, 0x7f

    if-le v4, v5, :cond_1

    move v0, v1

    .line 596
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/james/mime4j/b/a;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/b/a;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static q([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3d

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    const/4 v0, 0x0

    .line 362
    array-length v2, p0

    .line 363
    :goto_0
    add-int/lit8 v3, v2, -0x2

    if-ge v0, v3, :cond_0

    .line 364
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 366
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v5, v3, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    sget-object v4, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 372
    :cond_0
    add-int/lit8 v3, v2, -0x2

    if-ne v0, v3, :cond_2

    .line 373
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    .line 374
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 380
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 381
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->cDH:[B

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static s(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    if-nez p0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x32

    if-le p1, v0, :cond_2

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    .line 224
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 226
    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_5

    :cond_3
    move p1, v1

    .line 224
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 230
    const/16 v4, 0x4d

    if-le p1, v4, :cond_7

    move v1, v2

    .line 245
    :cond_6
    :goto_1
    return v1

    .line 238
    :cond_7
    if-lt v3, v5, :cond_8

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_4

    :cond_8
    move v1, v2

    .line 240
    goto :goto_1
.end method
