.class public final Lcom/google/api/client/http/d;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private final cwG:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/d;->cwG:[B

    .line 81
    if-ltz p3, :cond_0

    add-int/lit8 v0, p3, 0x0

    array-length v3, p2

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset %s, length %s, array length %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/api/client/a/a/a/a/a/a;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput v2, p0, Lcom/google/api/client/http/d;->offset:I

    .line 84
    iput p3, p0, Lcom/google/api/client/http/d;->length:I

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method


# virtual methods
.method public final Xk()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic cn(Z)Lcom/google/api/client/http/b;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->cn(Z)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/d;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/d;->cwG:[B

    iget v2, p0, Lcom/google/api/client/http/d;->offset:I

    iget v3, p0, Lcom/google/api/client/http/d;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/google/api/client/http/d;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final bridge synthetic hc(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->hc(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/d;

    return-object v0
.end method
