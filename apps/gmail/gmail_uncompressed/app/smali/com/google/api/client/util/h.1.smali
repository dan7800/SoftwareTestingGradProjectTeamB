.class public final Lcom/google/api/client/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    if-gez p3, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    if-ge v0, p3, :cond_1

    .line 181
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 182
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 183
    add-int/2addr v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_1
    return v0
.end method

.method public static a(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/api/client/util/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/client/util/i;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method
