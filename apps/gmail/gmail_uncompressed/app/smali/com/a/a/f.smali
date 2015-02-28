.class final Lcom/a/a/f;
.super Ljava/nio/charset/CharsetDecoder;
.source "SourceFile"


# instance fields
.field private final aRK:Z

.field private final aRL:Lcom/a/a/a;

.field private final aRM:B

.field private final aRN:B

.field private aRO:Z

.field private aRP:I

.field private aRQ:I

.field private aRR:Z

.field private aRS:Z


# direct methods
.method constructor <init>(Lcom/a/a/e;Lcom/a/a/a;Z)V
    .locals 2

    .prologue
    .line 52
    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 53
    iput-object p2, p0, Lcom/a/a/f;->aRL:Lcom/a/a/a;

    .line 54
    iput-boolean p3, p0, Lcom/a/a/f;->aRK:Z

    .line 55
    invoke-virtual {p1}, Lcom/a/a/e;->Br()B

    move-result v0

    iput-byte v0, p0, Lcom/a/a/f;->aRM:B

    .line 56
    invoke-virtual {p1}, Lcom/a/a/e;->Bs()B

    move-result v0

    iput-byte v0, p0, Lcom/a/a/f;->aRN:B

    .line 57
    return-void
.end method

.method private Bt()Z
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/a/a/f;->aRQ:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/f;->aRP:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Bu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/a/a/f;->aRO:Z

    .line 192
    iput v0, p0, Lcom/a/a/f;->aRP:I

    .line 193
    iput v0, p0, Lcom/a/a/f;->aRQ:I

    .line 194
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 67
    iget-boolean v0, p0, Lcom/a/a/f;->aRO:Z

    if-eqz v0, :cond_a

    .line 68
    iget-byte v0, p0, Lcom/a/a/f;->aRN:B

    if-ne v1, v0, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/a/a/f;->Bt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/a/a/f;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/a/a/f;->aRR:Z

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-static {p1}, Lcom/a/a/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_1
    iget-byte v0, p0, Lcom/a/a/f;->aRM:B

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 77
    :goto_2
    invoke-direct {p0}, Lcom/a/a/f;->Bu()V

    .line 85
    :cond_2
    iput-boolean v5, p0, Lcom/a/a/f;->aRR:Z

    goto :goto_0

    .line 76
    :cond_3
    iput-boolean v4, p0, Lcom/a/a/f;->aRS:Z

    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    invoke-static {p1}, Lcom/a/a/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_5
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/a/f;->aRL:Lcom/a/a/a;

    invoke-virtual {v2, v1}, Lcom/a/a/a;->a(B)I

    move-result v2

    if-ltz v2, :cond_7

    iget v1, p0, Lcom/a/a/f;->aRP:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/a/a/f;->aRP:I

    iget v1, p0, Lcom/a/a/f;->aRP:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_6

    iget v1, p0, Lcom/a/a/f;->aRQ:I

    iget v3, p0, Lcom/a/a/f;->aRP:I

    rsub-int/lit8 v3, v3, 0x10

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/f;->aRQ:I

    .line 82
    :goto_3
    if-eqz v0, :cond_2

    goto :goto_1

    .line 81
    :cond_6
    iget v1, p0, Lcom/a/a/f;->aRP:I

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lcom/a/a/f;->aRP:I

    iget v1, p0, Lcom/a/a/f;->aRQ:I

    iget v3, p0, Lcom/a/a/f;->aRP:I

    shr-int v3, v2, v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/a/a/f;->aRQ:I

    iget v1, p0, Lcom/a/a/f;->aRQ:I

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    iget v1, p0, Lcom/a/a/f;->aRP:I

    rsub-int/lit8 v1, v1, 0x10

    shl-int v1, v2, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/f;->aRQ:I

    goto :goto_3

    :cond_7
    iget-boolean v2, p0, Lcom/a/a/f;->aRK:Z

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcom/a/a/f;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_3

    :cond_8
    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    invoke-direct {p0}, Lcom/a/a/f;->Bt()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/a/a/f;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    :cond_9
    invoke-direct {p0}, Lcom/a/a/f;->Bu()V

    goto :goto_3

    .line 87
    :cond_a
    iget-byte v0, p0, Lcom/a/a/f;->aRM:B

    if-ne v1, v0, :cond_c

    .line 88
    iput-boolean v4, p0, Lcom/a/a/f;->aRO:Z

    .line 89
    iget-boolean v0, p0, Lcom/a/a/f;->aRS:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/a/a/f;->aRK:Z

    if-eqz v0, :cond_b

    .line 90
    invoke-static {p1}, Lcom/a/a/f;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_1

    .line 91
    :cond_b
    iput-boolean v4, p0, Lcom/a/a/f;->aRR:Z

    goto/16 :goto_0

    .line 94
    :cond_c
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    invoke-static {p1}, Lcom/a/a/f;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto/16 :goto_1

    .line 96
    :cond_d
    int-to-char v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 97
    iput-boolean v5, p0, Lcom/a/a/f;->aRS:Z

    goto/16 :goto_0

    .line 100
    :cond_e
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/a/a/f;->aRO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/f;->aRK:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/a/a/f;->Bt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected final implReset()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/a/a/f;->Bu()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/f;->aRS:Z

    .line 161
    return-void
.end method
