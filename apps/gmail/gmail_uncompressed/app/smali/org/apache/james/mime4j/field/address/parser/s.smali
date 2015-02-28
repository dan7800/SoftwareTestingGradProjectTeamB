.class public final Lorg/apache/james/mime4j/field/address/parser/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cFF:I

.field cFG:I

.field cFH:I

.field public cFI:I

.field protected cFJ:[I

.field protected cFK:[I

.field protected cFL:I

.field protected cFM:Z

.field protected cFN:Z

.field protected cFO:Ljava/io/Reader;

.field protected cFP:[C

.field protected cFQ:I

.field protected cFR:I

.field protected cFS:I

.field protected column:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/james/mime4j/field/address/parser/s;-><init>(Ljava/io/Reader;II)V

    .line 274
    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    .line 34
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    .line 35
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFL:I

    .line 37
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFM:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFN:Z

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFS:I

    .line 260
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFO:Ljava/io/Reader;

    .line 261
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFL:I

    .line 262
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    .line 264
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    .line 265
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    .line 266
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    .line 267
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    .line 268
    return-void
.end method

.method private cs(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 53
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    .line 54
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    .line 55
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    .line 59
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    .line 66
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    const/4 v1, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    .line 74
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    .line 97
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    .line 98
    iput v8, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    .line 99
    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v4, 0x0

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    .line 87
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final abh()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    aget v0, v0, v1

    return v0
.end method

.method public final abi()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    aget v0, v0, v1

    return v0
.end method

.method public final abj()I
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    aget v0, v0, v1

    return v0
.end method

.method public final abk()I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    aget v0, v0, v1

    return v0
.end method

.method public final abl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    if-lt v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 379
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final fX(I)V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    .line 253
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    if-gez v0, :cond_0

    .line 254
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    .line 255
    :cond_0
    return-void
.end method

.method public final fY(I)[C
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    new-array v0, p1, [C

    .line 387
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_0
    return-object v0

    .line 391
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final readChar()C
    .locals 8

    .prologue
    const/16 v2, 0x800

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    if-lez v0, :cond_1

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFR:I

    .line 201
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    if-ne v0, v1, :cond_0

    .line 202
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    aget-char v0, v0, v1

    .line 213
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    if-lt v0, v1, :cond_a

    .line 208
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    if-le v0, v2, :cond_4

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFO:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v7, :cond_9

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFO:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/s;->fX(I)V

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    if-ne v1, v7, :cond_3

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    :cond_3
    throw v0

    :cond_4
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    if-gez v0, :cond_5

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/s;->cs(Z)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFF:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_8

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/s;->cs(Z)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFH:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFG:I

    goto :goto_1

    :cond_9
    :try_start_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFQ:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFP:[C

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    aget-char v0, v0, v1

    .line 212
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFN:Z

    if-eqz v1, :cond_d

    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFN:Z

    :cond_b
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFL:I

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFL:I

    :cond_c
    :goto_2
    packed-switch v0, :pswitch_data_0

    :goto_3
    :pswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFJ:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFL:I

    aput v3, v1, v2

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFK:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFI:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    aput v3, v1, v2

    goto/16 :goto_0

    :cond_d
    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFM:Z

    if-eqz v1, :cond_c

    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFM:Z

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFN:Z

    goto :goto_2

    :pswitch_1
    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFM:Z

    goto :goto_3

    :pswitch_2
    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFN:Z

    goto :goto_3

    :pswitch_3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFS:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/s;->cFS:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/s;->column:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
