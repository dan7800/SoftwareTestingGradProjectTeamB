.class final Lorg/apache/james/mime4j/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private cDE:I

.field private cDF:I

.field private cDG:Z

.field private cDn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/i;->cDn:Ljava/io/InputStream;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/i;->cDE:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/i;->cDF:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/i;->cDG:Z

    .line 47
    iput-object p1, p0, Lorg/apache/james/mime4j/i;->cDn:Ljava/io/InputStream;

    .line 48
    return-void
.end method


# virtual methods
.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/james/mime4j/i;->cDE:I

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/james/mime4j/i;->cDG:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/i;->cDn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    iget v1, p0, Lorg/apache/james/mime4j/i;->cDF:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 80
    iget v1, p0, Lorg/apache/james/mime4j/i;->cDE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/i;->cDE:I

    .line 82
    :cond_1
    iput v0, p0, Lorg/apache/james/mime4j/i;->cDF:I

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/i;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/apache/james/mime4j/i;->cDG:Z

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, -0x1

    .line 102
    :cond_0
    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/i;->cDn:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, p2

    .line 96
    :goto_0
    add-int v2, p2, v0

    if-ge v1, v2, :cond_0

    .line 97
    iget v2, p0, Lorg/apache/james/mime4j/i;->cDF:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 98
    iget v2, p0, Lorg/apache/james/mime4j/i;->cDE:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/i;->cDE:I

    .line 100
    :cond_2
    aget-byte v2, p1, v1

    iput v2, p0, Lorg/apache/james/mime4j/i;->cDF:I

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
