.class public final Lcom/android/email/k;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final LP:Ljava/io/InputStream;

.field private LQ:I

.field private final mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/email/k;->LP:Ljava/io/InputStream;

    .line 34
    iput p2, p0, Lcom/android/email/k;->mLength:I

    .line 35
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/android/email/k;->mLength:I

    iget v1, p0, Lcom/android/email/k;->LQ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/email/k;->mLength:I

    return v0
.end method

.method public final read()I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/k;->LQ:I

    iget v1, p0, Lcom/android/email/k;->mLength:I

    if-ge v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcom/android/email/k;->LQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/k;->LQ:I

    .line 46
    iget-object v0, p0, Lcom/android/email/k;->LP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/k;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 54
    iget v1, p0, Lcom/android/email/k;->LQ:I

    iget v2, p0, Lcom/android/email/k;->mLength:I

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/email/k;->LP:Ljava/io/InputStream;

    iget v2, p0, Lcom/android/email/k;->mLength:I

    iget v3, p0, Lcom/android/email/k;->LQ:I

    sub-int/2addr v2, v3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 56
    if-ne v1, v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget v0, p0, Lcom/android/email/k;->LQ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/k;->LQ:I

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "FixedLengthInputStream(in=%s, length=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/k;->LP:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/email/k;->mLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
