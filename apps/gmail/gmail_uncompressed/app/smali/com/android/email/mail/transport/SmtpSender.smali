.class public Lcom/android/email/mail/transport/SmtpSender;
.super Lcom/android/email/mail/a;
.source "SourceFile"


# instance fields
.field private Ml:Lcom/android/emailcommon/provider/Account;

.field private Pc:Z

.field private Qb:Lcom/android/email/mail/transport/b;

.field private Qc:Ljava/lang/String;

.field private Qd:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-direct {p0}, Lcom/android/email/mail/a;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/email/mail/transport/SmtpSender;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 69
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->Y(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/android/email/mail/transport/b;

    const-string v2, "SMTP"

    invoke-direct {v1, p1, v2, v0}, Lcom/android/email/mail/transport/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/HostAuth;)V

    iput-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    .line 71
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/HostAuth;->lQ()[Ljava/lang/String;

    move-result-object v1

    .line 72
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    .line 73
    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qd:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;->af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iput-boolean v3, p0, Lcom/android/email/mail/transport/SmtpSender;->Pc:Z

    .line 78
    :cond_0
    return-void
.end method

.method private P(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/transport/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0, v4}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 259
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1, v4}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 266
    const/16 v2, 0x34

    if-eq v1, v2, :cond_2

    const/16 v2, 0x35

    if-ne v1, v2, :cond_3

    .line 267
    :cond_2
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_3
    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auth=Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 344
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUTH XOAUTH2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH XOAUTH2 /redacted/"

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 348
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    throw v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/a;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/email/mail/transport/SmtpSender;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->close()V

    .line 226
    return-void
.end method

.method public final o(J)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 182
    invoke-virtual {p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 184
    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v2

    .line 185
    if-nez v2, :cond_0

    .line 186
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to send non-existent message id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v1, v2, Lcom/android/emailcommon/provider/g;->YT:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->am(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 190
    iget-object v3, v2, Lcom/android/emailcommon/provider/g;->YU:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 191
    iget-object v4, v2, Lcom/android/emailcommon/provider/g;->YV:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 192
    iget-object v5, v2, Lcom/android/emailcommon/provider/g;->YW:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->ao(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 195
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MAIL FROM:<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ">"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    array-length v6, v3

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v3, v1

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RCPT TO:<"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    array-length v3, v4

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v6, v4, v1

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RCPT TO:<"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_2
    array-length v1, v5

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v3, v5, v0

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "RCPT TO:<"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 205
    :cond_3
    const-string v0, "DATA"

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/emailcommon/b/f;

    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v3}, Lcom/android/email/mail/transport/b;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/emailcommon/b/f;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v2, v1}, Lcom/android/emailcommon/a/j;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/g;Ljava/io/OutputStream;)V

    .line 212
    const-string v0, "\r\n."

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Unable to send message"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final open()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->open()V

    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const-string v0, "localhost"

    .line 99
    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_d

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "IPv6:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 111
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EHLO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/b;->jW()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "STARTTLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "STARTTLS"

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->jY()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EHLO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_1
    const-string v1, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 142
    const-string v2, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 143
    const-string v3, ".*AUTH.*XOAUTH2.*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 145
    iget-boolean v3, p0, Lcom/android/email/mail/transport/SmtpSender;->Pc:Z

    if-eqz v3, :cond_8

    .line 146
    if-nez v0, :cond_6

    .line 147
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "OAuth requested, but not supported."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 168
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    :cond_2
    new-instance v1, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "TLS not supported but required"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    :cond_4
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 173
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    :cond_5
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 150
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/mail/a/a;->iN()Lcom/android/email/mail/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/a/a;->g(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    :cond_7
    :goto_1
    return-void

    .line 150
    :catch_2
    move-exception v2

    :try_start_4
    iget-object v2, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/a/a;->h(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qd:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 153
    if-eqz v2, :cond_a

    .line 154
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qd:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUTH PLAIN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH PLAIN /redacted/"

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_9

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_9

    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    throw v0

    .line 156
    :cond_a
    if-eqz v1, :cond_c

    .line 157
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->Qc:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/transport/SmtpSender;->Qd:Ljava/lang/String;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string v2, "AUTH LOGIN"

    invoke-direct {p0, v2}, Lcom/android/email/mail/transport/SmtpSender;->P(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/username redacted/"

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/password redacted/"

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_b

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_b

    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    throw v0

    .line 160
    :cond_c
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "No valid authentication mechanism found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_d
    move-object v1, v0

    goto/16 :goto_0
.end method
