.class public abstract Lcom/google/android/common/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final aWg:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final aWh:[B

.field protected static final aWi:[B

.field protected static final aWj:[B

.field protected static final aWk:[B

.field protected static final aWl:[B

.field protected static final aWm:[B

.field protected static final aWn:[B

.field protected static final aWo:[B


# instance fields
.field private aWp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/android/common/http/g;->aWg:[B

    sput-object v0, Lcom/google/android/common/http/g;->aWh:[B

    .line 81
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWi:[B

    .line 87
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWj:[B

    .line 94
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWk:[B

    .line 101
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWl:[B

    .line 108
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWm:[B

    .line 115
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWn:[B

    .line 122
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/g;->aWo:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcom/google/android/common/http/g;[B)J
    .locals 12

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    .line 423
    if-nez p0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 429
    aget-object v1, p0, v0

    iput-object p1, v1, Lcom/google/android/common/http/g;->aWp:[B

    .line 430
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/android/common/http/g;->Cn()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_1

    move-wide v8, v6

    .line 431
    :goto_1
    cmp-long v1, v8, v4

    if-gez v1, :cond_2

    move-wide v0, v6

    .line 440
    :goto_2
    return-wide v0

    .line 430
    :cond_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v8}, Lcom/google/android/common/http/g;->c(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v8}, Lcom/google/android/common/http/g;->a(Ljava/io/OutputStream;)V

    invoke-direct {v1, v8}, Lcom/google/android/common/http/g;->d(Ljava/io/OutputStream;)V

    invoke-direct {v1, v8}, Lcom/google/android/common/http/g;->e(Ljava/io/OutputStream;)V

    invoke-static {v8}, Lcom/google/android/common/http/g;->f(Ljava/io/OutputStream;)V

    sget-object v9, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1}, Lcom/google/android/common/http/g;->Cn()J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_1

    .line 434
    :cond_2
    add-long/2addr v2, v8

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_3
    sget-object v0, Lcom/google/android/common/http/g;->aWk:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 437
    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 438
    sget-object v2, Lcom/google/android/common/http/g;->aWk:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 439
    sget-object v2, Lcom/google/android/common/http/g;->aWi:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 440
    goto :goto_2
.end method

.method public static a(Ljava/io/OutputStream;[Lcom/google/android/common/http/g;[B)V
    .locals 2

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    .line 384
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 388
    aget-object v1, p1, v0

    iput-object p2, v1, Lcom/google/android/common/http/g;->aWp:[B

    .line 389
    aget-object v1, p1, v0

    invoke-direct {v1, p0}, Lcom/google/android/common/http/g;->c(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lcom/google/android/common/http/g;->a(Ljava/io/OutputStream;)V

    invoke-direct {v1, p0}, Lcom/google/android/common/http/g;->d(Ljava/io/OutputStream;)V

    invoke-direct {v1, p0}, Lcom/google/android/common/http/g;->e(Ljava/io/OutputStream;)V

    invoke-static {p0}, Lcom/google/android/common/http/g;->f(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lcom/google/android/common/http/g;->b(Ljava/io/OutputStream;)V

    sget-object v1, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_3
    sget-object v0, Lcom/google/android/common/http/g;->aWk:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 392
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 393
    sget-object v0, Lcom/google/android/common/http/g;->aWk:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 394
    sget-object v0, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 395
    return-void
.end method

.method private c(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/common/http/g;->aWk:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 209
    iget-object v0, p0, Lcom/google/android/common/http/g;->aWp:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/common/http/g;->aWh:[B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 210
    sget-object v0, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 211
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/g;->aWp:[B

    goto :goto_0
.end method

.method private d(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/common/http/g;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    sget-object v1, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 237
    sget-object v1, Lcom/google/android/common/http/g;->aWm:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/common/http/g;->Cp()Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Lcom/google/android/common/http/g;->aWn:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 242
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 245
    :cond_0
    return-void
.end method

.method private e(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/common/http/g;->Cq()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    sget-object v1, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 259
    sget-object v1, Lcom/google/android/common/http/g;->aWo:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 260
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 262
    :cond_0
    return-void
.end method

.method private static f(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 272
    sget-object v0, Lcom/google/android/common/http/g;->aWi:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 273
    return-void
.end method

.method public static isRepeatable()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected abstract Cn()J
.end method

.method public abstract Cp()Ljava/lang/String;
.end method

.method public abstract Cq()Ljava/lang/String;
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/google/android/common/http/g;->aWl:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    sget-object v0, Lcom/google/android/common/http/g;->aWj:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/common/http/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 224
    sget-object v0, Lcom/google/android/common/http/g;->aWj:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    return-void
.end method

.method protected abstract b(Ljava/io/OutputStream;)V
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/android/common/http/g;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
