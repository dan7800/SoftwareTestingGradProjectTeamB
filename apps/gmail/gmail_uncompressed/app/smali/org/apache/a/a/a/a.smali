.class public final Lorg/apache/a/a/a/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final cDc:[B


# instance fields
.field private cDd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private cDe:I

.field private cDf:I

.field private cDg:[B

.field private count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/a/a/a/a;->cDc:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/a/a/a/a;-><init>(B)V

    .line 73
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/a/a/a/a;->cDd:Ljava/util/List;

    .line 83
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/a/a/a/a;->fH(I)V

    .line 88
    return-void
.end method

.method private fG(I)[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/a/a/a/a;->cDd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private fH(I)V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 110
    iget v0, p0, Lorg/apache/a/a/a/a;->cDf:I

    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDg:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/a/a/a/a;->cDf:I

    .line 112
    iget v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    .line 113
    iget v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    invoke-direct {p0, v0}, Lorg/apache/a/a/a/a;->fG(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/a/a/a/a;->cDg:[B

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/apache/a/a/a/a;->cDg:[B

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/a/a/a/a;->cDf:I

    .line 127
    :goto_1
    iget v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/a/a/a/a;->cDe:I

    .line 128
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/a/a/a/a;->cDg:[B

    .line 129
    iget-object v0, p0, Lorg/apache/a/a/a/a;->cDd:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDg:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/apache/a/a/a/a;->cDg:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/a/a/a/a;->cDf:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 124
    iget v0, p0, Lorg/apache/a/a/a/a;->cDf:I

    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDg:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/a/a/a/a;->cDf:I

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final declared-synchronized toByteArray()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 270
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/apache/a/a/a/a;->count:I

    .line 271
    if-nez v2, :cond_1

    .line 272
    sget-object v0, Lorg/apache/a/a/a/a;->cDc:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-object v0

    .line 274
    :cond_1
    :try_start_1
    new-array v0, v2, [B

    move v3, v2

    move v2, v1

    .line 276
    :goto_0
    iget-object v4, p0, Lorg/apache/a/a/a/a;->cDd:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 277
    invoke-direct {p0, v1}, Lorg/apache/a/a/a/a;->fG(I)[B

    move-result-object v4

    .line 278
    array-length v5, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 279
    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    add-int/2addr v2, v5

    .line 281
    sub-int/2addr v3, v5

    .line 282
    if-eqz v3, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/a/a/a/a;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/a/a/a/a;->count:I

    iget v1, p0, Lorg/apache/a/a/a/a;->cDf:I

    sub-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDg:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 175
    iget v0, p0, Lorg/apache/a/a/a/a;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/a/a/a/a;->fH(I)V

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/apache/a/a/a/a;->cDg:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 179
    iget v0, p0, Lorg/apache/a/a/a/a;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/a/a/a/a;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final write([BII)V
    .locals 6

    .prologue
    .line 141
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 147
    :cond_1
    if-nez p3, :cond_2

    .line 164
    :goto_0
    return-void

    .line 150
    :cond_2
    monitor-enter p0

    .line 151
    :try_start_0
    iget v0, p0, Lorg/apache/a/a/a/a;->count:I

    add-int v2, v0, p3

    .line 153
    iget v0, p0, Lorg/apache/a/a/a/a;->count:I

    iget v1, p0, Lorg/apache/a/a/a/a;->cDf:I

    sub-int/2addr v0, v1

    move v1, p3

    .line 154
    :cond_3
    :goto_1
    if-lez v1, :cond_4

    .line 155
    iget-object v3, p0, Lorg/apache/a/a/a/a;->cDg:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 156
    add-int v4, p2, p3

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/apache/a/a/a/a;->cDg:[B

    invoke-static {p1, v4, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    sub-int/2addr v1, v3

    .line 158
    if-lez v1, :cond_3

    .line 159
    invoke-direct {p0, v2}, Lorg/apache/a/a/a/a;->fH(I)V

    .line 160
    const/4 v0, 0x0

    goto :goto_1

    .line 163
    :cond_4
    iput v2, p0, Lorg/apache/a/a/a/a;->count:I

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
