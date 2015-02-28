.class public final Lcom/android/emailcommon/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static abC:Ljavax/net/ssl/SSLSocketFactory;

.field private static abD:Lcom/android/emailcommon/b/p;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 163
    const-class v2, Lcom/android/emailcommon/b/o;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/b/o;->abD:Lcom/android/emailcommon/b/p;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/emailcommon/b/o;->abD:Lcom/android/emailcommon/b/p;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/b/p;->ai(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 170
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/emailcommon/b/q;

    invoke-direct {v4, p0, p1}, Lcom/android/emailcommon/b/q;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    aput-object v4, v0, v3

    .line 172
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/emailcommon/b/n;->a([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/b/n;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :goto_0
    monitor-exit v2

    return-object v0

    .line 177
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/emailcommon/b/o;->abC:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/emailcommon/b/n;->a([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/b/n;

    .line 181
    sput-object v0, Lcom/android/emailcommon/b/o;->abC:Ljavax/net/ssl/SSLSocketFactory;

    .line 183
    :cond_2
    sget-object v0, Lcom/android/emailcommon/b/o;->abC:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_3
    const-string v3, "Email.Ssl"

    const-string v4, "Unable to acquire SSLSocketFactory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    move-object v0, v1

    .line 192
    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    const-string v3, "Email.Ssl"

    const-string v4, "Unable to acquire SSLSocketFactory"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Lcom/android/emailcommon/b/p;)V
    .locals 0

    .prologue
    .line 149
    sput-object p0, Lcom/android/emailcommon/b/o;->abD:Lcom/android/emailcommon/b/p;

    .line 150
    return-void
.end method
