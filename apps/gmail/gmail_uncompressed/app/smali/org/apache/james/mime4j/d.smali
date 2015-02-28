.class public final Lorg/apache/james/mime4j/d;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private cDo:Ljava/io/PushbackInputStream;

.field private cDp:I

.field private cDq:I

.field private cDr:I

.field private cDs:Lorg/apache/james/mime4j/e;

.field private flags:I

.field private pos:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/d;->cDo:Ljava/io/PushbackInputStream;

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/d;->cDp:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/d;->flags:I

    .line 45
    iput v1, p0, Lorg/apache/james/mime4j/d;->size:I

    .line 46
    iput v1, p0, Lorg/apache/james/mime4j/d;->pos:I

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/d;->cDo:Ljava/io/PushbackInputStream;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/james/mime4j/e;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/d;-><init>(Ljava/io/InputStream;)V

    .line 77
    iput p2, p0, Lorg/apache/james/mime4j/d;->size:I

    .line 78
    iget v0, p0, Lorg/apache/james/mime4j/d;->size:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/apache/james/mime4j/d;->cDr:I

    .line 79
    iget v0, p0, Lorg/apache/james/mime4j/d;->cDr:I

    iput v0, p0, Lorg/apache/james/mime4j/d;->cDq:I

    .line 80
    iput-object p3, p0, Lorg/apache/james/mime4j/d;->cDs:Lorg/apache/james/mime4j/e;

    .line 81
    return-void
.end method

.method private fI(I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/d;->cDo:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 107
    iget v0, p0, Lorg/apache/james/mime4j/d;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/d;->pos:I

    .line 108
    return-void
.end method

.method private jH()I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/d;->cDo:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 94
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/james/mime4j/d;->cDs:Lorg/apache/james/mime4j/e;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/d;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/d;->pos:I

    iget v2, p0, Lorg/apache/james/mime4j/d;->cDq:I

    if-ne v1, v2, :cond_0

    .line 96
    iget v1, p0, Lorg/apache/james/mime4j/d;->cDq:I

    iget v2, p0, Lorg/apache/james/mime4j/d;->cDr:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/d;->cDq:I

    .line 97
    iget-object v1, p0, Lorg/apache/james/mime4j/d;->cDs:Lorg/apache/james/mime4j/e;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/james/mime4j/d;->cDs:Lorg/apache/james/mime4j/e;

    iget v2, p0, Lorg/apache/james/mime4j/d;->pos:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/e;->bf(I)V

    .line 102
    :cond_0
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/james/mime4j/d;->cDo:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 90
    return-void
.end method

.method public final read()I
    .locals 5

    .prologue
    const/16 v1, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    .line 114
    invoke-direct {p0}, Lorg/apache/james/mime4j/d;->jH()I

    move-result v0

    .line 116
    if-ne v0, v2, :cond_0

    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/d;->size:I

    iput v0, p0, Lorg/apache/james/mime4j/d;->pos:I

    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 121
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/d;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_3

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/d;->jH()I

    move-result v1

    .line 123
    if-eq v1, v2, :cond_1

    .line 124
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/d;->fI(I)V

    .line 126
    :cond_1
    if-eq v1, v4, :cond_2

    .line 127
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/d;->fI(I)V

    .line 134
    :cond_2
    :goto_1
    iput v0, p0, Lorg/apache/james/mime4j/d;->cDp:I

    goto :goto_0

    .line 129
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/d;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/d;->cDp:I

    if-eq v2, v1, :cond_2

    .line 131
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/d;->fI(I)V

    move v0, v1

    goto :goto_1
.end method
