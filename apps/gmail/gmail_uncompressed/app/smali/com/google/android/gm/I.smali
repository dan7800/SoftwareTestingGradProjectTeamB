.class public final Lcom/google/android/gm/I;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final Tz:Ljava/lang/String;

.field private aXY:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/I;->mW:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/I;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/android/gm/I;->Tz:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private CN()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gm/I;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/ay;->bk(Landroid/content/Context;)V

    .line 52
    :try_start_0
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gm/I;->Tz:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/google/android/gm/I;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "SID"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v2, p0, Lcom/google/android/gm/I;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v4, "LSID"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v4, p0, Lcom/google/android/gm/I;->mContext:Landroid/content/Context;

    const-string v5, "Android-Gview/0.1"

    invoke-direct {v2, v4, v5}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "SID"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, "LSID"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/bG;->f(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v4}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 67
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    :try_start_3
    invoke-interface {v4, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 70
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 78
    if-eqz v4, :cond_0

    .line 80
    :try_start_4
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :cond_0
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 92
    :cond_1
    :goto_2
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 72
    :goto_3
    :try_start_6
    sget-object v5, Lcom/google/android/gm/I;->mW:Ljava/lang/String;

    const-string v6, "Exception caught while loading Gview: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 78
    if-eqz v4, :cond_2

    .line 80
    :try_start_7
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 83
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 85
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 88
    :cond_3
    :goto_5
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto :goto_2

    .line 73
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 74
    :goto_6
    :try_start_9
    sget-object v5, Lcom/google/android/gm/I;->mW:Ljava/lang/String;

    const-string v6, "Exception caught while loading Gview: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 78
    if-eqz v4, :cond_4

    .line 80
    :try_start_a
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 83
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 85
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 88
    :cond_5
    :goto_8
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto :goto_2

    .line 75
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 76
    :goto_9
    :try_start_c
    sget-object v5, Lcom/google/android/gm/I;->mW:Ljava/lang/String;

    const-string v6, "Exception caught while loading Gview: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 78
    if-eqz v4, :cond_6

    .line 80
    :try_start_d
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 83
    :cond_6
    :goto_a
    if-eqz v3, :cond_7

    .line 85
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 88
    :cond_7
    :goto_b
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto :goto_2

    .line 78
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_c
    if-eqz v4, :cond_8

    .line 80
    :try_start_f
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 83
    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    .line 85
    :try_start_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 88
    :cond_9
    :goto_e
    if-eqz v2, :cond_a

    .line 89
    invoke-virtual {v2}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    :cond_a
    throw v0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto :goto_d

    :catch_c
    move-exception v1

    goto :goto_e

    .line 78
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_c

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    .line 75
    :catch_d
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    goto :goto_9

    :catch_e
    move-exception v1

    move-object v3, v0

    goto :goto_9

    :catch_f
    move-exception v1

    goto :goto_9

    .line 73
    :catch_10
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_6

    :catch_11
    move-exception v1

    move-object v3, v0

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_6

    .line 71
    :catch_13
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_3

    :catch_14
    move-exception v1

    move-object v3, v0

    goto/16 :goto_3

    :catch_15
    move-exception v1

    goto/16 :goto_3
.end method

.method private dw(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/gm/I;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/I;->aXY:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gm/I;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gm/I;->dw(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gm/I;->CN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gm/I;->onStopLoading()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/I;->aXY:Ljava/lang/String;

    .line 153
    return-void
.end method

.method protected final onStartLoading()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gm/I;->aXY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/gm/I;->aXY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/I;->dw(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/I;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/I;->aXY:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/I;->forceLoad()V

    .line 132
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/gm/I;->cancelLoad()Z

    .line 140
    return-void
.end method
