.class public final Lorg/apache/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cDb:C

.field public static final czG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/a/a/a;->cDb:C

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/a/a/a;->czG:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 1107
    const/16 v0, 0x1000

    new-array v3, v0, [C

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v2, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1108
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    move v0, v2

    .line 1111
    :goto_1
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 1052
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1053
    invoke-static {v0, p1}, Lorg/apache/a/a/a;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1054
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4

    .prologue
    .line 1002
    invoke-static {p0, p1}, Lorg/apache/a/a/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1003
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1004
    const/4 v0, -0x1

    .line 1006
    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public static c(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 1025
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 1026
    const-wide/16 v0, 0x0

    .line 1027
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1029
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1030
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 1032
    :cond_0
    return-wide v0
.end method

.method public static c(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 383
    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lorg/apache/a/a/a;->a(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 384
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/a/a/a;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static h(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lorg/apache/a/a/a/a;

    invoke-direct {v0}, Lorg/apache/a/a/a/a;-><init>()V

    .line 218
    invoke-static {p0, v0}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 219
    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 360
    invoke-static {p0, v0}, Lorg/apache/a/a/a;->a(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 361
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
