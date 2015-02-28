.class final Lcom/android/email/mail/store/b;
.super Lcom/android/emailcommon/mail/Folder;
.source "SourceFile"


# static fields
.field private static final Qv:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field Pv:Lcom/android/emailcommon/provider/Mailbox;

.field private QA:Z

.field QB:[Ljava/lang/Object;

.field private final Qw:Lcom/android/email/mail/store/ImapStore;

.field private Qx:I

.field private Qy:Lcom/android/email/mail/store/a;

.field private Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/b;->Qv:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/b;->Qx:I

    .line 90
    iput-object p1, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    .line 91
    iput-object p2, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static B(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 457
    :goto_0
    if-ge v1, v2, :cond_1

    .line 458
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 459
    const/16 v4, 0x80

    if-lt v3, v4, :cond_0

    .line 461
    :goto_1
    return v0

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1268
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1269
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "IO Exception detected: "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1271
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/a;->close()V

    .line 1272
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-ne p1, v0, :cond_1

    .line 1273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    .line 1274
    invoke-virtual {p0}, Lcom/android/email/mail/store/b;->iY()V

    .line 1276
    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v4, v1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/f;)Lcom/android/emailcommon/mail/c;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 801
    invoke-static {p0, p1}, Lcom/android/emailcommon/a/i;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 802
    new-instance v2, Lcom/android/emailcommon/a/a;

    invoke-direct {v2}, Lcom/android/emailcommon/a/a;-><init>()V

    .line 803
    invoke-virtual {v2}, Lcom/android/emailcommon/a/a;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 805
    const/16 v4, 0x4000

    :try_start_0
    new-array v4, v4, [B

    .line 808
    :cond_0
    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 809
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 810
    add-int/2addr v0, v6

    .line 811
    if-eqz p3, :cond_0

    .line 812
    if-nez p2, :cond_1

    .line 814
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    int-to-double v8, v0

    div-double v8, v10, v8

    sub-double v8, v10, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-interface {p3, v5}, Lcom/android/emailcommon/mail/f;->be(I)V
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/service/ImapService;->kF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 826
    :goto_1
    return-object v2

    .line 816
    :cond_1
    mul-int/lit8 v5, v0, 0x64

    :try_start_2
    div-int/2addr v5, p2

    invoke-interface {p3, v5}, Lcom/android/emailcommon/mail/f;->be(I)V
    :try_end_2
    .catch Landroid/util/Base64DataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 824
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1
.end method

.method private static a(JJZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v6, 0x22

    .line 526
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-LLL-yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 527
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 528
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    const-string v3, "1:* "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-eqz v3, :cond_3

    .line 536
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 537
    cmp-long v3, p0, p2

    if-gez v3, :cond_0

    .line 538
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Invalid date range: %s - %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :cond_0
    const-string v3, "BEFORE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    if-eqz p4, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    if-eqz p4, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_3
    const-string v0, "SINCE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    if-eqz p4, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    if-eqz p4, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/email/mail/store/imap/d;Lcom/android/emailcommon/mail/j;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    new-instance v1, Lcom/android/emailcommon/a/h;

    invoke-direct {v1}, Lcom/android/emailcommon/a/h;-><init>()V

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v3

    .line 863
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    new-instance v3, Lcom/android/emailcommon/a/c;

    invoke-direct {v3}, Lcom/android/emailcommon/a/c;-><init>()V

    .line 869
    const-string v4, "TEXT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 870
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/imap/d;Lcom/android/emailcommon/mail/j;Ljava/lang/String;)V

    .line 875
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/emailcommon/a/h;->a(Lcom/android/emailcommon/mail/d;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/imap/d;Lcom/android/emailcommon/mail/j;Ljava/lang/String;)V

    goto :goto_1

    .line 878
    :cond_1
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/b;->jt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/a/h;->ae(Ljava/lang/String;)V

    .line 884
    :cond_2
    invoke-interface {p1, v1}, Lcom/android/emailcommon/mail/j;->a(Lcom/android/emailcommon/mail/c;)V

    .line 1027
    :goto_2
    return-void

    .line 901
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    .line 902
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 906
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v2

    .line 907
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v3

    .line 908
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v4

    .line 909
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/i;->jN()I

    move-result v5

    .line 911
    const-string v6, "message/rfc822"

    invoke-static {v0, v6}, Lcom/android/emailcommon/a/i;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 921
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v7

    :goto_3
    if-ge v0, v7, :cond_5

    .line 939
    const-string v8, ";\n %s=\"%s\""

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v2, v11}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 944
    :cond_5
    const-string v0, "Content-Type"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/android/emailcommon/mail/j;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "TEXT"

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 953
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    .line 958
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 961
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v2

    .line 968
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 973
    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v6

    :goto_5
    if-ge v0, v6, :cond_8

    .line 976
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, ";\n %s=\"%s\""

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v2, v11}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 955
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    goto :goto_4

    .line 984
    :cond_8
    if-lez v5, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "size"

    invoke-static {v0, v2}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 987
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, ";\n size=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 995
    const-string v0, "Content-Disposition"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/j;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_a
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1004
    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/j;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_b
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1012
    const-string v0, "Content-ID"

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/emailcommon/mail/j;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :cond_c
    if-lez v5, :cond_d

    .line 1016
    instance-of v0, p1, Lcom/android/email/mail/store/c;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 1017
    check-cast v0, Lcom/android/email/mail/store/c;

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/c;->setSize(I)V

    .line 1024
    :cond_d
    :goto_6
    const-string v0, "X-Android-Attachment-StoreData"

    invoke-interface {p1, v0, p2}, Lcom/android/emailcommon/mail/j;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1018
    :cond_e
    instance-of v0, p1, Lcom/android/emailcommon/a/c;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 1019
    check-cast v0, Lcom/android/emailcommon/a/c;

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/a/c;->setSize(I)V

    goto :goto_6

    .line 1021
    :cond_f
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown part type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/android/email/mail/store/imap/g;)V
    .locals 2

    .prologue
    .line 849
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->jN()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/b;->Qx:I

    .line 852
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;Lcom/android/emailcommon/mail/f;)[Lcom/android/emailcommon/mail/Message;
    .locals 4

    .prologue
    .line 595
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 596
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 597
    aget-object v2, p1, v0

    .line 598
    new-instance v3, Lcom/android/email/mail/store/c;

    invoke-direct {v3, v2, p0}, Lcom/android/email/mail/store/c;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/b;)V

    .line 599
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    sget-object v0, Lcom/android/emailcommon/mail/Message;->Xj:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    return-object v0
.end method

