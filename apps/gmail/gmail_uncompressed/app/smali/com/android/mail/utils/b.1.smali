.class public final Lcom/android/mail/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aOW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    return-void
.end method

.method public static E(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v2, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    .line 77
    :goto_0
    return-object v0

    .line 68
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 70
    const v1, 0x7f0900c6

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 72
    div-long v0, p1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 73
    const v1, 0x7f0900c7

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 76
    long-to-float v1, p1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 77
    const v1, 0x7f0900c8

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    iget v0, p1, Lcom/android/mail/providers/Attachment;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 90
    const-string v0, ""

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {p0, v2}, Lcom/android/mail/utils/b;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 99
    :goto_1
    if-nez v0, :cond_2

    if-lez v1, :cond_2

    .line 100
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mail/utils/b;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2
    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_3

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 106
    const v0, 0x7f0900d1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_3
    if-nez v0, :cond_0

    .line 112
    const-string v0, ""

    goto :goto_0

    .line 98
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 16

    .prologue
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 175
    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    .line 176
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mail/providers/Attachment;->size:I

    if-lez v2, :cond_0

    .line 177
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 178
    invoke-static {v8, v9, v2, v3}, Lcom/android/mail/utils/b;->d(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    sget-object v4, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v5, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object p1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    const/4 v2, 0x0

    .line 253
    :goto_0
    return-object v2

    .line 184
    :cond_0
    const/4 v5, 0x0

    .line 185
    const/4 v4, 0x0

    .line 186
    const/4 v3, 0x0

    .line 188
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-kk:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v6, ".attachment"

    invoke-static {v2, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 190
    if-eqz p2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 194
    :goto_1
    if-eqz v2, :cond_6

    .line 196
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_2
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 210
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 212
    :cond_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 213
    if-lez v4, :cond_8

    .line 214
    const/4 v12, 0x0

    invoke-virtual {v5, v2, v12, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/32 v14, 0x36ee80

    cmp-long v4, v12, v14

    if-lez v4, :cond_1

    .line 218
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Timed out reading attachment data"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 234
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 238
    :goto_3
    :try_start_3
    sget-object v5, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v7, "Failed to cache attachment %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v5, v2, v7, v8}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    if-eqz v3, :cond_2

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    :cond_2
    if-eqz v6, :cond_3

    .line 246
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_3
    if-eqz v4, :cond_4

    .line 249
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 253
    :cond_4
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 190
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 198
    :cond_6
    :try_start_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-nez v2, :cond_7

    .line 202
    sget-object v2, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v6, "contentUri is null in attachment: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v2, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v6, "Missing contentUri in attachment"

    invoke-direct {v2, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :catch_1
    move-exception v2

    move-object v6, v5

    goto :goto_3

    .line 206
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 221
    :cond_8
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 223
    sget-object v4, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v10, "Cached %s to %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    invoke-static {v4, v10, v11}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    .line 226
    invoke-static {v8, v9, v10, v11}, Lcom/android/mail/utils/b;->d(JJ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    sget-object v2, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v4, "Low memory (%d/%d). Can\'t cache attachment %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v12

    const/4 v10, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v2, v4, v7}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 230
    const/4 v2, 0x0

    .line 245
    :cond_9
    if-eqz v6, :cond_a

    .line 246
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 251
    :catch_2
    move-exception v3

    .line 252
    sget-object v4, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v5, "Failed to close stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 251
    :catch_3
    move-exception v2

    .line 252
    sget-object v3, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v4, "Failed to close stream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 244
    :catchall_0
    move-exception v2

    move-object v6, v5

    .line 245
    :goto_5
    if-eqz v6, :cond_b

    .line 246
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 248
    :cond_b
    if-eqz v4, :cond_c

    .line 249
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 253
    :cond_c
    :goto_6
    throw v2

    .line 251
    :catch_4
    move-exception v3

    .line 252
    sget-object v4, Lcom/android/mail/utils/b;->mW:Ljava/lang/String;

    const-string v5, "Failed to close stream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 234
    :catch_5
    move-exception v2

    :goto_7
    move-object v6, v5

    goto/16 :goto_3

    .line 244
    :catchall_1
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v4, v5

    goto :goto_5

    .line 234
    :catch_6
    move-exception v2

    goto/16 :goto_3

    :catch_7
    move-exception v2

    move-object v5, v6

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto :goto_7
.end method

.method public static ay(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    invoke-static {p0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move v0, v2

    .line 285
    goto :goto_0

    :cond_2
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method private static d(JJ)Z
    .locals 4

    .prologue
    .line 261
    long-to-float v0, p2

    long-to-float v1, p0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    const/high16 v2, 0x4cc80000    # 1.048576E8f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    const-class v1, Lcom/android/mail/utils/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/utils/b;->aOW:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 127
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    const v2, 0x7f0900ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    const v3, 0x7f0900cf

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Lcom/google/common/collect/y;

    invoke-direct {v4}, Lcom/google/common/collect/y;-><init>()V

    const-string v5, "image"

    const v6, 0x7f0900c9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "audio"

    const v6, 0x7f0900cb

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "video"

    const v6, 0x7f0900ca

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "text"

    const v6, 0x7f0900cc

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "application/pdf"

    const v6, 0x7f0900d0

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "application/msword"

    invoke-virtual {v4, v5, v0}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v4

    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v4, v5, v0}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v4, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v4, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v0, v4, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/b;->aOW:Ljava/util/Map;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/mail/utils/b;->aOW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
