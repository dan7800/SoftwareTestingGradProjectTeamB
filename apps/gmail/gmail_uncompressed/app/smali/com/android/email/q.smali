.class public final Lcom/android/email/q;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final LP:Ljava/io/InputStream;

.field private LT:Z

.field private LU:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/email/q;->LP:Ljava/io/InputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public final gS()I
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/email/q;->LT:Z

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/email/q;->read()I

    move-result v0

    iput v0, p0, Lcom/android/email/q;->LU:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/q;->LT:Z

    .line 51
    :cond_0
    iget v0, p0, Lcom/android/email/q;->LU:I

    return v0
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/email/q;->LT:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/email/q;->LP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/q;->LT:Z

    .line 42
    iget v0, p0, Lcom/android/email/q;->LU:I

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/q;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/android/email/q;->LT:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/email/q;->LP:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 59
    :cond_0
    iget v0, p0, Lcom/android/email/q;->LU:I

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 60
    iput-boolean v1, p0, Lcom/android/email/q;->LT:Z

    .line 61
    iget-object v0, p0, Lcom/android/email/q;->LP:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-string v0, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/q;->LP:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/q;->LT:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/email/q;->LU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
