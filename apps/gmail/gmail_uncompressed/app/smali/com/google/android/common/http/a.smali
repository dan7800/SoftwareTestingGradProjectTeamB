.class public final Lcom/google/android/common/http/a;
.super Lcom/google/android/common/http/h;
.source "SourceFile"


# static fields
.field private static final aVN:[B


# instance fields
.field private aVO:Lcom/google/android/common/http/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/a;->aVN:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/common/http/i;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    :cond_0
    const-string v0, "ISO-8859-1"

    const-string v1, "binary"

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/google/android/common/http/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-object p2, p0, Lcom/google/android/common/http/a;->aVO:Lcom/google/android/common/http/i;

    .line 104
    return-void
.end method


# virtual methods
.method protected final Cn()J
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/common/http/a;->aVO:Lcom/google/android/common/http/i;

    invoke-interface {v0}, Lcom/google/android/common/http/i;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/google/android/common/http/h;->a(Ljava/io/OutputStream;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/common/http/a;->aVO:Lcom/google/android/common/http/i;

    invoke-interface {v0}, Lcom/google/android/common/http/i;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    sget-object v1, Lcom/google/android/common/http/a;->aVN:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    sget-object v1, Lcom/google/android/common/http/a;->aWj:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 198
    sget-object v0, Lcom/google/android/common/http/a;->aWj:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 200
    :cond_0
    return-void
.end method

.method protected final b(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/common/http/a;->Cn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 221
    iget-object v1, p0, Lcom/google/android/common/http/a;->aVO:Lcom/google/android/common/http/i;

    invoke-interface {v1}, Lcom/google/android/common/http/i;->fW()Ljava/io/InputStream;

    move-result-object v1

    .line 224
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 225
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method
