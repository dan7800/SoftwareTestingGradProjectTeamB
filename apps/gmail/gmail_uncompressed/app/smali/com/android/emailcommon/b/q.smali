.class final Lcom/android/emailcommon/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private abE:Ljava/security/PublicKey;

.field private final mContext:Landroid/content/Context;

.field private final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/emailcommon/b/q;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "serverCert"

    aput-object v3, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 82
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_1
    return-void

    .line 86
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "We don\'t check client certificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 101
    array-length v0, p1

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No certificates?"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 105
    iget-object v1, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/emailcommon/b/q;->abE:Ljava/security/PublicKey;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    const-string v2, "X509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/b/q;->abE:Ljava/security/PublicKey;

    .line 113
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/emailcommon/b/q;->abE:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "PublicKey has changed since initial connection!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v0, v1, Lcom/android/emailcommon/provider/HostAuth;->Zl:[B

    .line 126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 127
    const-string v2, "serverCert"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 128
    iget-object v0, p0, Lcom/android/emailcommon/b/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/emailcommon/b/q;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v4, v3, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    :cond_3
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method
