.class final Lorg/apache/james/mime4j/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected buffer:[B

.field protected cEd:I

.field protected cEe:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/a/e;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-gtz p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    .line 85
    iput v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    .line 86
    iput v1, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    .line 87
    return-void
.end method


# virtual methods
.method public final aaH()B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lorg/apache/james/mime4j/a/e;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 172
    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    aget-byte v0, v0, v2

    .line 178
    iget v2, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    .line 179
    iget v2, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    iget-object v3, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 180
    iput v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    .line 183
    :cond_2
    return v0
.end method

.method public final e(B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Lorg/apache/james/mime4j/a/e;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 127
    iget v0, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    move v2, v1

    :cond_0
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    if-eq v0, v4, :cond_1

    .line 128
    iget-object v4, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 129
    iget-object v4, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    aput-byte v1, v4, v0

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    iget-object v4, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v4, v4

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 134
    goto :goto_0

    .line 138
    :cond_1
    iput-object v3, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    .line 139
    iput v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    .line 140
    iput v2, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    .line 143
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    aput-byte p1, v0, v2

    .line 144
    iget v0, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    .line 145
    iget v0, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    iget-object v2, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 146
    iput v1, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    .line 148
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    iget v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/james/mime4j/a/e;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    add-int/2addr v0, v1

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/a/e;->cEe:I

    iget v1, p0, Lorg/apache/james/mime4j/a/e;->cEd:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
