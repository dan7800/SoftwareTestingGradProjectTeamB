.class public final Lcom/android/email/mail/transport/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Ru:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private LP:Ljava/io/InputStream;

.field private final Rv:Ljava/lang/String;

.field private Rw:Ljava/net/Socket;

.field private Rx:Ljava/io/OutputStream;

.field private final mContext:Landroid/content/Context;

.field protected final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/b;->Ru:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/email/mail/transport/b;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/email/mail/transport/b;->Rv:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 70
    return-void
.end method

.method private jV()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jX()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final ah(Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    .line 314
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 315
    int-to-char v3, v2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    .line 316
    int-to-char v3, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 318
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 323
    :cond_1
    if-ne v2, v5, :cond_2

    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 324
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "End of stream reached while trying to read line."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    if-eqz p1, :cond_3

    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 328
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<< "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    :cond_3
    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/email/mail/transport/b;->jU()Lcom/android/email/mail/transport/b;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    .line 275
    iput-object v1, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    .line 276
    iput-object v1, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    .line 277
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 292
    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/android/emailcommon/b;->VK:Z

    if-nez v0, :cond_1

    .line 293
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 301
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 302
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 303
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 304
    return-void

    .line 295
    :cond_1
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/email/mail/transport/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getSoTimeout()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jU()Lcom/android/email/mail/transport/b;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/android/email/mail/transport/b;

    iget-object v1, p0, Lcom/android/email/mail/transport/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rv:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/transport/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    return-object v0
.end method

.method public final jW()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v0, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jY()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jX()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/b/o;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v5, v5, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    .line 169
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 170
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    .line 171
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    .line 173
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "socket_certificates"

    const-string v4, "reopenTls"

    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jX()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 175
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v5, v0

    .line 176
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "cipher_suite"

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_0
    return-void

    .line 181
    :catch_0
    move-exception v2

    .line 182
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 183
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 186
    :catch_1
    move-exception v2

    .line 187
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 188
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 190
    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v9, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public final open()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 107
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*** "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->Rv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v4, v4, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget v4, v4, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 114
    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jV()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/email/mail/transport/b;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jX()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/b/o;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    const/16 v4, 0x2710

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 122
    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jV()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jX()Z

    move-result v2

    if-nez v2, :cond_6

    .line 123
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    :catch_0
    move-exception v2

    .line 139
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 140
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 118
    :cond_2
    :try_start_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    .line 144
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 145
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :cond_3
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 123
    :cond_4
    :try_start_2
    sget-object v4, Lcom/android/email/mail/transport/b;->Ru:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v4, v3, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Certificate hostname not useable for server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :catch_2
    move-exception v2

    .line 149
    sget-boolean v3, Lcom/android/email/b;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 150
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    :cond_5
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v8, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 125
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "socket_certificates"

    const-string v4, "open"

    invoke-direct {p0}, Lcom/android/email/mail/transport/b;->jX()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v5, v0

    .line 129
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 130
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "cipher_suite"

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 135
    :cond_7
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/b;->LP:Ljava/io/InputStream;

    .line 136
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/b;->Rx:Ljava/io/OutputStream;

    .line 137
    iget-object v2, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/email/mail/transport/b;->Rw:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 248
    return-void
.end method
