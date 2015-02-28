.class public final Lcom/google/api/client/http/a/c;
.super Lcom/google/api/client/http/A;
.source "SourceFile"


# static fields
.field private static final cxD:[Ljava/lang/String;


# instance fields
.field private final cxX:Ljava/net/Proxy;

.field private final cxY:Ljavax/net/ssl/SSLSocketFactory;

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    .line 77
    sput-object v0, Lcom/google/api/client/http/a/c;->cxD:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a/c;-><init>(B)V

    .line 102
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lcom/google/api/client/http/A;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/google/api/client/http/a/c;->cxX:Ljava/net/Proxy;

    .line 114
    iput-object v0, p0, Lcom/google/api/client/http/a/c;->cxY:Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    iput-object v0, p0, Lcom/google/api/client/http/a/c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 116
    return-void
.end method


# virtual methods
.method protected final synthetic az(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/D;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/a/c;->hs(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HTTP method %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/api/client/a/a/a/a/a/a;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/http/a/c;->cxX:Ljava/net/Proxy;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/google/api/client/http/a/c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/api/client/http/a/c;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    iget-object v2, p0, Lcom/google/api/client/http/a/c;->cxY:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/api/client/http/a/c;->cxY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    new-instance v1, Lcom/google/api/client/http/a/a;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/a/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/google/api/client/http/a/c;->cxX:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public final hs(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/api/client/http/a/c;->cxD:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
