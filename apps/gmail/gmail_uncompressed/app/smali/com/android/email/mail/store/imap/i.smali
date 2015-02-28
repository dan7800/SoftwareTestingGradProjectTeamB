.class public abstract Lcom/android/email/mail/store/imap/i;
.super Lcom/android/email/mail/store/imap/b;
.source "SourceFile"


# static fields
.field private static final Rk:[B

.field public static final Rl:Lcom/android/email/mail/store/imap/i;

.field private static final Rm:Ljava/text/SimpleDateFormat;


# instance fields
.field private Rn:Z

.field private Ro:I

.field private Rp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/email/mail/store/imap/i;->Rk:[B

    .line 39
    new-instance v0, Lcom/android/email/mail/store/imap/j;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/j;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/store/imap/i;->Rm:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/b;-><init>()V

    return-void
.end method

.method private jM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    iget-boolean v1, p0, Lcom/android/email/mail/store/imap/i;->Rn:Z

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/imap/i;->Ro:I

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/mail/store/imap/i;->Rn:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jO()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/email/mail/store/imap/i;->Rp:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 128
    goto :goto_0

    .line 131
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/email/mail/store/imap/i;->Rm:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/store/imap/i;->Rp:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be parsed as a date."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 135
    goto :goto_0
.end method

.method static synthetic jQ()[B
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rk:[B

    return-object v0
.end method


# virtual methods
.method public final K(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jN()I
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;->jM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/email/mail/store/imap/i;->Ro:I

    goto :goto_0
.end method

.method public final jP()Ljava/util/Date;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;->jO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/imap/i;->Rp:Ljava/util/Date;

    goto :goto_0
.end method

.method public final js()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final jt()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public abstract jv()Ljava/io/InputStream;
.end method

.method public final startsWith(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 164
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
