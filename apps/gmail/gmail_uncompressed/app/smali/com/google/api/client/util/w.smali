.class public final Lcom/google/api/client/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 96
    :cond_1
    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 100
    :cond_2
    return-void
.end method

.method public static b(Lcom/google/api/client/util/K;)J
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/google/api/client/util/g;

    invoke-direct {v0}, Lcom/google/api/client/util/g;-><init>()V

    .line 113
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/api/client/util/K;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Lcom/google/api/client/util/g;->close()V

    .line 117
    iget-wide v0, v0, Lcom/google/api/client/util/g;->cyB:J

    return-wide v0

    .line 115
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/g;->close()V

    throw v1
.end method
