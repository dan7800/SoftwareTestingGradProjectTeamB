.class public final Lcom/google/api/client/extensions/android/json/a;
.super Lcom/google/api/client/json/d;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/api/client/json/d;-><init>()V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "running on Android SDK level %s but requires minimum %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/api/client/a/a/a/a/a/a;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method private a(Ljava/io/Reader;)Lcom/google/api/client/json/h;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/google/api/client/extensions/android/json/b;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android/json/b;-><init>(Lcom/google/api/client/extensions/android/json/a;Landroid/util/JsonReader;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/e;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;

    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;-><init>(Lcom/google/api/client/extensions/android/json/a;Landroid/util/JsonWriter;)V

    return-object v1
.end method

.method public final a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/h;
    .locals 1

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/android/json/a;->g(Ljava/io/InputStream;)Lcom/google/api/client/json/h;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/extensions/android/json/a;->a(Ljava/io/Reader;)Lcom/google/api/client/json/h;

    move-result-object v0

    goto :goto_0
.end method

.method public final g(Ljava/io/InputStream;)Lcom/google/api/client/json/h;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/api/client/util/j;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/extensions/android/json/a;->a(Ljava/io/Reader;)Lcom/google/api/client/json/h;

    move-result-object v0

    return-object v0
.end method

.method public final gS(Ljava/lang/String;)Lcom/google/api/client/json/h;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/extensions/android/json/a;->a(Ljava/io/Reader;)Lcom/google/api/client/json/h;

    move-result-object v0

    return-object v0
.end method
