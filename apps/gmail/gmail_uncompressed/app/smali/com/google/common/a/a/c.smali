.class public final Lcom/google/common/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/a/a/b;Ljava/io/InputStream;Lcom/google/common/a/a/a;)I
    .locals 6

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/a/a/a;->a(Ljava/io/InputStream;Z)J

    move-result-wide v0

    .line 157
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 158
    const/4 v0, -0x1

    .line 169
    :goto_0
    return v0

    .line 161
    :cond_0
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 162
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    .line 166
    invoke-virtual {p0, v1}, Lcom/google/common/a/a/b;->fF(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/a/b;

    invoke-virtual {p2, v0}, Lcom/google/common/a/a/a;->a(Lcom/google/common/a/a/b;)V

    .line 167
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/a/a/a;->a(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    .line 168
    invoke-virtual {p2, p1, v0}, Lcom/google/common/a/a/a;->a(Ljava/io/InputStream;I)I

    move v0, v1

    .line 169
    goto :goto_0
.end method
