.class public final Lcom/google/api/client/http/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ayL:Ljava/lang/String;

.field private final cwD:Lcom/google/api/client/http/s;

.field cxA:Lcom/google/api/client/http/E;

.field private final cxB:Lcom/google/api/client/http/t;

.field private cxC:Z

.field private cxh:I

.field private cxi:Z

.field private cxy:Ljava/io/InputStream;

.field private final cxz:Ljava/lang/String;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/t;Lcom/google/api/client/http/E;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/api/client/http/w;->cxB:Lcom/google/api/client/http/t;

    .line 121
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XB()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/http/w;->cxh:I

    .line 122
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/http/w;->cxi:Z

    .line 123
    iput-object p2, p0, Lcom/google/api/client/http/w;->cxA:Lcom/google/api/client/http/E;

    .line 124
    invoke-virtual {p2}, Lcom/google/api/client/http/E;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/w;->cxz:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Lcom/google/api/client/http/E;->getStatusCode()I

    move-result v0

    .line 126
    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/google/api/client/http/w;->statusCode:I

    .line 127
    invoke-virtual {p2}, Lcom/google/api/client/http/E;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    .line 128
    iput-object v4, p0, Lcom/google/api/client/http/w;->statusMessage:Ljava/lang/String;

    .line 129
    sget-object v5, Lcom/google/api/client/http/A;->cwd:Ljava/util/logging/Logger;

    .line 130
    iget-boolean v0, p0, Lcom/google/api/client/http/w;->cxi:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    move v3, v1

    .line 132
    :goto_0
    if-eqz v3, :cond_8

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v1, "-------------- RESPONSE --------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Lcom/google/api/client/http/E;->XW()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    :goto_1
    sget-object v1, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :goto_2
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XE()Lcom/google/api/client/http/o;

    move-result-object v4

    if-eqz v3, :cond_6

    move-object v1, v0

    :goto_3
    invoke-virtual {v4, p2, v1}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/E;Ljava/lang/StringBuilder;)V

    .line 152
    invoke-virtual {p2}, Lcom/google/api/client/http/E;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 153
    if-nez v1, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->XE()Lcom/google/api/client/http/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/o;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_2
    iput-object v1, p0, Lcom/google/api/client/http/w;->ayL:Ljava/lang/String;

    .line 157
    if-nez v1, :cond_7

    :goto_4
    iput-object v2, p0, Lcom/google/api/client/http/w;->cwD:Lcom/google/api/client/http/s;

    .line 160
    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 163
    :cond_3
    return-void

    :cond_4
    move v3, v1

    .line 130
    goto :goto_0

    .line 139
    :cond_5
    iget v1, p0, Lcom/google/api/client/http/w;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    if-eqz v4, :cond_1

    .line 141
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 148
    goto :goto_3

    .line 157
    :cond_7
    new-instance v2, Lcom/google/api/client/http/s;

    invoke-direct {v2, v1}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_2
.end method

.method private XR()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/api/client/http/w;->cwD:Lcom/google/api/client/http/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/w;->cwD:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xx()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/api/client/util/j;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/client/http/w;->cwD:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->Xx()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final KB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/api/client/http/w;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final XD()Lcom/google/api/client/http/o;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxB:Lcom/google/api/client/http/t;

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XE()Lcom/google/api/client/http/o;

    move-result-object v0

    return-object v0
.end method

.method public final XO()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/api/client/http/w;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/z;->fb(I)Z

    move-result v0

    return v0
.end method

.method public final XP()Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxB:Lcom/google/api/client/http/t;

    return-object v0
.end method

.method public final XQ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/api/client/http/w;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 511
    if-nez v0, :cond_0

    .line 512
    const-string v0, ""

    .line 516
    :goto_0
    return-object v0

    .line 514
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 515
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/w;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 516
    invoke-direct {p0}, Lcom/google/api/client/http/w;->XR()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Lcom/google/api/client/http/w;->statusCode:I

    iget-object v2, p0, Lcom/google/api/client/http/w;->cxB:Lcom/google/api/client/http/t;

    invoke-virtual {v2}, Lcom/google/api/client/http/t;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    div-int/lit8 v2, v1, 0x64

    if-eq v2, v0, :cond_0

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_0

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/w;->ignore()V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxB:Lcom/google/api/client/http/t;

    invoke-virtual {v0}, Lcom/google/api/client/http/t;->XK()Lcom/google/api/client/util/F;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/w;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/api/client/http/w;->XR()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/F;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/api/client/http/w;->ignore()V

    .line 442
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxA:Lcom/google/api/client/http/E;

    invoke-virtual {v0}, Lcom/google/api/client/http/E;->disconnect()V

    .line 443
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/api/client/http/w;->cxC:Z

    if-nez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxA:Lcom/google/api/client/http/E;

    invoke-virtual {v0}, Lcom/google/api/client/http/E;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_2

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/http/w;->cxz:Ljava/lang/String;

    .line 362
    if-eqz v1, :cond_0

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 366
    :cond_0
    :try_start_1
    sget-object v2, Lcom/google/api/client/http/A;->cwd:Ljava/util/logging/Logger;

    .line 367
    iget-boolean v1, p0, Lcom/google/api/client/http/w;->cxi:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    new-instance v1, Lcom/google/api/client/util/z;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v4, p0, Lcom/google/api/client/http/w;->cxh:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/api/client/util/z;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v1

    .line 371
    :cond_1
    iput-object v0, p0, Lcom/google/api/client/http/w;->cxy:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/w;->cxC:Z

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/google/api/client/http/w;->cxy:Ljava/io/InputStream;

    return-object v0

    .line 377
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 378
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 377
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/client/http/w;->ayL:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/api/client/http/w;->statusCode:I

    return v0
.end method

.method public final ignore()V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/api/client/http/w;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 432
    :cond_0
    return-void
.end method
