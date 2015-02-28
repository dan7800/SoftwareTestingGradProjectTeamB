.class final Landroid/support/v4/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gh:[B


# instance fields
.field private final gi:Ljava/lang/String;

.field private final gj:Z

.field private gk:I

.field private gl:C

.field private final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x700

    .line 505
    new-array v0, v3, [B

    sput-object v0, Landroid/support/v4/e/c;->gh:[B

    .line 506
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 507
    sget-object v1, Landroid/support/v4/e/c;->gh:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/e/c;->gj:Z

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/e/c;->length:I

    .line 553
    return-void
.end method

.method private static a(C)B
    .locals 1

    .prologue
    .line 724
    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/support/v4/e/c;->gh:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_0
.end method

.method private aJ()B
    .locals 7

    .prologue
    const/16 v1, 0xd

    const/16 v0, 0xc

    const/16 v6, 0x3e

    const/16 v5, 0x3b

    .line 767
    iget-object v2, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/e/c;->gl:C

    .line 768
    iget-char v2, p0, Landroid/support/v4/e/c;->gl:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    iget-object v0, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/e/c;->gk:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 770
    iget v1, p0, Landroid/support/v4/e/c;->gk:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/e/c;->gk:I

    .line 771
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 773
    :cond_1
    iget v2, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/e/c;->gk:I

    .line 774
    iget-char v2, p0, Landroid/support/v4/e/c;->gl:C

    invoke-static {v2}, Landroid/support/v4/e/c;->a(C)B

    move-result v2

    .line 775
    iget-boolean v3, p0, Landroid/support/v4/e/c;->gj:Z

    if-eqz v3, :cond_9

    .line 777
    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v3, v6, :cond_6

    .line 778
    iget v2, p0, Landroid/support/v4/e/c;->gk:I

    :cond_2
    :goto_1
    iget v3, p0, Landroid/support/v4/e/c;->gk:I

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/e/c;->gl:C

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    if-eq v3, v6, :cond_5

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    :cond_3
    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    :cond_4
    iget v4, p0, Landroid/support/v4/e/c;->gk:I

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_5
    iput v2, p0, Landroid/support/v4/e/c;->gk:I

    iput-char v6, p0, Landroid/support/v4/e/c;->gl:C

    move v0, v1

    goto :goto_0

    .line 779
    :cond_6
    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v3, v5, :cond_9

    .line 780
    iget v2, p0, Landroid/support/v4/e/c;->gk:I

    :cond_7
    iget v3, p0, Landroid/support/v4/e/c;->gk:I

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/e/c;->gl:C

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v4, 0x26

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v3, v5, :cond_7

    :cond_8
    iput v2, p0, Landroid/support/v4/e/c;->gk:I

    iput-char v5, p0, Landroid/support/v4/e/c;->gl:C

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method final aH()I
    .locals 13

    .prologue
    const/16 v12, 0x3c

    const/16 v7, 0xc

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 567
    iput v1, p0, Landroid/support/v4/e/c;->gk:I

    move v0, v1

    move v3, v1

    move v2, v1

    .line 571
    :goto_0
    :pswitch_0
    iget v6, p0, Landroid/support/v4/e/c;->gk:I

    iget v8, p0, Landroid/support/v4/e/c;->length:I

    if-ge v6, v8, :cond_d

    if-nez v0, :cond_d

    .line 572
    iget-object v6, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroid/support/v4/e/c;->gl:C

    iget-char v6, p0, Landroid/support/v4/e/c;->gl:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/e/c;->gk:I

    invoke-static {v6, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    iget v8, p0, Landroid/support/v4/e/c;->gk:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/v4/e/c;->gk:I

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    :pswitch_1
    move v0, v2

    .line 607
    goto :goto_0

    .line 572
    :cond_1
    iget v6, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/e/c;->gk:I

    iget-char v6, p0, Landroid/support/v4/e/c;->gl:C

    invoke-static {v6}, Landroid/support/v4/e/c;->a(C)B

    move-result v6

    iget-boolean v8, p0, Landroid/support/v4/e/c;->gj:Z

    if-eqz v8, :cond_0

    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v8, v12, :cond_7

    iget v6, p0, Landroid/support/v4/e/c;->gk:I

    :cond_2
    :goto_2
    iget v8, p0, Landroid/support/v4/e/c;->gk:I

    iget v9, p0, Landroid/support/v4/e/c;->length:I

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v9, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/support/v4/e/c;->gl:C

    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v9, 0x22

    if-eq v8, v9, :cond_4

    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    :cond_4
    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    :cond_5
    iget v9, p0, Landroid/support/v4/e/c;->gk:I

    iget v10, p0, Landroid/support/v4/e/c;->length:I

    if-ge v9, v10, :cond_2

    iget-object v9, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v10, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, p0, Landroid/support/v4/e/c;->gl:C

    if-ne v9, v8, :cond_5

    goto :goto_2

    :cond_6
    iput v6, p0, Landroid/support/v4/e/c;->gk:I

    iput-char v12, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v6, 0xd

    goto :goto_1

    :cond_7
    iget-char v8, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v9, 0x26

    if-ne v8, v9, :cond_0

    :cond_8
    iget v6, p0, Landroid/support/v4/e/c;->gk:I

    iget v8, p0, Landroid/support/v4/e/c;->length:I

    if-ge v6, v8, :cond_9

    iget-object v6, p0, Landroid/support/v4/e/c;->gi:Ljava/lang/String;

    iget v8, p0, Landroid/support/v4/e/c;->gk:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroid/support/v4/e/c;->gk:I

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroid/support/v4/e/c;->gl:C

    const/16 v8, 0x3b

    if-ne v6, v8, :cond_8

    :cond_9
    move v6, v7

    goto/16 :goto_1

    .line 575
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .line 577
    goto/16 :goto_0

    .line 580
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    .line 582
    goto/16 :goto_0

    .line 584
    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    move v3, v1

    .line 589
    goto/16 :goto_0

    .line 593
    :pswitch_5
    if-nez v2, :cond_b

    .line 649
    :cond_a
    :goto_3
    return v4

    :cond_b
    move v0, v2

    .line 597
    goto/16 :goto_0

    .line 600
    :pswitch_6
    if-nez v2, :cond_c

    move v4, v5

    .line 601
    goto :goto_3

    :cond_c
    move v0, v2

    .line 604
    goto/16 :goto_0

    .line 613
    :cond_d
    if-nez v0, :cond_e

    move v4, v1

    .line 616
    goto :goto_3

    .line 620
    :cond_e
    if-eqz v3, :cond_f

    move v4, v3

    .line 622
    goto :goto_3

    .line 627
    :cond_f
    :goto_4
    iget v3, p0, Landroid/support/v4/e/c;->gk:I

    if-lez v3, :cond_11

    .line 628
    invoke-direct {p0}, Landroid/support/v4/e/c;->aJ()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 631
    :pswitch_7
    if-eq v0, v2, :cond_a

    .line 634
    add-int/lit8 v2, v2, -0x1

    .line 635
    goto :goto_4

    .line 638
    :pswitch_8
    if-ne v0, v2, :cond_10

    move v4, v5

    .line 639
    goto :goto_3

    .line 641
    :cond_10
    add-int/lit8 v2, v2, -0x1

    .line 642
    goto :goto_4

    .line 644
    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    move v4, v1

    .line 649
    goto :goto_3

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 628
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final aI()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 665
    iget v0, p0, Landroid/support/v4/e/c;->length:I

    iput v0, p0, Landroid/support/v4/e/c;->gk:I

    move v0, v1

    move v2, v1

    .line 668
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/support/v4/e/c;->gk:I

    if-lez v5, :cond_1

    .line 669
    invoke-direct {p0}, Landroid/support/v4/e/c;->aJ()B

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 707
    :pswitch_1
    if-nez v0, :cond_0

    move v0, v2

    .line 708
    goto :goto_0

    .line 671
    :pswitch_2
    if-nez v2, :cond_2

    move v1, v3

    .line 713
    :cond_1
    :goto_1
    return v1

    .line 674
    :cond_2
    if-nez v0, :cond_0

    move v0, v2

    .line 675
    goto :goto_0

    .line 680
    :pswitch_3
    if-ne v0, v2, :cond_3

    move v1, v3

    .line 681
    goto :goto_1

    .line 683
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 684
    goto :goto_0

    .line 687
    :pswitch_4
    if-nez v2, :cond_4

    move v1, v4

    .line 688
    goto :goto_1

    .line 690
    :cond_4
    if-nez v0, :cond_0

    move v0, v2

    .line 691
    goto :goto_0

    .line 696
    :pswitch_5
    if-ne v0, v2, :cond_5

    move v1, v4

    .line 697
    goto :goto_1

    .line 699
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 700
    goto :goto_0

    .line 702
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 703
    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
