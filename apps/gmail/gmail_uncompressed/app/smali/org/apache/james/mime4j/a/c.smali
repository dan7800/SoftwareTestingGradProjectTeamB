.class public Lorg/apache/james/mime4j/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cDh:Lorg/apache/james/mime4j/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    return-void
.end method

.method private static aB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 135
    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    .line 136
    const-string v2, "=20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/a/c;->hT(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static hT(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 49
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    new-instance v2, Lorg/apache/james/mime4j/a/d;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/a/d;-><init>(Ljava/io/InputStream;)V

    .line 57
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/d;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 65
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {v0}, Lorg/apache/james/mime4j/f;->error(Ljava/lang/Object;)V

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static hU(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 83
    new-instance v2, Lorg/apache/james/mime4j/a/a;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/a/a;-><init>(Ljava/io/InputStream;)V

    .line 86
    :goto_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/a/a;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {v0}, Lorg/apache/james/mime4j/f;->error(Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static hV(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 160
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v1

    .line 170
    :goto_1
    const-string v3, "=?"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 175
    if-eq v5, v7, :cond_6

    .line 176
    add-int/lit8 v3, v5, 0x2

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 179
    if-eq v3, v7, :cond_6

    .line 180
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 183
    if-eq v3, v7, :cond_6

    .line 184
    const-string v6, "?="

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 187
    if-eq v3, v7, :cond_6

    .line 188
    add-int/lit8 v3, v3, 0x2

    .line 192
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {p0, v5, v3}, Lorg/apache/james/mime4j/a/c;->j(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 195
    if-nez v6, :cond_2

    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_2
    if-eqz v6, :cond_5

    const/4 v0, 0x1

    :goto_3
    move v2, v3

    .line 207
    goto :goto_1

    .line 199
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/apache/james/mime4j/b/a;->ib(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 200
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move v0, v1

    .line 206
    goto :goto_3

    .line 209
    :cond_6
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x3f

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 219
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 220
    if-eq v1, v3, :cond_0

    add-int/lit8 v2, p2, -0x2

    if-ne v1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 224
    if-eq v2, v3, :cond_0

    add-int/lit8 v3, p2, -0x2

    if-eq v2, v3, :cond_0

    .line 227
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, p2, -0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v3}, Lorg/apache/james/mime4j/b/a;->ie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    if-nez v4, :cond_2

    .line 233
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 234
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MIME charset \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in encoded word \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t have a corresponding Java charset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {v4}, Lorg/apache/james/mime4j/b/a;->ic(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 240
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 241
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current JDK doesn\'t support decoding of charset \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (MIME charset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in encoded word \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 249
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 250
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 251
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing encoded text in encoded word: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 258
    :cond_4
    :try_start_0
    const-string v3, "Q"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 259
    invoke-static {v2, v4}, Lorg/apache/james/mime4j/a/c;->aB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 260
    :cond_5
    const-string v3, "B"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/james/mime4j/a/c;->hU(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 263
    :cond_6
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 264
    sget-object v1, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: Unknown encoding in encoded word \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 271
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 272
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported encoding in encoded word \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 276
    :catch_1
    move-exception v1

    .line 277
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isWarnEnabled()Z

    .line 278
    sget-object v2, Lorg/apache/james/mime4j/a/c;->cDh:Lorg/apache/james/mime4j/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not decode encoded word \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/james/mime4j/f;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
