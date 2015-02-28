.class public final Lcom/android/emailcommon/b/n;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field private final abA:[Ljava/lang/String;

.field private final abB:[Ljava/lang/String;

.field private final abx:Ljavax/net/ssl/SSLSocketFactory;

.field private final aby:Z

.field private final abz:I


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 43
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "SSL_RSA_WITH_RC4_128_MD5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SSL_RSA_WITH_DES_CBC_SHA"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/emailcommon/b/n;->abB:[Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    .line 70
    iput-boolean p2, p0, Lcom/android/emailcommon/b/n;->aby:Z

    .line 71
    const/16 v1, 0x7530

    iput v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    .line 76
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    iget-object v3, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    iget-object v4, p0, Lcom/android/emailcommon/b/n;->abB:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 86
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 88
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public static a([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 99
    new-instance v1, Lcom/android/emailcommon/b/n;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x7530

    invoke-direct {v1, v0, v2, v3}, Lcom/android/emailcommon/b/n;-><init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V

    return-object v1
.end method

.method public static a([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 108
    new-instance v1, Lcom/android/emailcommon/b/n;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x7530

    invoke-direct {v1, v0, v2, v3}, Lcom/android/emailcommon/b/n;-><init>(Ljavax/net/ssl/SSLSocketFactory;ZI)V

    return-object v1
.end method

.method private static a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 227
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to verify non-SSL socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 234
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 236
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Cannot verify SSL socket without session"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "using cipherSuite %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot verify hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    return-void
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHandshakeTimeout"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "unable to set handshake timeout"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 129
    iget v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/b/n;->a(Ljavax/net/ssl/SSLSocket;I)V

    .line 130
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Lcom/android/emailcommon/b/n;->aby:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-static {v0, p1}, Lcom/android/emailcommon/b/n;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 141
    iget v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/b/n;->a(Ljavax/net/ssl/SSLSocket;I)V

    .line 142
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 143
    iget-boolean v1, p0, Lcom/android/emailcommon/b/n;->aby:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v0, p1}, Lcom/android/emailcommon/b/n;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 152
    iget v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/b/n;->a(Ljavax/net/ssl/SSLSocket;I)V

    .line 153
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 162
    iget v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/b/n;->a(Ljavax/net/ssl/SSLSocket;I)V

    .line 163
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 118
    iget v1, p0, Lcom/android/emailcommon/b/n;->abz:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/b/n;->a(Ljavax/net/ssl/SSLSocket;I)V

    .line 119
    iget-object v1, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 120
    iget-boolean v1, p0, Lcom/android/emailcommon/b/n;->aby:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-static {v0, p2}, Lcom/android/emailcommon/b/n;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abA:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/emailcommon/b/n;->abx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
