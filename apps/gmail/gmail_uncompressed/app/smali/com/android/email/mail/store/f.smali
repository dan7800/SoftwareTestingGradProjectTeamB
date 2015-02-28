.class final Lcom/android/email/mail/store/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public QR:I

.field public QS:Ljava/lang/String;

.field public QT:Z

.field public QU:Z

.field final synthetic QV:Lcom/android/email/mail/store/e;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/e;)V
    .locals 1

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/email/mail/store/f;->QV:Lcom/android/email/mail/store/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/f;->QU:Z

    .line 453
    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    iput-boolean v1, p0, Lcom/android/email/mail/store/f;->QU:Z

    .line 465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 485
    :goto_0
    return v0

    .line 468
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 469
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    .line 470
    const-string v2, " +"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 471
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 473
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/email/mail/store/f;->QR:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    const/4 v1, 0x2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/android/email/mail/store/f;->QS:Ljava/lang/String;

    .line 478
    iput-boolean v0, p0, Lcom/android/email/mail/store/f;->QT:Z

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 481
    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    .line 482
    iput-boolean v0, p0, Lcom/android/email/mail/store/f;->QU:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 485
    goto :goto_0
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 496
    iput-boolean v1, p0, Lcom/android/email/mail/store/f;->QU:Z

    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 517
    :goto_0
    return v0

    .line 500
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 501
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 502
    iput-boolean v0, p0, Lcom/android/email/mail/store/f;->QT:Z

    goto :goto_0

    .line 505
    :cond_2
    const-string v2, " +"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 506
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 508
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/email/mail/store/f;->QR:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/email/mail/store/f;->QS:Ljava/lang/String;

    .line 513
    iput-boolean v1, p0, Lcom/android/email/mail/store/f;->QT:Z

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 517
    goto :goto_0
.end method
