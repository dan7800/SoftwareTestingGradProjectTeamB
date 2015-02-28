.class final Lcom/android/email/mail/store/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Qb:Lcom/android/email/mail/transport/b;

.field private Qi:Ljava/lang/String;

.field private Qo:I

.field private Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field private Qq:Lcom/android/email/mail/store/ImapStore;

.field private Qr:Ljava/lang/String;

.field private Qs:Ljava/lang/String;

.field private final Qt:Lcom/android/email/mail/transport/a;

.field private final Qu:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qs:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/email/mail/transport/a;

    invoke-direct {v0}, Lcom/android/email/mail/transport/a;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qt:Lcom/android/email/mail/transport/a;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qu:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/a;->a(Lcom/android/email/mail/store/ImapStore;)V

    .line 86
    return-void
.end method

.method private a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->open()V

    .line 304
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 306
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 307
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    if-nez v1, :cond_1

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/android/email/mail/transport/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/android/email/mail/store/a;->Qt:Lcom/android/email/mail/transport/a;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/transport/a;->O(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 313
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v4

    .line 315
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/g;->jx()Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Expected continuation request"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_2
    return-object v2
.end method

.method private aV(I)Z
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/email/mail/store/a;->Qo:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ag(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 464
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->jg()Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 468
    :try_start_0
    const-string v1, "NAMESPACE"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 478
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 479
    const-string v2, "NAMESPACE"

    invoke-virtual {v0, v5, v2}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/imap/d;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    .line 482
    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/email/mail/store/ImapStore;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/email/mail/store/ImapStore;->E(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapStore;->D(Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :catch_0
    move-exception v1

    .line 471
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 472
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "ImapException"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 490
    :cond_2
    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null transport"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v3, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-eqz p2, :cond_1

    const-string v0, "[IMAP command redacted]"

    :goto_0
    invoke-virtual {v3, v1, v0}, Lcom/android/email/mail/transport/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/android/email/mail/store/a;->Qt:Lcom/android/email/mail/transport/a;

    if-eqz p2, :cond_2

    const-string v0, "[IMAP command redacted]"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/email/mail/transport/a;->O(Ljava/lang/String;)V

    .line 290
    return-object v2

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 289
    goto :goto_1
.end method

.method private d(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iS()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private iO()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->jf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {}, Lcom/android/email/mail/a/a;->iN()Lcom/android/email/mail/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/a/a;->g(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qi:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qi:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auth=Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUTHENTICATE XOAUTH2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOGIN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    goto :goto_0
.end method

.method private iP()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    .line 249
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/a;->Qt:Lcom/android/email/mail/transport/a;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/a;)V

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 250
    return-void
.end method

.method private iS()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v1

    .line 342
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->jz()Z

    move-result v2

    if-nez v2, :cond_2

    .line 346
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->jF()Lcom/android/email/mail/store/imap/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->jD()Lcom/android/email/mail/store/imap/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/g;->jC()Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    .line 353
    const-string v4, "UNAVAILABLE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v1, 0x13

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    new-instance v4, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 359
    :cond_2
    return-object v0
.end method

.method private iT()Lcom/android/email/mail/store/imap/g;
    .locals 4

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    const-string v0, "CAPABILITY"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 402
    const-string v3, "CAPABILITY"

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/imap/g;->H(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    :goto_0
    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid CAPABILITY response received"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private iU()Lcom/android/email/mail/store/imap/g;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 555
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/a;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/a;->c(Ljava/lang/String;Z)Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    .line 571
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jC()Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    .line 572
    const-string v2, "UNAVAILABLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 573
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jD()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 577
    :cond_3
    return-object v0
.end method

.method private iV()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->jg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 591
    :try_start_0
    const-string v1, "LIST \"\" \"\""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 601
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/imap/g;

    .line 602
    const-string v2, "LIST"

    invoke-virtual {v0, v5, v2}, Lcom/android/email/mail/store/imap/g;->c(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapStore;->D(Ljava/lang/String;)V

    goto :goto_1

    .line 592
    :catch_0
    move-exception v1

    .line 594
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 595
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "ImapException"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 607
    :cond_2
    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/android/email/mail/store/ImapStore;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    .line 94
    return-void
.end method

.method final b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "sendCommand %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string v0, "[IMAP command redacted]"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->open()V

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/a;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    .line 276
    goto :goto_0
.end method

.method final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->close()V

    .line 206
    iput-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    .line 209
    iput-object v1, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 210
    iput-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    .line 211
    return-void
.end method

.method final e(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/a;->a(Ljava/util/List;Z)Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iS()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final iQ()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iQ()V

    .line 256
    :cond_0
    return-void
.end method

.method final iR()Lcom/android/email/mail/store/imap/g;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    return-object v0
.end method

.method final iW()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qt:Lcom/android/email/mail/transport/a;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/a;->iW()V

    .line 638
    return-void
.end method

.method final open()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore;->jh()Lcom/android/email/mail/transport/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->open()V

    .line 145
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iP()V

    .line 148
    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->iR()Lcom/android/email/mail/store/imap/g;

    .line 151
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iT()Lcom/android/email/mail/store/imap/g;

    move-result-object v1

    .line 153
    const-string v2, "STARTTLS"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/imap/g;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v3}, Lcom/android/email/mail/transport/b;->jW()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_d

    const-string v0, "STARTTLS"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;

    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->jY()V

    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iP()V

    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iT()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    .line 158
    :cond_2
    if-eqz v0, :cond_13

    .line 165
    :goto_1
    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    :cond_3
    const-string v1, "NAMESPACE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    :cond_4
    const-string v1, "UIDPLUS"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    :cond_5
    const-string v1, "STARTTLS"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/g;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/email/mail/store/a;->Qo:I

    .line 166
    :cond_6
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/a;->aV(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".secureserver.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/android/email/mail/store/ImapStore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qs:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qs:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qs:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_8
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->jf()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "doSASLAuth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iU()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jz()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "failed to authenticate, retrying"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qr:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/a;->Qb:Lcom/android/email/mail/transport/b;

    :cond_9
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iU()Lcom/android/email/mail/store/imap/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/g;->jz()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "failed to authenticate, giving up"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, "OAuth failed after refresh"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "ImapException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_a
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->jk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->jm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->jl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTHENTICATIONFAILED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "EXPIRED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "NO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_b
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-direct {v1, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    :try_start_4
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 183
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "SSLException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :cond_c
    new-instance v1, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    throw v0

    .line 157
    :cond_d
    :try_start_5
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "TLS not supported but required"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_e
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :catch_2
    move-exception v0

    .line 190
    :try_start_6
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_f

    .line 191
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "IOException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    :cond_f
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    :catch_3
    move-exception v0

    :try_start_7
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "ImapException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 172
    :cond_10
    :try_start_8
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iO()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_8
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 175
    :cond_11
    const/4 v0, 0x2

    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/a;->aV(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/a;->ag(Z)V

    .line 178
    invoke-direct {p0}, Lcom/android/email/mail/store/a;->iV()V

    .line 180
    iget-object v0, p0, Lcom/android/email/mail/store/a;->Qq:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore;->ji()V
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/android/email/mail/store/a;->iQ()V

    goto/16 :goto_0

    .line 172
    :cond_12
    :try_start_a
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_13
    move-object v0, v1

    goto/16 :goto_1
.end method

.method final z(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/a;->d(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
