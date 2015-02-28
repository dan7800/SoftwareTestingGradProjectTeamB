.class final Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aRA:[I

.field private final aRz:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a;->aRz:[C

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alphabet has incorrect length (should be 64, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/a/a/a;->aRA:[I

    .line 73
    iget-object v0, p0, Lcom/a/a/a;->aRA:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/a/a;->aRz:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/a/a/a;->aRz:[C

    aget-char v1, v1, v0

    .line 76
    if-lt v1, v3, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid character in alphabet: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/a/a/a;->aRA:[I

    aput v0, v2, v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method final a(B)I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a;->aRA:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method final d(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a;->aRA:[I

    aget v1, v1, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final du(I)B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/a/a/a;->aRz:[C

    aget-char v0, v0, p1

    int-to-byte v0, v0

    return v0
.end method
