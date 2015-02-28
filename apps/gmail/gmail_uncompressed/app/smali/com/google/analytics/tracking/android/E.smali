.class final Lcom/google/analytics/tracking/android/E;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/i;


# static fields
.field private static aTC:Lcom/google/analytics/tracking/android/E;


# instance fields
.field private volatile aTA:Ljava/lang/String;

.field private volatile aTB:Ljava/lang/String;

.field private volatile aTD:Lcom/google/analytics/tracking/android/ae;

.field private final aTv:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile aTw:Z

.field private volatile aTx:Z

.field private volatile aTy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile aTz:Lcom/google/analytics/tracking/android/R;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTv:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/E;->aTw:Z

    .line 53
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/E;->mClosed:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/E;->start()V

    .line 80
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private BW()Ljava/lang/String;
    .locals 6

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 386
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 387
    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 388
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 391
    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 392
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 393
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v5, "gaInstallData"

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 395
    :cond_0
    if-gtz v4, :cond_2

    .line 396
    const-string v1, "clientId file seems empty, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 397
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 398
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :goto_0
    if-nez v0, :cond_1

    .line 414
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/E;->cR(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "0"

    .line 416
    :cond_1
    return-object v0

    .line 400
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 411
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    :goto_1
    const-string v1, "Error reading clientId file, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 409
    :catch_1
    move-exception v1

    :goto_2
    const-string v1, "cliendId file doesn\'t have long value, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 409
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 406
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 411
    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/E;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTB:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 468
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 469
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 470
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 471
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/E;Ljava/util/Map;)V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const-string v4, "appName"

    invoke-static {p1, v4, v1}, Lcom/google/analytics/tracking/android/E;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appVersion"

    invoke-static {p1, v1, v0}, Lcom/google/analytics/tracking/android/E;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p1, v0, v2}, Lcom/google/analytics/tracking/android/E;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appInstallerId"

    invoke-static {p1, v0, v3}, Lcom/google/analytics/tracking/android/E;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apiVersion"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error retrieving package info: appName set to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method static aQ(Landroid/content/Context;)Lcom/google/analytics/tracking/android/E;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/analytics/tracking/android/E;->aTC:Lcom/google/analytics/tracking/android/E;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/analytics/tracking/android/E;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/E;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/E;->aTC:Lcom/google/analytics/tracking/android/E;

    .line 68
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/E;->aTC:Lcom/google/analytics/tracking/android/E;

    return-object v0
.end method

.method private static aR(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 428
    :try_start_0
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 433
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 434
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 435
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 438
    const-string v2, "Too much campaign data, ignoring it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 439
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 440
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 462
    :goto_0
    return-object v0

    .line 443
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 444
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 445
    if-gtz v3, :cond_1

    .line 446
    const-string v1, "Campaign file is empty."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    const-string v1, "No campaign data found."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cX(Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Campaign found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Q;->cX(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 451
    goto :goto_0

    .line 460
    :catch_1
    move-exception v1

    const-string v1, "Error reading campaign data."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 461
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/E;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 36
    const-string v0, "rawException"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "rawException"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ak;->dl(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/analytics/tracking/android/ag;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/analytics/tracking/android/ag;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    const-string v3, "exDescription"

    const-string v1, "exceptionThreadName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/google/analytics/tracking/android/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "IOException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "ClassNotFoundException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/E;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/E;->aTx:Z

    return v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/E;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTA:Ljava/lang/String;

    return-object v0
.end method

.method private cR(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v2, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    .line 353
    :catch_0
    move-exception v1

    const-string v1, "Error creating clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :catch_1
    move-exception v1

    const-string v1, "Error writing to clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/E;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/tracking/android/E;)Lcom/google/analytics/tracking/android/R;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTz:Lcom/google/analytics/tracking/android/R;

    return-object v0
.end method

.method private e(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTv:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method static synthetic e(Ljava/util/Map;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 36
    const-string v0, "sampleRate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "sampleRate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ak;->di(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, v2, v6

    if-gez v0, :cond_1

    const-string v0, "clientId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    int-to-double v4, v0

    mul-double/2addr v2, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/analytics/tracking/android/E;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "campaign"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ak;->dk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ak;->dh(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "campaignContent"

    const-string v2, "utm_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignMedium"

    const-string v2, "utm_medium"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignName"

    const-string v2, "utm_campaign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignSource"

    const-string v2, "utm_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignKeyword"

    const-string v2, "utm_term"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignId"

    const-string v2, "utm_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    const-string v2, "gclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    const-string v2, "dclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gmob_t"

    const-string v2, "gmob_t"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/analytics/tracking/android/E;)Lcom/google/analytics/tracking/android/ae;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTD:Lcom/google/analytics/tracking/android/ae;

    return-object v0
.end method

.method static synthetic g(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "internalHitUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "useSecure"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "useSecure"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ak;->dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://ssl.google-analytics.com/collect"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "http://www.google-analytics.com/collect"

    goto :goto_0

    :cond_2
    const-string v0, "https://ssl.google-analytics.com/collect"

    goto :goto_0
.end method


# virtual methods
.method public final BB()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/google/analytics/tracking/android/G;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/G;-><init>(Lcom/google/analytics/tracking/android/E;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/E;->e(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public final BC()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTv:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public final a(Lcom/google/analytics/tracking/android/M;)V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/google/analytics/tracking/android/H;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/H;-><init>(Lcom/google/analytics/tracking/android/E;Lcom/google/analytics/tracking/android/M;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/E;->e(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public final a(Lcom/google/analytics/tracking/android/j;)V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/google/analytics/tracking/android/I;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/I;-><init>(Lcom/google/analytics/tracking/android/E;Lcom/google/analytics/tracking/android/j;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/E;->e(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public final d(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    const-string v1, "hitTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Lcom/google/analytics/tracking/android/F;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/analytics/tracking/android/F;-><init>(Lcom/google/analytics/tracking/android/E;Ljava/util/Map;J)V

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/E;->e(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final getThread()Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 543
    return-object p0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 483
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTD:Lcom/google/analytics/tracking/android/ae;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceProxy;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTD:Lcom/google/analytics/tracking/android/ae;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTD:Lcom/google/analytics/tracking/android/ae;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ae;->BM()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTy:Ljava/util/List;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendVersion"

    const-string v3, "_v"

    const-string v4, "ma1b6"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendQueueTime"

    const-string v3, "qt"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendCacheBuster"

    const-string v3, "z"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/analytics/tracking/android/R;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/R;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTz:Lcom/google/analytics/tracking/android/R;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTz:Lcom/google/analytics/tracking/android/R;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/U;->a(Lcom/google/analytics/tracking/android/R;)V

    .line 503
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/E;->aTx:Z

    .line 504
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/E;->BW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTB:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/E;->aR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTA:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 513
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/E;->mClosed:Z

    if-nez v0, :cond_2

    .line 519
    :try_start_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/E;->aTv:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 520
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/E;->aTw:Z

    if-nez v1, :cond_1

    .line 521
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cX(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 526
    :catch_1
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on GAThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/analytics/tracking/android/E;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 530
    const-string v0, "Google Analytics is shutting down."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 531
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/E;->aTw:Z

    goto :goto_1

    .line 486
    :catch_2
    move-exception v0

    const-string v0, "sleep interrupted in GAThread initialize"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :catch_3
    move-exception v0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error initializing the GAThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/analytics/tracking/android/E;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 510
    const-string v0, "Google Analytics will not start up."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 511
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/E;->aTw:Z

    goto :goto_1

    .line 534
    :cond_2
    return-void
.end method
