.class public final Lcom/google/api/client/util/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final czJ:Lcom/google/api/client/util/a/b;

.field private static final czK:Lcom/google/api/client/util/a/b;

.field private static final czL:Lcom/google/api/client/util/a/b;

.field private static final czM:Lcom/google/api/client/util/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->czJ:Lcom/google/api/client/util/a/b;

    .line 31
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.!~*\'()@:$&,;="

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->czK:Lcom/google/api/client/util/a/b;

    .line 34
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.!~*\'():$&,;="

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->czL:Lcom/google/api/client/util/a/b;

    .line 37
    new-instance v0, Lcom/google/api/client/util/a/c;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/a/c;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/a/a;->czM:Lcom/google/api/client/util/a/b;

    return-void
.end method

.method public static hA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/api/client/util/a/a;->czK:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hB(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/api/client/util/a/a;->czL:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/api/client/util/a/a;->czM:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/api/client/util/a/a;->czJ:Lcom/google/api/client/util/a/b;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/a/b;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
