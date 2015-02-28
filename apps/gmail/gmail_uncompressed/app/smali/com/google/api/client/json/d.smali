.class public abstract Lcom/google/api/client/json/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private l(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lcom/google/api/client/util/j;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/d;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/e;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/google/api/client/json/e;->WE()V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/e;->ao(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/api/client/json/e;->flush()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/e;
.end method

.method public abstract a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/h;
.end method

.method public final an(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/d;->l(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract g(Ljava/io/InputStream;)Lcom/google/api/client/json/h;
.end method

.method public abstract gS(Ljava/lang/String;)Lcom/google/api/client/json/h;
.end method

.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/d;->l(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
