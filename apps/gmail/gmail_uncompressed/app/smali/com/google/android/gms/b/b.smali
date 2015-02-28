.class public final Lcom/google/android/gms/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/q;


# instance fields
.field private final acO:Landroid/support/v4/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/g",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final bBA:Lcom/android/ex/chips/j;

.field private final bbm:Lcom/google/android/gms/common/api/n;

.field private mClosed:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/b;->mClosed:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/b/b;->bbm:Lcom/google/android/gms/common/api/n;

    .line 52
    new-instance v0, Landroid/support/v4/f/g;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/f/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->acO:Landroid/support/v4/f/g;

    .line 53
    new-instance v0, Lcom/android/ex/chips/j;

    invoke-direct {v0, p2}, Lcom/android/ex/chips/j;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->bBA:Lcom/android/ex/chips/j;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/b/b;->bbm:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/g;)[B
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 129
    invoke-interface {p0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "GmsPhotoManager"

    const-string v2, "Client not connected."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/b/g;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    .line 139
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "GmsPhotoManager"

    const-string v2, "AvatarReference is null."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Lcom/google/android/gms/people/l;

    invoke-direct {v0}, Lcom/google/android/gms/people/l;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/l;->UP()Lcom/google/android/gms/people/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/l;->UQ()Lcom/google/android/gms/people/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/l;->UR()Lcom/google/android/gms/people/k;

    move-result-object v0

    .line 150
    sget-object v2, Lcom/google/android/gms/people/q;->cgK:Lcom/google/android/gms/people/j;

    invoke-virtual {p1}, Lcom/google/android/gms/b/g;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v3

    invoke-interface {v2, p0, v3, v0}, Lcom/google/android/gms/people/j;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    .line 152
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/m;

    .line 155
    invoke-interface {v0}, Lcom/google/android/gms/people/m;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 156
    invoke-interface {v0}, Lcom/google/android/gms/people/m;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    .line 159
    const-string v3, "GmsPhotoManager"

    const-string v4, "Image load timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_5

    .line 164
    :cond_4
    const-string v3, "GmsPhotoManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "GmsPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Image loaded: status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  pfd="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 175
    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    .line 176
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 179
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :goto_2
    :try_start_2
    const-string v4, "GmsPhotoManager"

    const-string v5, "Error reading photo input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 190
    :goto_3
    if-eqz v2, :cond_8

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 199
    goto/16 :goto_0

    .line 181
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 186
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 190
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 193
    :catch_1
    move-exception v1

    .line 194
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 187
    :catch_2
    move-exception v1

    .line 188
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 187
    :catch_3
    move-exception v0

    .line 188
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 193
    :catch_4
    move-exception v0

    .line 194
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 195
    goto :goto_4

    .line 185
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 186
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 190
    :goto_7
    if-eqz v2, :cond_7

    .line 192
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 195
    :cond_7
    :goto_8
    throw v0

    .line 187
    :catch_5
    move-exception v1

    .line 188
    const-string v3, "GmsPhotoManager"

    const-string v4, "Error closing photo input stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 193
    :catch_6
    move-exception v1

    .line 194
    const-string v2, "GmsPhotoManager"

    const-string v3, "Error closing photo output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 185
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 182
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/gms/b/b;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/b/b;->mClosed:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/g;)[B
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/g;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/b;)Landroid/support/v4/f/g;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/b/b;->acO:Landroid/support/v4/f/g;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 59
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/b/g;

    if-nez v0, :cond_2

    .line 61
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "GmsPhotoManager"

    const-string v1, "RecipientEntry is not a GmsRecipientEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/b;->bBA:Lcom/android/ex/chips/j;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/chips/j;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    check-cast p1, Lcom/google/android/gms/b/g;

    .line 69
    if-nez p1, :cond_3

    .line 70
    const-string v0, "GmsPhotoManager"

    const-string v1, "GmsRecipientEntry is null"

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    if-eqz p2, :cond_1

    .line 72
    invoke-interface {p2}, Lcom/android/ex/chips/r;->mu()V

    goto :goto_0

    .line 77
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/b/b;->mClosed:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    .line 78
    if-eqz p2, :cond_1

    .line 79
    invoke-interface {p2}, Lcom/android/ex/chips/r;->ms()V

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/b/g;->Ki()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "GmsPhotoManager"

    const-string v3, "GmsRecipientEntry has no person key"

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/b/b;->acO:Landroid/support/v4/f/g;

    invoke-virtual {v3, v0}, Landroid/support/v4/f/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/g;->b([B)V

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    .line 84
    :cond_7
    const-string v0, "GmsPhotoManager"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    const-string v0, "GmsPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No photo cache for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/b/g;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Fetch one asynchronously"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_8
    new-instance v0, Lcom/google/android/gms/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/b/c;-><init>(Lcom/google/android/gms/b/b;Lcom/google/android/gms/b/g;Lcom/android/ex/chips/r;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/b;->mClosed:Z

    .line 207
    return-void
.end method
