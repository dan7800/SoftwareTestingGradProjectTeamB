.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/b;
.source "SourceFile"


# static fields
.field private static final QC:Ljava/nio/charset/Charset;

.field static QD:Ljava/lang/String;


# instance fields
.field private Pc:Z

.field QE:Ljava/lang/String;

.field QF:Ljava/lang/String;

.field private final QG:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/email/mail/store/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    const-string v1, "X-RFC-3501"

    invoke-virtual {v0, v1}, Lcom/a/a/b;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->QC:Ljava/nio/charset/Charset;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->QD:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/email/mail/b;-><init>()V

    .line 93
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/android/email/mail/store/ImapStore;->QG:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 108
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 111
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v2

    .line 112
    if-nez v2, :cond_0

    .line 113
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "No HostAuth in ImapStore?"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    new-instance v3, Lcom/android/email/mail/transport/b;

    const-string v4, "IMAP"

    invoke-direct {v3, p1, v4, v2}, Lcom/android/email/mail/transport/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v3, p0, Lcom/android/email/mail/store/ImapStore;->Qb:Lcom/android/email/mail/transport/b;

    .line 117
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/HostAuth;->lQ()[Ljava/lang/String;

    move-result-object v3

    .line 118
    aget-object v4, v3, v1

    iput-object v4, p0, Lcom/android/email/mail/store/ImapStore;->Qc:Ljava/lang/String;

    .line 119
    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/email/mail/store/ImapStore;->Qd:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, p1}, Lcom/android/emailcommon/provider/HostAuth;->af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/mail/store/ImapStore;->Pc:Z

    .line 122
    iget-object v0, v2, Lcom/android/emailcommon/provider/HostAuth;->GZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    .line 123
    return-void

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/mail/store/b;
    .locals 4

    .prologue
    .line 378
    if-nez p7, :cond_3

    .line 379
    invoke-static {p1, p4}, Lcom/android/email/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 380
    invoke-static {p1, p2, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object p7

    move v1, v0

    .line 384
    :goto_0
    invoke-virtual {p0, p4}, Lcom/android/email/mail/store/ImapStore;->y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/b;

    .line 385
    invoke-virtual {p7}, Lcom/android/emailcommon/provider/Mailbox;->lF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual {p7}, Lcom/android/emailcommon/provider/Mailbox;->lS()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    .line 390
    :cond_0
    iput-wide p2, p7, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    iput p5, p7, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    invoke-virtual {p4, p5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p7, Lcom/android/emailcommon/provider/Mailbox;->Xy:Ljava/lang/String;

    if-eqz p6, :cond_1

    const/16 v2, 0x18

    iput v2, p7, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p7, Lcom/android/emailcommon/provider/Mailbox;->Zu:Z

    iput-object p4, p7, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    iput v1, p7, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    .line 391
    iget-object v1, v0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 395
    invoke-virtual {p7}, Lcom/android/emailcommon/provider/Mailbox;->lS()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/mail/store/b;->QB:[Ljava/lang/Object;

    .line 401
    const/16 v1, 0x8

    iput v1, p7, Lcom/android/emailcommon/provider/Mailbox;->Zx:I

    .line 402
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    invoke-virtual {p7, v1}, Lcom/android/emailcommon/provider/Mailbox;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 404
    :cond_2
    iput-object p7, v0, Lcom/android/email/mail/store/b;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    .line 405
    return-object v0

    .line 382
    :cond_3
    iget v0, p7, Lcom/android/emailcommon/provider/Mailbox;->Zr:I

    move v1, v0

    goto :goto_0

    :cond_4
    move-object v2, p4

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 201
    const-class v1, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->QD:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 203
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    const-string v0, ""

    .line 208
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\"name\" \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \"os\" \"android\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \"os-version\" \""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "; "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " \"vendor\" \""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "REL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->QD:Ljava/lang/String;

    .line 212
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/email/mail/store/ImapStore;->QD:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {p0}, Lcom/android/emailcommon/VendorPolicyLoader;->W(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/emailcommon/VendorPolicyLoader;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_6
    :try_start_1
    invoke-static {p0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/r;->gX()Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 233
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 234
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v2, " \"AGUID\" \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_7
    :try_start_2
    const-string v2, "1.0"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 239
    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "couldn\'t obtain SHA-1 hash for device UID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method static a([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    .line 626
    if-eqz v1, :cond_0

    .line 627
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    :cond_0
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const/4 v1, 0x1

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/b;

    .line 413
    invoke-virtual {v0, p0}, Lcom/android/email/mail/store/b;->C(Landroid/content/Context;)V

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method

.method private static b(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/b;

    .line 339
    iget-object v6, v1, Lcom/android/email/mail/store/b;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    .line 340
    iget-object v1, v6, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    iget v4, v6, Lcom/android/emailcommon/provider/Mailbox;->Zs:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 341
    const-wide/16 v4, -0x1

    .line 343
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    .line 344
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v1, "INBOX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    const-string v0, "INBOX"

    move-object v1, v0

    .line 350
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/b;

    .line 351
    if-nez v0, :cond_1

    move-object v0, v2

    .line 352
    :goto_2
    if-eqz v0, :cond_0

    .line 353
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    .line 354
    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    or-int/lit8 v7, v7, 0x3

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->dM:I

    .line 358
    :cond_0
    :goto_3
    iput-wide v4, v6, Lcom/android/emailcommon/provider/Mailbox;->Zq:J

    .line 359
    iput-object v1, v6, Lcom/android/emailcommon/provider/Mailbox;->Zp:Ljava/lang/String;

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, v0, Lcom/android/email/mail/store/b;->Pv:Lcom/android/emailcommon/provider/Mailbox;

    goto :goto_2

    .line 361
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 591
    const-string v0, "INBOX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return-object p0

    .line 594
    :cond_0
    if-eqz p1, :cond_1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 599
    :cond_1
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->QC:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 601
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 603
    invoke-static {v1}, Lcom/android/emailcommon/b/s;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 612
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->QC:Ljava/nio/charset/Charset;

    invoke-static {p0}, Lcom/android/emailcommon/b/s;->aG(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    :cond_0
    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method


# virtual methods
.method final D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->QF:Ljava/lang/String;

    .line 518
    return-void
.end method

.method final E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    .line 523
    return-void
.end method

.method final a(Lcom/android/email/mail/store/a;)V
    .locals 1

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/android/email/mail/store/a;->iQ()V

    .line 582
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QG:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_0
    return-void
.end method

.method public final aU(I)Z
    .locals 1

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 144
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->Qd:Ljava/lang/String;

    return-object v0
.end method

.method final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->Qc:Ljava/lang/String;

    return-object v0
.end method

.method public final iK()[Lcom/android/emailcommon/mail/Folder;
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore;->jj()Lcom/android/email/mail/store/a;

    move-result-object v8

    .line 424
    :try_start_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 427
    const-string v0, "NOOP"

    invoke-virtual {v8, v0}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    .line 428
    const-string v0, "LIST \"\" \"*\""

    .line 429
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST \"\" \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_0
    invoke-virtual {v8, v0}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 435
    const/4 v1, 0x0

    const-string v2, "LIST"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/email/mail/store/ImapStore;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    const-string v1, "INBOX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v1

    const-string v2, "\\NOSELECT"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/imap/d;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v6, v11

    .line 447
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 450
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 452
    :goto_2
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/mail/store/ImapStore;->a(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/mail/store/b;

    move-result-object v0

    .line 454
    invoke-virtual {v12, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    :try_start_1
    invoke-virtual {v8}, Lcom/android/email/mail/store/a;->close()V

    .line 470
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Unable to get folder list"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_2
    throw v0

    :cond_3
    move v6, v10

    .line 445
    goto :goto_1

    .line 459
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->Ln:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/emailcommon/provider/Mailbox;->d(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 461
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-object v4, v7, Lcom/android/emailcommon/provider/Mailbox;->Vv:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/mail/store/ImapStore;->a(Landroid/content/Context;JLjava/lang/String;CZLcom/android/emailcommon/provider/Mailbox;)Lcom/android/email/mail/store/b;

    move-result-object v0

    .line 463
    const-string v1, "INBOX"

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-static {v12}, Lcom/android/email/mail/store/ImapStore;->b(Ljava/util/HashMap;)V

    .line 466
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/email/mail/store/ImapStore;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 467
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Folder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Folder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    if-eqz v8, :cond_5

    .line 481
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/ImapStore;->a(Lcom/android/email/mail/store/a;)V

    :cond_5
    return-object v0

    .line 471
    :catch_1
    move-exception v0

    .line 474
    :try_start_3
    invoke-virtual {v8}, Lcom/android/email/mail/store/a;->iQ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 478
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_3

    :cond_6
    move v5, v10

    goto :goto_2
.end method

.method public final iL()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 488
    const/4 v0, -0x1

    .line 489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 493
    new-instance v2, Lcom/android/email/mail/store/a;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/a;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 495
    :try_start_0
    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->open()V

    .line 496
    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    .line 503
    :goto_0
    const-string v2, "validate_result_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    return-object v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    :try_start_1
    const-string v3, "validate_error_message"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    const/4 v0, 0x1

    .line 501
    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/android/email/mail/store/a;->iQ()V

    throw v0
.end method

.method public final iM()V
    .locals 1

    .prologue
    .line 691
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QG:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/a;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lcom/android/email/mail/store/a;->close()V

    goto :goto_0

    .line 694
    :cond_0
    return-void
.end method

.method final jf()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore;->Pc:Z

    return v0
.end method

.method final jg()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final jh()Lcom/android/email/mail/transport/b;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->jU()Lcom/android/email/mail/transport/b;

    move-result-object v0

    return-object v0
.end method

.method final ji()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->QF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->QF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QE:Ljava/lang/String;

    .line 546
    :cond_0
    return-void
.end method

.method final jj()Lcom/android/email/mail/store/a;
    .locals 2

    .prologue
    .line 556
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->QG:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/a;

    if-eqz v0, :cond_0

    .line 558
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/email/mail/store/a;->a(Lcom/android/email/mail/store/ImapStore;)V

    .line 559
    const-string v1, "NOOP"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/a;->z(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    if-nez v0, :cond_1

    .line 570
    new-instance v0, Lcom/android/email/mail/store/a;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/a;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 572
    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    .line 566
    :goto_1
    invoke-virtual {v0}, Lcom/android/email/mail/store/a;->close()V

    goto :goto_0

    .line 565
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/android/email/mail/store/b;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/b;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    return-object v0
.end method
