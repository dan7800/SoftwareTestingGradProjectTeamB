.class final Lcom/a/a/g;
.super Ljava/nio/charset/CharsetEncoder;
.source "SourceFile"


# static fields
.field static aRW:Z


# instance fields
.field private final aRK:Z

.field private final aRL:Lcom/a/a/a;

.field private final aRM:B

.field private final aRN:B

.field private aRO:Z

.field private final aRT:Lcom/a/a/e;

.field private aRU:I

.field private aRV:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "java.vm.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const-string v2, "1.4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1.5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    sput-boolean v0, Lcom/a/a/g;->aRW:Z

    const-string v2, "Sun Microsystems Inc."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/a/a/g;->aRW:Z

    .line 66
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/a/a/e;Lcom/a/a/a;Z)V
    .locals 2

    .prologue
    .line 69
    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 70
    iput-object p1, p0, Lcom/a/a/g;->aRT:Lcom/a/a/e;

    .line 71
    iput-object p2, p0, Lcom/a/a/g;->aRL:Lcom/a/a/a;

    .line 72
    iput-boolean p3, p0, Lcom/a/a/g;->aRK:Z

    .line 73
    invoke-virtual {p1}, Lcom/a/a/e;->Br()B

    move-result v0

    iput-byte v0, p0, Lcom/a/a/g;->aRM:B

    .line 74
    invoke-virtual {p1}, Lcom/a/a/e;->Bs()B

    move-result v0

    iput-byte v0, p0, Lcom/a/a/g;->aRN:B

    .line 75
    return-void
.end method


# virtual methods
.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 147
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 168
    :goto_1
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/a/a/g;->aRT:Lcom/a/a/e;

    invoke-virtual {v1, v0}, Lcom/a/a/e;->e(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    iget-boolean v1, p0, Lcom/a/a/g;->aRO:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/a/a/g;->aRU:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/g;->aRL:Lcom/a/a/a;

    iget v2, p0, Lcom/a/a/g;->aRV:I

    invoke-virtual {v1, v2}, Lcom/a/a/a;->du(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/a/a/g;->aRL:Lcom/a/a/a;

    invoke-virtual {v1, v0}, Lcom/a/a/a;->d(C)Z

    move-result v1

    if-nez v1, :cond_2

    iget-byte v1, p0, Lcom/a/a/g;->aRN:B

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/a/a/g;->aRK:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-byte v1, p0, Lcom/a/a/g;->aRN:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    iput-boolean v3, p0, Lcom/a/a/g;->aRO:Z

    iput v3, p0, Lcom/a/a/g;->aRV:I

    iput v3, p0, Lcom/a/a/g;->aRU:I

    .line 151
    :cond_4
    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 152
    :cond_5
    iget-boolean v1, p0, Lcom/a/a/g;->aRO:Z

    if-nez v1, :cond_6

    iget-byte v1, p0, Lcom/a/a/g;->aRM:B

    if-ne v0, v1, :cond_6

    .line 153
    iget-byte v0, p0, Lcom/a/a/g;->aRM:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    iget-byte v0, p0, Lcom/a/a/g;->aRN:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 156
    :cond_6
    iget-boolean v1, p0, Lcom/a/a/g;->aRO:Z

    if-nez v1, :cond_7

    iget-byte v1, p0, Lcom/a/a/g;->aRM:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/g;->aRO:Z

    iget v1, p0, Lcom/a/a/g;->aRU:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/a/a/g;->aRU:I

    :goto_2
    iget v1, p0, Lcom/a/a/g;->aRU:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_8

    iget v1, p0, Lcom/a/a/g;->aRU:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lcom/a/a/g;->aRU:I

    iget v1, p0, Lcom/a/a/g;->aRV:I

    iget v2, p0, Lcom/a/a/g;->aRU:I

    shr-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/g;->aRV:I

    iget v1, p0, Lcom/a/a/g;->aRV:I

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lcom/a/a/g;->aRV:I

    iget-object v1, p0, Lcom/a/a/g;->aRL:Lcom/a/a/a;

    iget v2, p0, Lcom/a/a/g;->aRV:I

    invoke-virtual {v1, v2}, Lcom/a/a/a;->du(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iput v3, p0, Lcom/a/a/g;->aRV:I

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/a/a/g;->aRU:I

    rsub-int/lit8 v1, v1, 0x6

    shl-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/a/a/g;->aRV:I

    goto/16 :goto_0

    .line 164
    :cond_9
    iget-boolean v0, p0, Lcom/a/a/g;->aRO:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/a/a/g;->aRW:Z

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 166
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1

    .line 168
    :cond_a
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1
.end method

.method protected final implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/a/a/g;->aRO:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 108
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 113
    :goto_0
    return-object v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/a/a/g;->aRU:I

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/a/a/g;->aRL:Lcom/a/a/a;

    iget v1, p0, Lcom/a/a/g;->aRV:I

    invoke-virtual {v0, v1}, Lcom/a/a/a;->du(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    :cond_1
    iget-byte v0, p0, Lcom/a/a/g;->aRN:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 113
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected final implReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/a/a/g;->aRO:Z

    .line 83
    iput v0, p0, Lcom/a/a/g;->aRV:I

    .line 84
    iput v0, p0, Lcom/a/a/g;->aRU:I

    .line 85
    return-void
.end method
