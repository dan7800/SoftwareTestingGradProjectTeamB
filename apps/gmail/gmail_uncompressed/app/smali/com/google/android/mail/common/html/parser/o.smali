.class final Lcom/google/android/mail/common/html/parser/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cuA:I

.field cuB:Z

.field private final cun:Ljava/lang/String;

.field cux:I

.field cuy:I

.field cuz:I

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cux:I

    .line 442
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    .line 443
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    .line 444
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuB:Z

    .line 448
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    .line 449
    return-void
.end method

.method private ai(II)I
    .locals 1

    .prologue
    .line 566
    :goto_0
    if-ge p1, p2, :cond_0

    .line 567
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return p1
.end method


# virtual methods
.method final ag(II)I
    .locals 4

    .prologue
    const/16 v3, 0x3e

    .line 473
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 474
    if-ne p1, p2, :cond_1

    .line 490
    :goto_1
    return p1

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :cond_1
    add-int/lit8 v0, p1, 0x1

    :goto_2
    if-ge v0, p2, :cond_2

    .line 481
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 484
    if-eq v1, v3, :cond_2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 488
    :cond_2
    iput p1, p0, Lcom/google/android/mail/common/html/parser/o;->cux:I

    .line 489
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    move p1, v0

    .line 490
    goto :goto_1
.end method

.method final ah(II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 502
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/o;->ai(II)I

    move-result v0

    .line 505
    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3d

    if-eq v1, v4, :cond_1

    :cond_0
    move v0, p1

    .line 554
    :goto_0
    return v0

    .line 512
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 513
    invoke-direct {p0, v0, p2}, Lcom/google/android/mail/common/html/parser/o;->ai(II)I

    move-result p1

    .line 516
    if-ne p1, p2, :cond_2

    move v0, p1

    .line 517
    goto :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 522
    const/16 v0, 0x27

    if-eq v4, v0, :cond_3

    const/16 v0, 0x22

    if-ne v4, v0, :cond_6

    .line 523
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/mail/common/html/parser/o;->cuB:Z

    .line 524
    add-int/lit8 v1, p1, 0x1

    move v0, v1

    .line 526
    :goto_1
    if-ge v0, p2, :cond_4

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_4

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :cond_4
    iput v1, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    .line 530
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    .line 531
    if-ge v0, p2, :cond_5

    .line 532
    add-int/lit8 v0, v0, 0x1

    .line 549
    :cond_5
    :goto_2
    iget v1, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    if-ltz v1, :cond_8

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 550
    iget v1, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    if-ltz v1, :cond_9

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 551
    iget v1, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    iget v4, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    if-gt v1, v4, :cond_a

    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 552
    if-gt v0, p2, :cond_b

    :goto_6
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    goto :goto_0

    :cond_6
    move v0, p1

    .line 536
    :goto_7
    if-ge v0, p2, :cond_7

    .line 537
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 541
    const/16 v4, 0x3e

    if-eq v1, v4, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_7

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 545
    :cond_7
    iput p1, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    .line 546
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    goto :goto_2

    :cond_8
    move v1, v3

    .line 549
    goto :goto_3

    :cond_9
    move v1, v3

    .line 550
    goto :goto_4

    :cond_a
    move v1, v3

    .line 551
    goto :goto_5

    :cond_b
    move v2, v3

    .line 552
    goto :goto_6
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 575
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/o;->cux:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    if-eq v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/o;->cux:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->name:Ljava/lang/String;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 582
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    if-eq v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->cun:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->value:Ljava/lang/String;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/o;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 455
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cux:I

    .line 456
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    .line 457
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    .line 458
    iput v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/o;->cuB:Z

    .line 460
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/o;->name:Ljava/lang/String;

    .line 461
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/o;->value:Ljava/lang/String;

    .line 462
    return-void
.end method
