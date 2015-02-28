.class public final Lcom/android/email/mail/store/e;
.super Lcom/android/emailcommon/mail/Folder;
.source "SourceFile"


# instance fields
.field final synthetic QM:Lcom/android/email/mail/store/Pop3Store;

.field private final QN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/g;",
            ">;"
        }
    .end annotation
.end field

.field private final QO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/mail/store/g;",
            ">;"
        }
    .end annotation
.end field

.field private final QP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private QQ:Lcom/android/email/mail/store/d;

.field private Qx:I

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/e;->QN:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    .line 153
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-object p2, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(ILcom/android/email/mail/store/g;)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QN:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/g;->ln()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/g;->ln()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void
.end method

.method private aW(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    return-void

    .line 384
    :cond_1
    new-instance v2, Lcom/android/email/mail/store/f;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/f;-><init>(Lcom/android/email/mail/store/e;)V

    .line 385
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->jn()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/email/mail/store/e;->Qx:I

    const/16 v1, 0x1388

    if-le v0, v1, :cond_5

    .line 390
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/g;

    .line 392
    if-nez v0, :cond_4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "UIDL "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/f;->F(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 397
    :cond_3
    new-instance v0, Lcom/android/email/mail/store/g;

    iget-object v3, v2, Lcom/android/email/mail/store/f;->QS:Ljava/lang/String;

    invoke-direct {v0, v3, p0}, Lcom/android/email/mail/store/g;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/e;)V

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/e;->a(ILcom/android/email/mail/store/g;)V

    .line 390
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 402
    :cond_5
    const-string v0, "UIDL"

    invoke-direct {p0, v0, v4}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->n(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/f;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 405
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 407
    :cond_7
    iget-boolean v0, v2, Lcom/android/email/mail/store/f;->QT:Z

    if-nez v0, :cond_0

    .line 408
    iget v1, v2, Lcom/android/email/mail/store/f;->QR:I

    .line 411
    if-lez v1, :cond_6

    if-gt v1, p1, :cond_6

    .line 412
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/g;

    .line 413
    if-nez v0, :cond_6

    .line 414
    new-instance v0, Lcom/android/email/mail/store/g;

    iget-object v3, v2, Lcom/android/email/mail/store/f;->QS:Ljava/lang/String;

    invoke-direct {v0, v3, p0}, Lcom/android/email/mail/store/g;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/e;)V

    .line 415
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/e;->a(ILcom/android/email/mail/store/g;)V

    goto :goto_1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 726
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/e;->a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 728
    if-eqz p1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->s(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/mail/transport/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->t(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 735
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_1
    return-object v0
.end method

.method private jq()Lcom/android/email/mail/store/d;
    .locals 3

    .prologue
    .line 684
    new-instance v0, Lcom/android/email/mail/store/d;

    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/d;-><init>(Lcom/android/email/mail/store/Pop3Store;)V

    .line 686
    :try_start_0
    const-string v1, "CAPA"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->r(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 688
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/mail/store/d;->QL:Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 701
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :try_start_0
    iget v0, p0, Lcom/android/email/mail/store/e;->Qx:I

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/e;->aW(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QN:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/g;

    .line 335
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->l(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 328
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 329
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to index during getMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    :cond_1
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "getMessages"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final C(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 757
    new-instance v0, Lcom/android/email/mail/store/g;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/g;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/e;)V

    return-object v0
.end method

.method public final C(II)[Lcom/android/email/mail/store/g;
    .locals 4

    .prologue
    .line 353
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/e;->aW(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    :goto_0
    if-lez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/g;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->m(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 356
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 357
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    :cond_1
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "getMessages"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 368
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/email/mail/store/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/mail/store/g;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Z)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public final a(Lcom/android/email/mail/store/g;ILorg/apache/james/mime4j/e;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 560
    .line 561
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/email/mail/store/g;->ln()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 562
    if-ne p2, v8, :cond_2

    .line 564
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "RETR %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    if-eqz v0, :cond_1

    .line 581
    :try_start_0
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 582
    if-lez v1, :cond_0

    .line 584
    add-int/lit8 v1, v1, 0x3

    .line 585
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 587
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "No body length supplied"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 588
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/g;->setSize(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 603
    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->o(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 604
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->jo()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 605
    new-instance v0, Lcom/android/emailcommon/b/l;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/b/l;-><init>(Ljava/io/InputStream;)V

    .line 607
    :goto_2
    new-instance v1, Lcom/android/email/mail/store/h;

    iget-object v2, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v1, v2, v0}, Lcom/android/email/mail/store/h;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p1, v1, p3}, Lcom/android/email/mail/store/g;->a(Ljava/io/InputStream;Lorg/apache/james/mime4j/e;)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 621
    :cond_1
    return-void

    .line 568
    :cond_2
    :try_start_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "TOP %d %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 572
    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "RETR %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_0

    .line 575
    :catch_1
    move-exception v2

    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t read message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto/16 :goto_0

    .line 590
    :cond_3
    :try_start_5
    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 592
    if-lez v2, :cond_4

    .line 593
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/g;->setSize(I)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 595
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_3

    .line 609
    :catch_3
    move-exception v0

    .line 616
    if-ne p2, v8, :cond_1

    .line 617
    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->c(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Folder does not exist"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->d(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->open()V

    .line 206
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/android/email/mail/store/e;->jq()Lcom/android/email/mail/store/d;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/store/e;->QQ:Lcom/android/email/mail/store/d;

    .line 210
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->e(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->jW()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QQ:Lcom/android/email/mail/store/d;

    iget-boolean v1, v1, Lcom/android/email/mail/store/d;->QL:Z

    if-eqz v1, :cond_4

    .line 212
    const-string v1, "STLS"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->f(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->jY()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->g(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER /redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PASS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->h(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PASS /redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :try_start_4
    const-string v1, "STAT"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    array-length v2, v1

    if-ge v2, v3, :cond_8

    .line 244
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    :goto_1
    if-eqz v0, :cond_9

    .line 256
    :try_start_5
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->j(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 257
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 258
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    :cond_3
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "POP3 STAT"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    :cond_4
    :try_start_6
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 216
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "TLS not supported but required"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 237
    :catch_0
    move-exception v0

    .line 232
    :try_start_7
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->i(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 233
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 234
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    :cond_6
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    :try_start_8
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 227
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    :cond_7
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 246
    :cond_8
    const/4 v2, 0x1

    :try_start_9
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/e;->Qx:I
    :try_end_9
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 248
    :catch_2
    move-exception v0

    goto :goto_1

    .line 262
    :cond_9
    :try_start_a
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 264
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 252
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 250
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public final a(Lcom/android/emailcommon/mail/Message;)V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->p(Lcom/android/email/mail/store/Pop3Store;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 643
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->p(Lcom/android/email/mail/store/Pop3Store;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->jp()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/mail/store/e;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 644
    return-void
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.fetch(Message[], FetchProfile, MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/g;)V
    .locals 2

    .prologue
    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 649
    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    invoke-static {p2, v0}, Lcom/android/emailcommon/b/s;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    return-void

    .line 656
    :cond_1
    :try_start_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :try_start_1
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->ln()Ljava/lang/String;

    move-result-object v4

    .line 659
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 660
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "DELE %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    iget-object v5, p0, Lcom/android/email/mail/store/e;->QO:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QP:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    iget-object v1, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->q(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/transport/b;->close()V

    .line 671
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 672
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    :cond_2
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "setFlags()"

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final bridge synthetic a(JJ)[Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/emailcommon/service/SearchParams;)[Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 743
    instance-of v0, p1, Lcom/android/email/mail/store/e;

    if-eqz v0, :cond_0

    .line 744
    check-cast p1, Lcom/android/email/mail/store/e;

    iget-object v0, p1, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final exists()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/email/mail/store/e;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final iL()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    const/4 v0, -0x1

    .line 172
    :try_start_0
    new-instance v1, Lcom/android/email/mail/store/f;

    invoke-direct {v1, p0}, Lcom/android/email/mail/store/f;-><init>(Lcom/android/email/mail/store/e;)V

    .line 173
    const-string v3, "UIDL"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v3}, Lcom/android/email/mail/store/Pop3Store;->a(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/email/mail/transport/b;->ah(Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {v1, v3}, Lcom/android/email/mail/store/f;->G(Ljava/lang/String;)Z

    .line 178
    iget-boolean v3, v1, Lcom/android/email/mail/store/f;->QT:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 188
    :cond_1
    :goto_0
    const-string v1, "validate_result_code"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 183
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->b(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->close()V

    .line 184
    const/4 v0, 0x1

    .line 185
    const-string v3, "validate_error_message"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final iX()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public final iY()V
    .locals 2

    .prologue
    .line 282
    :try_start_0
    const-string v0, "QUIT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/e;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/e;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->k(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/transport/b;->close()V

    .line 288
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final iZ()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final ja()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/email/mail/store/e;->Qx:I

    return v0
.end method

.method public final jb()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 625
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->jp()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public final jc()[Lcom/android/emailcommon/mail/Message;
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return-object v0
.end method
