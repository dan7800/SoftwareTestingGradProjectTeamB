.class public final Lcom/android/email/mail/store/imap/k;
.super Lcom/android/email/mail/store/imap/i;
.source "SourceFile"


# instance fields
.field final Rq:Ljava/io/File;

.field private final gO:I


# direct methods
.method constructor <init>(Lcom/android/email/k;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/android/email/k;->getLength()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/imap/k;->gO:I

    .line 47
    const-string v0, "imap"

    const-string v1, ".tmp"

    invoke-static {}, Lcom/android/emailcommon/e;->kM()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/k;->Rq:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/k;->Rq:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    invoke-static {p1, v0}, Lorg/apache/a/a/a;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/k;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/imap/k;->Rq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/email/mail/store/imap/k;->Rq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/email/mail/store/imap/i;->destroy()V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove temp file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/k;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/k;->ju()V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/k;->jv()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/a/a/a;->h(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 92
    array-length v1, v0

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "ImapTempFileLiteral: Error while reading temp file"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    const-string v0, ""

    :goto_0
    return-object v0

    .line 95
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/emailcommon/b/s;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public final jv()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/k;->ju()V

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/k;->Rq:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "ImapTempFileLiteral: Temp file not found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v3, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "{%d byte literal(file)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/mail/store/imap/k;->gO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