.method private e(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 419
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID SEARCH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/store/b;->f(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchForUids \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    :goto_0
    return-object v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :try_start_1
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImapException in search: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 426
    if-eqz p2, :cond_0

    .line 427
    sget-object v0, Lcom/android/emailcommon/b/s;->abJ:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    goto :goto_0

    .line 429
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0

    .line 431
    :catch_1
    move-exception v0

    .line 432
    :try_start_3
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in search: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static f(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 385
    const/4 v1, 0x0

    const-string v4, "SEARCH"

    invoke-virtual {v0, v1, v4}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 390
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v4

    .line 391
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/i;->jt()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_2
    sget-object v0, Lcom/android/emailcommon/b/s;->abJ:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/store/a;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/store/b;->f(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 504
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    :goto_0
    return-object v0

    .line 499
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcom/android/emailcommon/b/s;->abJ:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0
.end method

.method private iQ()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v0}, Lcom/android/email/mail/store/a;->iQ()V

    .line 98
    :cond_0
    return-void
.end method

.method private isOpen()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/email/mail/store/b;->QA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jd()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x1

    .line 1232
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT \"%s\""

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v6, v6, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/email/mail/store/ImapStore;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1237
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v1, p0, Lcom/android/email/mail/store/b;->Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 1239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 1240
    const-string v4, "EXISTS"

    invoke-virtual {v0, v7, v4}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1241
    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->jN()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1242
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jz()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1243
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jC()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    .line 1244
    const-string v4, "READ-ONLY"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1245
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xh:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v0, p0, Lcom/android/email/mail/store/b;->Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1246
    :cond_2
    const-string v4, "READ-WRITE"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v0, p0, Lcom/android/email/mail/store/b;->Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1249
    :cond_3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t open mailbox: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jE()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1254
    :cond_4
    if-ne v1, v2, :cond_5

    .line 1255
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Did not find message count during select"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_5
    iput v1, p0, Lcom/android/email/mail/store/b;->Qx:I

    .line 1258
    iput-boolean v7, p0, Lcom/android/email/mail/store/b;->QA:Z

    .line 1259
    return-void
.end method

.method private je()V
    .locals 3

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 3

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 446
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 447
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    new-instance v0, Lcom/android/email/mail/store/c;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/c;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/b;)V

    .line 451
    :goto_1
    return-object v0

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final C(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 1289
    new-instance v0, Lcom/android/email/mail/store/c;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/c;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/b;)V

    return-object v0
.end method

.method final C(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    .line 1215
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1216
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 1217
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lS()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lS()[Ljava/lang/Object;

    move-result-object v1

    .line 1220
    iget-object v2, p0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Mailbox;->lB()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/emailcommon/provider/Mailbox;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1222
    iput-object v1, p0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x0

    .line 1040
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 1051
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1052
    const-string v2, "IMAPupsync"

    const-string v3, ".eml"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1055
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1056
    if-nez v0, :cond_0

    .line 1057
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Could not delete temp file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1060
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1062
    new-instance v3, Lcom/android/emailcommon/b/e;

    invoke-direct {v3, v0}, Lcom/android/emailcommon/b/e;-><init>(Ljava/io/OutputStream;)V

    .line 1063
    new-instance v0, Lcom/android/emailcommon/b/f;

    invoke-direct {v0, v3}, Lcom/android/emailcommon/b/f;-><init>(Ljava/io/OutputStream;)V

    .line 1064
    invoke-virtual {p2, v0}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1065
    invoke-virtual {v0}, Lcom/android/emailcommon/b/f;->flush()V

    .line 1067
    const-string v0, ""

    .line 1068
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->lq()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v4

    .line 1069
    array-length v5, v4

    if-lez v5, :cond_4

    .line 1070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    array-length v6, v4

    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v7, v4, v1

    .line 1072
    sget-object v8, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    if-ne v7, v8, :cond_2

    .line 1073
    const-string v7, " \\SEEN"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    :cond_2
    sget-object v8, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    if-ne v7, v8, :cond_1

    .line 1075
    const-string v7, " \\FLAGGED"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0

    .line 1078
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1079
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_4
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "APPEND \"%s\" (%s) {%d}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    invoke-virtual {v3}, Lcom/android/emailcommon/b/e;->getCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/email/mail/store/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    iget-object v0, v0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->getSoTimeout()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 1095
    if-eqz p3, :cond_6

    .line 1097
    :try_start_3
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    iget-object v0, v0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/email/mail/transport/b;->setSoTimeout(I)V

    .line 1099
    :cond_6
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v0}, Lcom/android/email/mail/store/a;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jx()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1101
    iget-object v3, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    iget-object v3, v3, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v3}, Lcom/android/email/mail/transport/b;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1103
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v3}, Lorg/apache/a/a/a;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 1104
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 1105
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 1106
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1111
    :cond_7
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    iget-object v3, v3, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v3, v1}, Lcom/android/email/mail/transport/b;->setSoTimeout(I)V

    .line 1113
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v1

    if-lt v1, v10, :cond_9

    const-string v1, "APPENDUID"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/d;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1123
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1125
    invoke-virtual {p2, v0}, Lcom/android/emailcommon/mail/Message;->ap(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1155
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    .line 1156
    :goto_3
    return-void

    .line 1107
    :cond_8
    :try_start_5
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1108
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/imap/g;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1111
    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    iget-object v2, v2, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v2, v1}, Lcom/android/email/mail/transport/b;->setSoTimeout(I)V

    throw v0

    .line 1135
    :cond_9
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->kW()Ljava/lang/String;

    move-result-object v0

    .line 1136
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-nez v1, :cond_b

    .line 1155
    :cond_a
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    goto :goto_3

    .line 1141
    :cond_b
    :try_start_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HEADER MESSAGE-ID %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 1143
    array-length v2, v1

    if-lez v2, :cond_c

    .line 1144
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/Message;->ap(Ljava/lang/String;)V

    .line 1148
    :cond_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(HEADER MESSAGE-ID %s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 1149
    array-length v1, v0

    if-lez v1, :cond_d

    .line 1150
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/mail/Message;->ap(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1155
    :cond_d
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    goto :goto_3
.end method

.method public final a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, p1, :cond_1

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 140
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    .line 122
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 123
    :try_start_5
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->jj()Lcom/android/email/mail/store/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    .line 124
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    :try_start_6
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->jd()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 139
    :try_start_7
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V
    :try_end_7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    .line 144
    invoke-virtual {p0}, Lcom/android/email/mail/store/b;->iY()V

    .line 145
    throw v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 146
    :catch_2
    move-exception v0

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/mail/store/b;->QA:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/email/mail/store/b;->iY()V

    .line 149
    throw v0

    .line 119
    :cond_1
    :try_start_9
    invoke-virtual {p0}, Lcom/android/email/mail/store/b;->iY()V

    goto :goto_1

    .line 124
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_9
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    .line 136
    :catch_3
    move-exception v0

    .line 137
    :try_start_a
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 139
    :catchall_2
    move-exception v0

    :try_start_b
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0
    :try_end_b
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 611
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "UID"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FLAGS"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "INTERNALDATE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "RFC822.SIZE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BODYSTRUCTURE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WM:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/email/mail/store/imap/a;->QX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "BODY.PEEK[]"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/FetchProfile;->lm()Lcom/android/emailcommon/mail/j;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v1, "X-Android-Attachment-StoreData"

    invoke-interface {v4, v1}, Lcom/android/emailcommon/mail/j;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BODY.PEEK["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "UID FETCH %s (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->a([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lcom/android/email/mail/store/a;->b(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v0}, Lcom/android/email/mail/store/a;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v5

    const/4 v0, 0x1

    const-string v1, "FETCH"

    invoke-virtual {v5, v0, v1}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    :try_start_3
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    :goto_1
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/g;->jw()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    .line 618
    :cond_8
    return-void

    .line 611
    :cond_9
    const/4 v0, 0x2

    :try_start_4
    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v6

    const-string v0, "UID"

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/d;->J(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_b

    :try_start_5
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 612
    :catch_1
    move-exception v0

    .line 613
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception detected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 614
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-eqz v1, :cond_a

    .line 615
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v1}, Lcom/android/email/mail/store/a;->iW()V

    .line 617
    :cond_a
    throw v0

    .line 611
    :cond_b
    :try_start_7
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/c;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_c

    :try_start_8
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :cond_c
    :try_start_9
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "FLAGS"

    invoke-virtual {v6, v1}, Lcom/android/email/mail/store/imap/d;->I(Ljava/lang/String;)Lcom/android/email/mail/store/imap/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/d;->size()I

    move-result v8

    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_11

    invoke-virtual {v7, v1}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v9

    const-string v10, "\\DELETED"

    invoke-virtual {v9, v10}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v9, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v9}, Lcom/android/email/mail/store/c;->a(Lcom/android/emailcommon/mail/Flag;)V

    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const-string v10, "\\ANSWERED"

    invoke-virtual {v9, v10}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    sget-object v9, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v9}, Lcom/android/email/mail/store/c;->a(Lcom/android/emailcommon/mail/Flag;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    :cond_f
    :try_start_b
    const-string v10, "\\SEEN"

    invoke-virtual {v9, v10}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v9, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v9}, Lcom/android/email/mail/store/c;->a(Lcom/android/emailcommon/mail/Flag;)V

    goto :goto_3

    :cond_10
    const-string v10, "\\FLAGGED"

    invoke-virtual {v9, v10}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0, v9}, Lcom/android/email/mail/store/c;->a(Lcom/android/emailcommon/mail/Flag;)V

    goto :goto_3

    :cond_11
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "INTERNALDATE"

    invoke-virtual {v6, v1}, Lcom/android/email/mail/store/imap/d;->J(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->jP()Ljava/util/Date;

    move-result-object v1

    const-string v7, "RFC822.SIZE"

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/imap/d;->J(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/i;->jN()I

    move-result v7

    const-string v8, "BODY[HEADER"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/android/email/mail/store/imap/d;->g(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/c;->b(Ljava/util/Date;)V

    invoke-virtual {v0, v7}, Lcom/android/email/mail/store/c;->setSize(I)V

    invoke-static {v8}, Lcom/android/emailcommon/b/s;->aI(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/c;->b(Ljava/io/InputStream;)V

    :cond_12
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "BODYSTRUCTURE"

    invoke-virtual {v6, v1}, Lcom/android/email/mail/store/imap/d;->I(Ljava/lang/String;)Lcom/android/email/mail/store/imap/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/d;->isEmpty()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v7

    if-nez v7, :cond_13

    :try_start_c
    const-string v7, "TEXT"

    invoke-static {v1, v0, v7}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/imap/d;Lcom/android/emailcommon/mail/j;Ljava/lang/String;)V
    :try_end_c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_13
    :goto_4
    :try_start_d
    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WM:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const-string v1, "BODY[]"

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/email/mail/store/imap/d;->g(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->jv()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/c;->b(Ljava/io/InputStream;)V

    :cond_15
    if-eqz v4, :cond_16

    const-string v1, "BODY["

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/email/mail/store/imap/d;->g(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->jv()Ljava/io/InputStream;

    move-result-object v6

    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {v4, v1}, Lcom/android/emailcommon/mail/j;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v7, v1

    if-lez v7, :cond_19

    const/4 v7, 0x0

    aget-object v1, v1, v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_5
    :try_start_e
    invoke-interface {v4}, Lcom/android/emailcommon/mail/j;->getSize()I

    move-result v7

    invoke-static {v6, v1, v7, p3}, Lcom/android/email/mail/store/b;->a(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/f;)Lcom/android/emailcommon/mail/c;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/emailcommon/mail/j;->a(Lcom/android/emailcommon/mail/c;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_16
    :goto_6
    if-eqz p3, :cond_17

    :try_start_f
    invoke-interface {p3, v0}, Lcom/android/emailcommon/mail/f;->b(Lcom/android/emailcommon/mail/Message;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_17
    :try_start_10
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_11
    sget-boolean v7, Lcom/android/emailcommon/b;->LOGD:Z

    if-eqz v7, :cond_18

    sget-object v7, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v8, "Error handling message"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v1, v8, v9}, Lcom/android/mail/utils/E;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/c;->a(Lcom/android/emailcommon/mail/c;)V

    goto :goto_4

    :cond_19
    const-string v1, "7bit"

    goto :goto_5

    :catch_3
    move-exception v1

    sget-object v6, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v7, "Error fetching body %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_6
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/g;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "UID COPY %s \"%s\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->a([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v8, v8, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/email/mail/store/ImapStore;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 273
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 275
    array-length v5, p1

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, p1, v0

    .line 276
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 281
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jA()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jB()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 282
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jE()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0

    .line 286
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    if-eqz p3, :cond_1

    .line 292
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    .line 295
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v6

    .line 296
    const-string v7, "COPYUID"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 298
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v2

    .line 299
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v2}, Lcom/android/email/mail/store/imap/l;->L(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-static {v0}, Lcom/android/email/mail/store/imap/l;->L(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 303
    array-length v8, v6

    array-length v9, v7

    if-eq v8, v9, :cond_4

    .line 304
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set length mis-match; orig IDs \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"  new IDs \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v2, v3

    .line 307
    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_6

    .line 308
    aget-object v0, v6, v2

    .line 309
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Message;

    .line 310
    if-eqz v0, :cond_5

    .line 311
    aget-object v0, v7, v2

    invoke-interface {p3, v0}, Lcom/android/emailcommon/mail/g;->S(Ljava/lang/String;)V

    .line 307
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_3
    move v2, v0

    .line 315
    goto/16 :goto_1

    .line 317
    :cond_7
    if-eqz p3, :cond_a

    if-nez v2, :cond_a

    .line 318
    check-cast p2, Lcom/android/email/mail/store/b;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :try_start_3
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p2, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 323
    array-length v2, p1

    move v0, v3

    :goto_4
    if-ge v0, v2, :cond_9

    aget-object v3, p1, v0

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER Message-Id \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->kW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    const/4 v4, 0x1

    invoke-direct {p2, v3, v4}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 327
    array-length v4, v3

    if-ne v4, v1, :cond_8

    .line 328
    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {p3, v3}, Lcom/android/emailcommon/mail/g;->S(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 335
    :cond_9
    :try_start_4
    invoke-virtual {p2}, Lcom/android/email/mail/store/b;->iY()V

    .line 338
    :goto_5
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->jd()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    :cond_a
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    .line 344
    return-void

    .line 331
    :catch_1
    move-exception v0

    .line 333
    :try_start_5
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Failed to find message"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    :try_start_6
    invoke-virtual {p2}, Lcom/android/email/mail/store/b;->iY()V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {p2}, Lcom/android/email/mail/store/b;->iY()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    move v0, v2

    goto :goto_3
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1175
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 1177
    const-string v0, ""

    .line 1178
    array-length v2, p2

    if-lez v2, :cond_6

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    .line 1181
    aget-object v1, p2, v0

    .line 1182
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1

    .line 1183
    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2

    .line 1185
    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1186
    :cond_2
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3

    .line 1187
    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1188
    :cond_3
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_0

    .line 1189
    const-string v1, " \\ANSWERED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1192
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1195
    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->a([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    if-eqz p3, :cond_5

    const-string v0, "+"

    :goto_3
    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    .line 1205
    return-void

    .line 1195
    :cond_5
    :try_start_1
    const-string v0, "-"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1204
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method public final a(JJ)[Lcom/android/emailcommon/mail/Message;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 559
    invoke-static {p1, p2, p3, p4, v6}, Lcom/android/email/mail/store/b;->a(JJZ)Ljava/lang/String;

    move-result-object v2

    .line 561
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMessages dateRange "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 564
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/b;->a([Ljava/lang/String;Lcom/android/emailcommon/mail/f;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0

    .line 565
    :catch_0
    move-exception v0

    .line 571
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "query failed %s, trying alternate"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    invoke-static {p1, p2, p3, p4, v7}, Lcom/android/email/mail/store/b;->a(JJZ)Ljava/lang/String;

    move-result-object v0

    .line 575
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/b;->e(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 576
    :catch_1
    move-exception v2

    .line 577
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "query failed %s, fatal"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 578
    goto :goto_0
.end method

.method public final a(Lcom/android/emailcommon/service/SearchParams;)[Lcom/android/emailcommon/mail/Message;
    .locals 6

    .prologue
    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 474
    iget-object v2, p1, Lcom/android/emailcommon/service/SearchParams;->aaI:Ljava/lang/String;

    .line 477
    const-string v0, "US-ASCII"

    .line 478
    invoke-static {v2}, Lcom/android/email/mail/store/b;->B(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    const-string v0, "UTF-8"

    .line 482
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UID SEARCH CHARSET "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR FROM "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (OR TO "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (OR CC "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (OR SUBJECT "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " BODY "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/b;->g(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/b;->a([Ljava/lang/String;Lcom/android/emailcommon/mail/f;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1281
    instance-of v0, p1, Lcom/android/email/mail/store/b;

    if-eqz v0, :cond_0

    .line 1282
    check-cast p1, Lcom/android/email/mail/store/b;

    iget-object v0, p1, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final exists()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 181
    iget-boolean v2, p0, Lcom/android/email/mail/store/b;->QA:Z

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->jj()Lcom/android/email/mail/store/a;

    move-result-object v2

    move-object v3, v2

    .line 196
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v8, v8, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/email/mail/store/ImapStore;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/mail/store/b;->QA:Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    invoke-virtual {v3}, Lcom/android/email/mail/store/a;->iQ()V

    .line 216
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    goto :goto_0

    .line 194
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    goto :goto_1

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :catch_0
    move-exception v2

    .line 206
    :try_start_3
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/MessagingException;->lr()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 207
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/android/email/mail/store/a;->iQ()V

    .line 216
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_3
    throw v0

    .line 209
    :cond_4
    invoke-virtual {v3}, Lcom/android/email/mail/store/a;->iQ()V

    .line 216
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_5
    move v0, v1

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    :try_start_4
    invoke-direct {p0, v3, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final iX()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public final iY()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/b;->Qx:I

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iZ()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->jj()Lcom/android/email/mail/store/a;

    move-result-object v2

    .line 242
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "CREATE \"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/email/mail/store/b;->mName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    iget-object v8, v8, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/email/mail/store/ImapStore;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    .line 257
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_0
    :goto_1
    return v0

    .line 240
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :catch_0
    move-exception v0

    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    .line 257
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0, v2}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 252
    :catch_1
    move-exception v0

    .line 253
    :try_start_3
    invoke-direct {p0, v2, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    .line 257
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    if-nez v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qw:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_3
    throw v0
.end method

.method public final ja()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/android/email/mail/store/b;->Qx:I

    return v0
.end method

.method public final jb()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 831
    sget-object v0, Lcom/android/email/mail/store/b;->Qv:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public final jc()[Lcom/android/emailcommon/mail/Message;
    .locals 2

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->je()V

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/imap/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/b;->Qy:Lcom/android/email/mail/store/a;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/b;->a(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/mail/store/b;->iQ()V

    .line 1169
    const/4 v0, 0x0

    return-object v0
.end method
