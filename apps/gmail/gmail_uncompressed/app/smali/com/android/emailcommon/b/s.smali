.class public final Lcom/android/emailcommon/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field public static final abI:Ljava/nio/charset/Charset;

.field public static final abJ:[Ljava/lang/String;

.field private static final abK:Ljava/util/regex/Pattern;

.field private static abL:Landroid/os/Handler;

.field private static final abM:Lcom/android/emailcommon/b/B;

.field private static final abN:Lcom/android/emailcommon/b/B;

.field private static final abO:Lcom/android/emailcommon/b/B;

.field private static final abP:Lcom/android/emailcommon/b/B;

.field private static final abQ:Lcom/android/emailcommon/b/B;

.field private static final abR:Lcom/android/emailcommon/b/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/y",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final abS:Lcom/android/emailcommon/b/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/y",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final abT:Lcom/android/emailcommon/b/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/y",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final abU:Lcom/android/emailcommon/b/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/b/y",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b/s;->UTF_8:Ljava/nio/charset/Charset;

    .line 68
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b/s;->abI:Ljava/nio/charset/Charset;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/b/s;->abJ:[Ljava/lang/String;

    .line 73
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b/s;->abK:Ljava/util/regex/Pattern;

    .line 243
    new-instance v0, Lcom/android/emailcommon/b/B;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/b/s;->abM:Lcom/android/emailcommon/b/B;

    .line 246
    new-instance v0, Lcom/android/emailcommon/b/B;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/b/s;->abN:Lcom/android/emailcommon/b/B;

    .line 266
    new-instance v0, Lcom/android/emailcommon/b/B;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/b/s;->abO:Lcom/android/emailcommon/b/B;

    .line 269
    new-instance v0, Lcom/android/emailcommon/b/B;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/b/s;->abP:Lcom/android/emailcommon/b/B;

    .line 272
    new-instance v0, Lcom/android/emailcommon/b/B;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/emailcommon/b/s;->abQ:Lcom/android/emailcommon/b/B;

    .line 515
    new-instance v0, Lcom/android/emailcommon/b/u;

    invoke-direct {v0}, Lcom/android/emailcommon/b/u;-><init>()V

    sput-object v0, Lcom/android/emailcommon/b/s;->abR:Lcom/android/emailcommon/b/y;

    .line 522
    new-instance v0, Lcom/android/emailcommon/b/v;

    invoke-direct {v0}, Lcom/android/emailcommon/b/v;-><init>()V

    sput-object v0, Lcom/android/emailcommon/b/s;->abS:Lcom/android/emailcommon/b/y;

    .line 529
    new-instance v0, Lcom/android/emailcommon/b/w;

    invoke-direct {v0}, Lcom/android/emailcommon/b/w;-><init>()V

    sput-object v0, Lcom/android/emailcommon/b/s;->abT:Lcom/android/emailcommon/b/y;

    .line 536
    new-instance v0, Lcom/android/emailcommon/b/x;

    invoke-direct {v0}, Lcom/android/emailcommon/b/x;-><init>()V

    sput-object v0, Lcom/android/emailcommon/b/s;->abU:Lcom/android/emailcommon/b/y;

    return-void
.end method

.method public static D(Landroid/content/Context;J)Z
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 706
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v3

    .line 707
    if-nez v3, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 708
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->p(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 709
    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 710
    invoke-static {p0, v6}, Lcom/android/emailcommon/b/s;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 715
    iget v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    and-int/lit8 v7, v7, 0x6

    if-nez v7, :cond_5

    .line 717
    sget-object v7, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v8, "Unloaded attachment isn\'t marked for download: %s, #%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    aput-object v10, v9, v0

    iget-wide v10, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 719
    iget-wide v8, v3, Lcom/android/emailcommon/provider/g;->Lq:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v7

    .line 720
    if-nez v7, :cond_2

    move v0, v1

    goto :goto_0

    .line 724
    :cond_2
    iget v8, v3, Lcom/android/emailcommon/provider/g;->dM:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    .line 725
    iget v7, v7, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_6

    .line 726
    :cond_3
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/net/Uri;J)I

    :cond_4
    :goto_2
    move v0, v1

    .line 737
    goto :goto_0

    .line 730
    :cond_5
    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 734
    const-string v2, "contentUri"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 735
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    invoke-static {p0, v2, v4, v5, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    goto :goto_2

    .line 709
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static Q(Z)V
    .locals 1

    .prologue
    .line 784
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 787
    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 790
    return-void

    .line 784
    :cond_0
    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    goto :goto_0

    .line 787
    :cond_1
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 480
    sget-object v3, Lcom/android/emailcommon/b/z;->abW:Lcom/android/emailcommon/b/z;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/android/emailcommon/b/z;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    :goto_1
    const/4 v1, 0x2

    move v2, v1

    :goto_2
    const v1, 0x7fffffff

    if-ge v2, v1, :cond_3

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/android/emailcommon/b/z;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 615
    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b/s;->abS:Lcom/android/emailcommon/b/y;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/b/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 586
    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b/s;->abR:Lcom/android/emailcommon/b/y;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/b/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 9

    .prologue
    .line 596
    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b/s;->abR:Lcom/android/emailcommon/b/y;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/b/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/b/y;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ITT;",
            "Lcom/android/emailcommon/b/y",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 566
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/emailcommon/provider/EmailContent;->c(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 567
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_0

    .line 571
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    const/4 v0, 0x0

    invoke-interface {p8, v1, v0}, Lcom/android/emailcommon/b/y;->a(Landroid/database/Cursor;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p7

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_0
    :goto_1
    return-object p7

    :cond_1
    move-object v1, p1

    .line 566
    goto :goto_0

    .line 575
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 624
    const/4 v6, 0x0

    sget-object v8, Lcom/android/emailcommon/b/s;->abT:Lcom/android/emailcommon/b/y;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/b/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    sget-object v0, Lcom/android/emailcommon/b/s;->abI:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static a(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 359
    :cond_0
    return-void
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 299
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static aE(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 162
    :goto_0
    return v0

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0
.end method

.method public static aF(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 284
    sget-object v1, Lcom/android/emailcommon/b/s;->abO:Lcom/android/emailcommon/b/B;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/b/B;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 290
    :goto_0
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    .line 286
    sget-object v1, Lcom/android/emailcommon/b/s;->abP:Lcom/android/emailcommon/b/B;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/b/B;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 288
    :cond_1
    sget-object v1, Lcom/android/emailcommon/b/s;->abQ:Lcom/android/emailcommon/b/B;

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/b/B;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static aG(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/android/emailcommon/b/s;->abI:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/b/s;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static aH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 377
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    sget-object v1, Lcom/android/emailcommon/b/s;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, p0}, Lcom/android/emailcommon/b/s;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 382
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x13

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aI(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/android/emailcommon/b/s;->abI:Ljava/nio/charset/Charset;

    invoke-static {v1, p0}, Lcom/android/emailcommon/b/s;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static b([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 114
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 116
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 649
    if-nez p1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yu:[B

    if-eqz v2, :cond_2

    move v0, v1

    .line 652
    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lK()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 657
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 659
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 662
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, v1

    .line 666
    goto :goto_0

    .line 667
    :catch_0
    move-exception v2

    .line 669
    sget-object v3, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "not able to open cached file"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    :cond_3
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->lL()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 677
    :try_start_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 679
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 682
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move v0, v1

    .line 686
    goto :goto_0

    .line 690
    :catch_1
    move-exception v1

    .line 691
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "attachmentExists RuntimeException"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    .line 688
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static b([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :goto_1
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static bn(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    const-string v2, "0123456789ABCDEF"

    shr-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/widget/TextView;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/widget/TextView;)Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->aE(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/b/s;->abL:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/emailcommon/b/s;->abL:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lcom/android/emailcommon/b/s;->abL:Landroid/os/Handler;

    new-instance v2, Lcom/android/emailcommon/b/t;

    invoke-direct {v2, p0, v0}, Lcom/android/emailcommon/b/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public static mk()Z
    .locals 2

    .prologue
    .line 780
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
