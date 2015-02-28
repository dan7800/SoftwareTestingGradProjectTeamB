.class final Lorg/owasp/html/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field private final ajV:Ljava/lang/StringBuilder;

.field private cGR:[I

.field private cHa:[I

.field private final cHb:Ljava/lang/String;

.field private final cHc:I

.field private cHd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/owasp/html/CssTokens$TokenType;",
            ">;"
        }
    .end annotation
.end field

.field private cHe:I

.field private cHf:I

.field private cHg:[I

.field private cHh:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    const-class v0, Lorg/owasp/html/CssTokens;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/owasp/html/l;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput v1, p0, Lorg/owasp/html/l;->pos:I

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    .line 300
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    .line 301
    iput v1, p0, Lorg/owasp/html/l;->cHe:I

    .line 309
    invoke-static {}, Lorg/owasp/html/CssTokens;->abE()[I

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/l;->cHa:[I

    .line 315
    iput v1, p0, Lorg/owasp/html/l;->cHf:I

    .line 322
    invoke-static {}, Lorg/owasp/html/CssTokens;->abE()[I

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/l;->cHg:[I

    .line 327
    iput v1, p0, Lorg/owasp/html/l;->cHh:I

    .line 330
    iput-object p1, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/owasp/html/l;->cHc:I

    .line 333
    return-void
.end method

.method private a(Lorg/owasp/html/CssTokens$TokenType;I)V
    .locals 3

    .prologue
    .line 667
    iget v0, p0, Lorg/owasp/html/l;->cHe:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v1, p0, Lorg/owasp/html/l;->cHe:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-eq v0, p2, :cond_1

    .line 669
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v1, p0, Lorg/owasp/html/l;->cHe:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/owasp/html/CssTokens;->b([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    .line 670
    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v1, p0, Lorg/owasp/html/l;->cHe:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/owasp/html/l;->cHe:I

    aput p2, v0, v1

    .line 671
    iget-object v0, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_1
    return-void
.end method

.method private abL()Z
    .locals 8

    .prologue
    const/16 v7, 0x2f

    const/16 v6, 0x2a

    const/16 v5, 0x2d

    .line 690
    iget-object v0, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 691
    iget v1, p0, Lorg/owasp/html/l;->cHc:I

    .line 692
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    .line 693
    :cond_0
    :goto_0
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v1, :cond_a

    .line 694
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 695
    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    const v4, 0xfeff

    if-ne v3, v4, :cond_2

    .line 699
    :cond_1
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 700
    :cond_2
    iget v4, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v1, :cond_a

    .line 701
    if-ne v3, v7, :cond_8

    .line 703
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 704
    if-ne v3, v6, :cond_6

    .line 705
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    .line 706
    :cond_3
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v1, :cond_0

    .line 707
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 708
    if-gez v3, :cond_4

    .line 709
    iput v1, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 713
    :cond_4
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    .line 714
    :goto_1
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v1, :cond_5

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_5

    .line 715
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_1

    .line 717
    :cond_5
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v1, :cond_3

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_3

    .line 718
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 723
    :cond_6
    if-ne v3, v7, :cond_a

    .line 724
    :cond_7
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v1, :cond_0

    .line 725
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_0

    .line 730
    :cond_8
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_9

    .line 731
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x3

    if-ge v3, v1, :cond_a

    const/16 v3, 0x21

    iget v4, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_a

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_a

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_a

    .line 735
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    goto/16 :goto_0

    .line 739
    :cond_9
    if-ne v3, v5, :cond_a

    .line 740
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x2

    if-ge v3, v1, :cond_a

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_a

    const/16 v3, 0x3e

    iget v4, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_a

    .line 743
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    goto/16 :goto_0

    .line 751
    :cond_a
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ne v0, v2, :cond_b

    .line 752
    const/4 v0, 0x0

    .line 755
    :goto_2
    return v0

    .line 754
    :cond_b
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 755
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private abM()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 760
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 761
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    :cond_0
    return-void
.end method

.method private abN()I
    .locals 13

    .prologue
    const/16 v11, 0x66

    const/16 v10, 0x61

    const/16 v9, 0x30

    const/4 v0, -0x1

    const/16 v8, 0x39

    .line 827
    iget-object v4, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 828
    iget v5, p0, Lorg/owasp/html/l;->cHc:I

    .line 829
    sget-boolean v1, Lorg/owasp/html/l;->vb:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 830
    :cond_0
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v5, :cond_2

    .line 865
    :cond_1
    :goto_0
    return v0

    .line 831
    :cond_2
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 832
    invoke-static {v1}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    or-int/lit8 v3, v1, 0x20

    .line 834
    if-gt v9, v1, :cond_3

    if-le v1, v8, :cond_4

    :cond_3
    if-gt v10, v3, :cond_b

    if-gt v3, v11, :cond_b

    .line 836
    :cond_4
    const/4 v2, 0x0

    .line 837
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    .line 838
    iget v6, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v6, v6, 0x7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v12, v0

    move v0, v2

    move v2, v3

    move v3, v1

    move v1, v12

    .line 841
    :cond_5
    shl-int/lit8 v7, v0, 0x4

    if-gt v3, v8, :cond_a

    add-int/lit8 v0, v3, -0x30

    :goto_1
    or-int/2addr v0, v7

    .line 843
    add-int/lit8 v1, v1, 0x1

    .line 844
    if-eq v1, v6, :cond_7

    .line 845
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 846
    or-int/lit8 v2, v3, 0x20

    .line 848
    if-gt v9, v3, :cond_6

    if-le v3, v8, :cond_5

    :cond_6
    if-gt v10, v2, :cond_7

    if-le v2, v11, :cond_5

    .line 849
    :cond_7
    invoke-static {v0}, Ljava/lang/Character;->isDefined(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 850
    const v0, 0xfffd

    .line 852
    :cond_8
    iput v1, p0, Lorg/owasp/html/l;->pos:I

    .line 853
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    if-ge v1, v5, :cond_1

    .line 857
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 858
    const/16 v2, 0x20

    if-eq v1, v2, :cond_9

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    invoke-static {v1}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    :cond_9
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 841
    :cond_a
    add-int/lit8 v0, v2, -0x57

    goto :goto_1

    .line 864
    :cond_b
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    move v0, v1

    .line 865
    goto :goto_0
.end method

.method private abO()Lorg/owasp/html/CssTokens$TokenType;
    .locals 13

    .prologue
    .line 910
    iget-object v8, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 911
    iget v9, p0, Lorg/owasp/html/l;->cHc:I

    .line 912
    const/4 v1, 0x1

    .line 913
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    .line 914
    if-ge v0, v9, :cond_1

    .line 915
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 916
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    .line 917
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v6, v0

    .line 922
    :goto_0
    if-ge v6, v9, :cond_3

    .line 923
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 924
    const/16 v3, 0x30

    if-gt v3, v2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    .line 925
    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v1, 0x0

    .line 922
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 930
    :cond_3
    if-ge v6, v9, :cond_20

    const/16 v2, 0x2e

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_20

    .line 931
    add-int/lit8 v3, v6, 0x1

    .line 932
    :goto_1
    if-ge v3, v9, :cond_5

    .line 933
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 934
    const/16 v4, 0x30

    if-gt v4, v2, :cond_5

    const/16 v4, 0x39

    if-gt v2, v4, :cond_5

    .line 935
    const/16 v4, 0x30

    if-eq v2, v4, :cond_4

    const/4 v1, 0x0

    .line 932
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v7, v1

    .line 941
    :goto_2
    const/4 v2, 0x1

    .line 942
    if-ge v3, v9, :cond_1f

    const/16 v1, 0x65

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/lit8 v4, v4, 0x20

    if-ne v1, v4, :cond_1f

    .line 944
    add-int/lit8 v1, v3, 0x1

    .line 945
    if-ge v1, v9, :cond_7

    .line 946
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 947
    const/16 v5, 0x2b

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    :cond_7
    move v4, v1

    .line 950
    :goto_3
    if-ge v4, v9, :cond_9

    .line 951
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 952
    const/16 v10, 0x30

    if-gt v10, v5, :cond_9

    const/16 v10, 0x39

    if-gt v5, v10, :cond_9

    .line 953
    const/16 v10, 0x30

    if-eq v5, v10, :cond_8

    const/4 v2, 0x0

    .line 950
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 962
    :cond_9
    if-ne v4, v1, :cond_1e

    .line 964
    const/4 v2, 0x1

    move v1, v3

    move v4, v3

    :goto_4
    move v5, v1

    .line 971
    :goto_5
    if-ge v5, v9, :cond_b

    .line 972
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 973
    const/16 v11, 0x20

    if-eq v10, v11, :cond_a

    invoke-static {v10}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 974
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 978
    goto :goto_5

    .line 980
    :cond_b
    iget-object v10, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lorg/owasp/html/CssTokens;->gd(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 981
    iget-object v10, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 986
    :cond_c
    iget v10, p0, Lorg/owasp/html/l;->pos:I

    if-eq v0, v10, :cond_d

    const/16 v10, 0x2d

    iget v11, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_d

    if-nez v7, :cond_d

    .line 987
    iget-object v10, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    :cond_d
    if-eqz v7, :cond_10

    .line 990
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    :cond_e
    :goto_6
    if-ge v5, v9, :cond_17

    const/16 v0, 0x25

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_17

    .line 1022
    add-int/lit8 v1, v5, 0x1

    .line 1023
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHv:Lorg/owasp/html/CssTokens$TokenType;

    .line 1024
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1051
    :goto_7
    iput v1, p0, Lorg/owasp/html/l;->pos:I

    .line 1052
    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHv:Lorg/owasp/html/CssTokens$TokenType;

    if-eq v0, v1, :cond_f

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    if-ge v1, v9, :cond_f

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_f

    .line 1054
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1056
    :cond_f
    return-object v0

    .line 994
    :cond_10
    :goto_8
    if-ge v0, v6, :cond_11

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-ne v7, v10, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 996
    :cond_11
    :goto_9
    if-le v3, v6, :cond_12

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-ne v7, v10, :cond_12

    .line 997
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 999
    :cond_12
    if-ne v0, v6, :cond_15

    .line 1000
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    :goto_a
    add-int/lit8 v0, v6, 0x1

    if-le v3, v0, :cond_13

    .line 1005
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1007
    :cond_13
    if-nez v2, :cond_e

    .line 1008
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    const/16 v0, 0x2d

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    :cond_14
    :goto_b
    if-ge v4, v1, :cond_16

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_16

    .line 1013
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1002
    :cond_15
    iget-object v7, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1015
    :cond_16
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 1027
    :cond_17
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1028
    iput v5, p0, Lorg/owasp/html/l;->pos:I

    .line 1029
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/owasp/html/l;->ct(Z)V

    .line 1030
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1031
    iget-object v3, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v2}, Lorg/owasp/html/CssTokens;->e(Ljava/lang/CharSequence;II)Z

    move-result v3

    .line 1033
    if-eq v5, v1, :cond_18

    if-eqz v3, :cond_1b

    .line 1035
    :cond_18
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    .line 1037
    :goto_c
    if-ge v0, v2, :cond_1a

    .line 1038
    iget-object v4, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 1039
    const/16 v6, 0x41

    if-gt v6, v4, :cond_19

    const/16 v6, 0x5a

    if-gt v4, v6, :cond_19

    iget-object v6, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    or-int/lit8 v4, v4, 0x20

    int-to-char v4, v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1037
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    move v0, v5

    .line 1045
    :goto_d
    if-ne v0, v1, :cond_1c

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHu:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_7

    .line 1043
    :cond_1b
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    goto :goto_d

    .line 1045
    :cond_1c
    if-eqz v3, :cond_1d

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHw:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_7

    :cond_1d
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHx:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_7

    :cond_1e
    move v12, v4

    move v4, v1

    move v1, v12

    goto/16 :goto_4

    :cond_1f
    move v1, v3

    move v4, v3

    goto/16 :goto_4

    :cond_20
    move v3, v6

    move v7, v1

    goto/16 :goto_2
.end method

.method private abP()Lorg/owasp/html/CssTokens$TokenType;
    .locals 14

    .prologue
    .line 1060
    iget-object v3, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 1061
    iget v4, p0, Lorg/owasp/html/l;->cHc:I

    .line 1063
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1064
    sget-boolean v0, Lorg/owasp/html/l;->vb:Z

    if-nez v0, :cond_0

    const/16 v0, 0x22

    if-eq v5, v0, :cond_0

    const/16 v0, 0x27

    if-eq v5, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1065
    :cond_0
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1066
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1067
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1068
    const/4 v0, -0x1

    .line 1069
    const/4 v2, 0x0

    .line 1070
    :goto_0
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    if-ge v1, v4, :cond_b

    .line 1071
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1072
    if-ne v1, v5, :cond_1

    .line 1073
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1074
    const/4 v0, 0x1

    .line 1102
    :goto_1
    if-eqz v0, :cond_a

    .line 1103
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHr:Lorg/owasp/html/CssTokens$TokenType;

    .line 1108
    :goto_2
    return-object v0

    .line 1077
    :cond_1
    invoke-static {v1}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1079
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    .line 1080
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_3

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x2

    if-ge v1, v4, :cond_2

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0xd

    if-ne v1, v7, :cond_2

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0xa

    if-ne v1, v7, :cond_2

    .line 1085
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 1087
    :cond_2
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_0

    .line 1091
    :cond_3
    invoke-direct {p0}, Lorg/owasp/html/l;->abN()I

    move-result v1

    .line 1092
    if-gez v1, :cond_5

    move v0, v2

    .line 1093
    goto :goto_1

    .line 1097
    :cond_4
    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/owasp/html/l;->pos:I

    .line 1099
    :cond_5
    sparse-switch v1, :sswitch_data_0

    if-ltz v0, :cond_9

    const/16 v7, 0x3f

    if-ge v0, v7, :cond_9

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v0

    const-wide v12, 0x500000c400003401L    # 2.3162746622840404E77

    and-long/2addr v10, v12

    cmp-long v0, v8, v10

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    const/16 v0, 0x20

    if-eq v1, v0, :cond_7

    const/16 v0, 0x9

    if-eq v1, v0, :cond_7

    const/16 v0, 0x30

    if-gt v0, v1, :cond_6

    const/16 v0, 0x39

    if-le v1, v0, :cond_7

    :cond_6
    const/16 v0, 0x61

    or-int/lit8 v7, v1, 0x20

    if-gt v0, v7, :cond_8

    or-int/lit8 v0, v1, 0x20

    const/16 v7, 0x66

    if-gt v0, v7, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    .line 1101
    goto/16 :goto_0

    .line 1099
    :sswitch_0
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\\\"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_1
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_2
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\a"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_3
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\c"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_4
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\d"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_5
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\22"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_6
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\26"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_7
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\27"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_8
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\3c"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_9
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "\\3e"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_a
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1106
    :cond_a
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1107
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 1108
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_1

    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_5
        0x26 -> :sswitch_6
        0x27 -> :sswitch_7
        0x2d -> :sswitch_a
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private abQ()Lorg/owasp/html/CssTokens$TokenType;
    .locals 3

    .prologue
    .line 1113
    sget-boolean v0, Lorg/owasp/html/l;->vb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1114
    :cond_0
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1115
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1116
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/owasp/html/l;->ct(Z)V

    .line 1117
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    if-ne v1, v0, :cond_2

    .line 1118
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1119
    const/4 v0, 0x0

    .line 1128
    :goto_0
    return-object v0

    .line 1121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v1, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v1, :cond_5

    .line 1122
    iget-object v1, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    .line 1123
    const/16 v2, 0x30

    if-gt v2, v1, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_3
    const/16 v2, 0x61

    if-gt v2, v1, :cond_4

    const/16 v2, 0x66

    if-le v1, v2, :cond_1

    .line 1125
    :cond_4
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHp:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_0

    .line 1128
    :cond_5
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHq:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_0
.end method

.method private abR()Z
    .locals 12

    .prologue
    const/16 v11, 0x2d

    const/4 v1, 0x1

    const/4 v10, 0x6

    const/4 v0, 0x0

    .line 1132
    iget-object v4, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 1133
    iget v5, p0, Lorg/owasp/html/l;->cHc:I

    .line 1135
    sget-boolean v2, Lorg/owasp/html/l;->vb:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    if-ge v2, v5, :cond_0

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/lit8 v2, v2, 0x20

    const/16 v3, 0x75

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1137
    :cond_1
    iget v6, p0, Lorg/owasp/html/l;->pos:I

    .line 1138
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1139
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/owasp/html/l;->pos:I

    .line 1143
    :try_start_0
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    .line 1201
    :cond_2
    iput v6, p0, Lorg/owasp/html/l;->pos:I

    .line 1203
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1206
    :goto_0
    return v0

    .line 1146
    :cond_3
    :try_start_1
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/owasp/html/l;->pos:I

    .line 1147
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v3, "U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    .line 1149
    :goto_1
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v5, :cond_6

    if-ge v2, v10, :cond_6

    .line 1150
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 1151
    const/16 v8, 0x30

    if-gt v8, v3, :cond_4

    const/16 v8, 0x39

    if-le v3, v8, :cond_5

    :cond_4
    const/16 v8, 0x61

    if-gt v8, v3, :cond_6

    const/16 v8, 0x66

    if-gt v3, v8, :cond_6

    .line 1153
    :cond_5
    iget-object v8, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1154
    add-int/lit8 v2, v2, 0x1

    .line 1155
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1202
    :catchall_0
    move-exception v0

    iput v6, p0, Lorg/owasp/html/l;->pos:I

    .line 1203
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0

    .line 1160
    :cond_6
    if-nez v2, :cond_7

    .line 1201
    iput v6, p0, Lorg/owasp/html/l;->pos:I

    .line 1203
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_7
    move v3, v2

    move v2, v0

    .line 1164
    :goto_2
    :try_start_2
    iget v8, p0, Lorg/owasp/html/l;->pos:I

    if-ge v8, v5, :cond_8

    if-ge v3, v10, :cond_8

    iget v8, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3f

    if-ne v8, v9, :cond_8

    .line 1166
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    add-int/lit8 v2, v3, 0x1

    .line 1168
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v2

    move v2, v1

    goto :goto_2

    .line 1170
    :cond_8
    if-nez v3, :cond_9

    .line 1201
    iput v6, p0, Lorg/owasp/html/l;->pos:I

    .line 1203
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 1173
    :cond_9
    :try_start_3
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v5, :cond_d

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_d

    .line 1174
    if-nez v2, :cond_e

    .line 1176
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/owasp/html/l;->pos:I

    .line 1177
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1179
    :goto_3
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    if-ge v2, v5, :cond_c

    if-ge v0, v10, :cond_c

    .line 1180
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 1181
    const/16 v3, 0x30

    if-gt v3, v2, :cond_a

    const/16 v3, 0x39

    if-le v2, v3, :cond_b

    :cond_a
    const/16 v3, 0x61

    if-gt v3, v2, :cond_c

    const/16 v3, 0x66

    if-gt v2, v3, :cond_c

    .line 1183
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 1184
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    .line 1185
    iget-object v3, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1190
    :cond_c
    if-nez v0, :cond_d

    .line 1192
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1193
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    :goto_4
    move v0, v1

    .line 1201
    goto/16 :goto_0

    .line 1196
    :cond_e
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private abS()Lorg/owasp/html/CssTokens$TokenType;
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x28

    const/16 v14, 0x20

    const/4 v2, 0x0

    const/16 v13, 0x25

    .line 1210
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1211
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1212
    invoke-direct {p0, v2}, Lorg/owasp/html/l;->ct(Z)V

    .line 1213
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    .line 1244
    :goto_0
    return-object v0

    .line 1214
    :cond_0
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    iget v3, p0, Lorg/owasp/html/l;->cHc:I

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v3, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v1

    .line 1215
    :goto_1
    iget-object v3, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_15

    const/16 v3, 0x75

    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    or-int/lit8 v5, v5, 0x20

    if-ne v3, v5, :cond_15

    const/16 v3, 0x72

    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    or-int/lit8 v5, v5, 0x20

    if-ne v3, v5, :cond_15

    const/16 v3, 0x6c

    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    or-int/lit8 v5, v5, 0x20

    if-ne v3, v5, :cond_15

    .line 1219
    if-eqz v0, :cond_14

    iget-object v5, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v6, p0, Lorg/owasp/html/l;->cHc:I

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_1
    :goto_2
    if-eqz v2, :cond_14

    .line 1220
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v1, 0x75

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1221
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1222
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v4, 0x2

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1223
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHs:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1214
    goto :goto_1

    .line 1219
    :cond_3
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    :goto_3
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v6, :cond_5

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_4

    invoke-static {v0}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v6, :cond_1

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v6, :cond_9

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v3, 0x22

    if-eq v0, v3, :cond_6

    const/16 v3, 0x27

    if-ne v0, v3, :cond_a

    :cond_6
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/owasp/html/l;->pos:I

    :goto_5
    iget-object v3, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v7, "(\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v6, :cond_7

    invoke-direct {p0}, Lorg/owasp/html/l;->abT()I

    move-result v3

    if-eqz v0, :cond_b

    if-ne v3, v0, :cond_c

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    :cond_7
    :goto_7
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v6, :cond_12

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_8

    invoke-static {v0}, Lorg/owasp/html/CssTokens;->m(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    if-le v3, v14, :cond_7

    const/16 v7, 0x29

    if-eq v3, v7, :cond_7

    :cond_c
    const/16 v7, 0x5c

    if-ne v3, v7, :cond_d

    invoke-direct {p0}, Lorg/owasp/html/l;->abN()I

    move-result v3

    if-ltz v3, :cond_1

    :goto_8
    invoke-static {}, Lorg/owasp/html/CssTokens;->abH()[Z

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_e

    invoke-static {}, Lorg/owasp/html/CssTokens;->abH()[Z

    move-result-object v7

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_8

    :cond_e
    const/16 v7, 0x80

    if-ge v3, v7, :cond_f

    iget-object v7, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v8, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_f
    const/16 v7, 0x800

    if-ge v3, v7, :cond_10

    ushr-int/lit8 v7, v3, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    iget-object v8, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v9

    ushr-int/lit8 v10, v7, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v9

    ushr-int/lit8 v7, v7, 0x0

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v9, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v8, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_11

    ushr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    ushr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    iget-object v9, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v10

    ushr-int/lit8 v11, v7, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v10

    ushr-int/lit8 v7, v7, 0x0

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v10, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v9

    ushr-int/lit8 v10, v8, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v9

    ushr-int/lit8 v8, v8, 0x0

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v8, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    ushr-int/lit8 v7, v3, 0x12

    and-int/lit8 v7, v7, 0x7

    or-int/lit16 v7, v7, 0xf0

    ushr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    ushr-int/lit8 v9, v3, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    iget-object v10, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v11

    ushr-int/lit8 v12, v7, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v11

    ushr-int/lit8 v7, v7, 0x0

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v11, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v10

    ushr-int/lit8 v11, v8, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v10

    ushr-int/lit8 v8, v8, 0x0

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v10, v9, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v9, v9, 0x0

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/owasp/html/CssTokens;->abI()[C

    move-result-object v8

    ushr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v8, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_12
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v6, :cond_13

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_13

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    :cond_13
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto/16 :goto_2

    .line 1225
    :cond_14
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1226
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 1227
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_0

    .line 1229
    :cond_15
    if-eqz v0, :cond_16

    .line 1230
    invoke-direct {p0, v7}, Lorg/owasp/html/l;->n(C)Lorg/owasp/html/CssTokens$TokenType;

    .line 1231
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 1232
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHn:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_0

    .line 1234
    :cond_16
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/owasp/html/l;->cHc:I

    if-ge v0, v1, :cond_17

    const/16 v0, 0x2e

    iget-object v1, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1239
    iget-object v0, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v1, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1240
    const/16 v1, 0x30

    if-gt v1, v0, :cond_17

    const/16 v1, 0x39

    if-gt v0, v1, :cond_17

    .line 1241
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    :cond_17
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHl:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_0
.end method

.method private abT()I
    .locals 4

    .prologue
    .line 1358
    iget-object v1, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 1359
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1360
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/owasp/html/l;->cHc:I

    if-ge v2, v3, :cond_0

    .line 1361
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1362
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1363
    iget v2, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/owasp/html/l;->pos:I

    .line 1364
    const/high16 v2, 0x10000

    const v3, 0xd800

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    const v3, 0xdc00

    sub-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1367
    :cond_0
    return v0
.end method

.method private av(II)V
    .locals 1

    .prologue
    .line 653
    :goto_0
    if-ge p1, p2, :cond_0

    .line 655
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 660
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    .line 662
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/owasp/html/l;->a(Lorg/owasp/html/CssTokens$TokenType;I)V

    .line 653
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 656
    :sswitch_0
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 657
    :sswitch_1
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHK:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 658
    :sswitch_2
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHI:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 659
    :sswitch_3
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHG:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 664
    :cond_0
    return-void

    .line 655
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x29 -> :sswitch_2
        0x5d -> :sswitch_3
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private ct(Z)V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 775
    iget v4, p0, Lorg/owasp/html/l;->cHc:I

    .line 776
    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 778
    iget v6, p0, Lorg/owasp/html/l;->pos:I

    move v1, v2

    .line 779
    :goto_0
    iget v3, p0, Lorg/owasp/html/l;->pos:I

    if-ge v3, v4, :cond_1

    .line 780
    iget v7, p0, Lorg/owasp/html/l;->pos:I

    .line 782
    invoke-direct {p0}, Lorg/owasp/html/l;->abT()I

    move-result v3

    .line 783
    const/16 v8, 0x5c

    if-ne v3, v8, :cond_2

    .line 784
    invoke-direct {p0}, Lorg/owasp/html/l;->abN()I

    move-result v3

    .line 789
    :goto_1
    if-ltz v3, :cond_4

    invoke-static {v3}, Lorg/owasp/html/CssTokens;->gd(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 790
    if-nez p1, :cond_3

    const/4 v7, 0x2

    if-ge v0, v7, :cond_3

    const/16 v7, 0x30

    if-gt v7, v3, :cond_3

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3

    .line 794
    const/16 v7, 0x2d

    if-eq v1, v7, :cond_0

    if-ne v1, v2, :cond_3

    .line 795
    :cond_0
    iput v6, p0, Lorg/owasp/html/l;->pos:I

    .line 796
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 807
    :cond_1
    :goto_2
    return-void

    .line 786
    :cond_2
    iget v8, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_1

    .line 800
    :cond_3
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 802
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 804
    :cond_4
    iput v7, p0, Lorg/owasp/html/l;->pos:I

    goto :goto_2
.end method

.method private gf(I)V
    .locals 6

    .prologue
    .line 370
    iget v0, p0, Lorg/owasp/html/l;->cHh:I

    sub-int/2addr v0, p1

    .line 371
    iget-object v1, p0, Lorg/owasp/html/l;->cHa:[I

    iget v2, p0, Lorg/owasp/html/l;->cHf:I

    invoke-static {v1, v2, v0}, Lorg/owasp/html/CssTokens;->b([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/l;->cHa:[I

    .line 373
    iget v0, p0, Lorg/owasp/html/l;->cHe:I

    .line 374
    :goto_0
    iget v1, p0, Lorg/owasp/html/l;->cHh:I

    if-le v1, p1, :cond_0

    .line 376
    iget-object v1, p0, Lorg/owasp/html/l;->cHg:[I

    iget v2, p0, Lorg/owasp/html/l;->cHh:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/owasp/html/l;->cHh:I

    aget v1, v1, v2

    .line 377
    iget-object v2, p0, Lorg/owasp/html/l;->cHg:[I

    iget v3, p0, Lorg/owasp/html/l;->cHh:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/owasp/html/l;->cHh:I

    aget v2, v2, v3

    .line 378
    iget-object v3, p0, Lorg/owasp/html/l;->cHa:[I

    aget v3, v3, v2

    .line 380
    iget-object v4, p0, Lorg/owasp/html/l;->cHa:[I

    add-int/lit8 v2, v2, 0x1

    aput v0, v4, v2

    .line 382
    iget-object v2, p0, Lorg/owasp/html/l;->cHa:[I

    iget v4, p0, Lorg/owasp/html/l;->cHf:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/owasp/html/l;->cHf:I

    aput v0, v2, v4

    .line 383
    iget-object v2, p0, Lorg/owasp/html/l;->cHa:[I

    iget v4, p0, Lorg/owasp/html/l;->cHf:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/owasp/html/l;->cHf:I

    aput v3, v2, v4

    .line 384
    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v0, v0, 0x1

    .line 386
    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method private n(C)Lorg/owasp/html/CssTokens$TokenType;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 338
    sparse-switch p1, :sswitch_data_0

    .line 343
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid open bracket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 339
    :sswitch_0
    const/16 v1, 0x29

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHH:Lorg/owasp/html/CssTokens$TokenType;

    .line 345
    :goto_0
    iget-object v2, p0, Lorg/owasp/html/l;->cHa:[I

    iget v3, p0, Lorg/owasp/html/l;->cHf:I

    invoke-static {v2, v3, v4}, Lorg/owasp/html/CssTokens;->b([III)[I

    move-result-object v2

    iput-object v2, p0, Lorg/owasp/html/l;->cHa:[I

    .line 346
    iget-object v2, p0, Lorg/owasp/html/l;->cHg:[I

    iget v3, p0, Lorg/owasp/html/l;->cHh:I

    invoke-static {v2, v3, v4}, Lorg/owasp/html/CssTokens;->b([III)[I

    move-result-object v2

    iput-object v2, p0, Lorg/owasp/html/l;->cHg:[I

    .line 347
    iget-object v2, p0, Lorg/owasp/html/l;->cHg:[I

    iget v3, p0, Lorg/owasp/html/l;->cHh:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/owasp/html/l;->cHh:I

    iget v4, p0, Lorg/owasp/html/l;->cHf:I

    aput v4, v2, v3

    .line 348
    iget-object v2, p0, Lorg/owasp/html/l;->cHg:[I

    iget v3, p0, Lorg/owasp/html/l;->cHh:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/owasp/html/l;->cHh:I

    aput v1, v2, v3

    .line 349
    iget-object v1, p0, Lorg/owasp/html/l;->cHa:[I

    iget v2, p0, Lorg/owasp/html/l;->cHf:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/owasp/html/l;->cHf:I

    iget v3, p0, Lorg/owasp/html/l;->cHe:I

    aput v3, v1, v2

    .line 350
    iget-object v1, p0, Lorg/owasp/html/l;->cHa:[I

    iget v2, p0, Lorg/owasp/html/l;->cHf:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/owasp/html/l;->cHf:I

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 351
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    return-object v0

    .line 340
    :sswitch_1
    const/16 v1, 0x5d

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHF:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_0

    .line 341
    :sswitch_2
    const/16 v1, 0x7d

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHJ:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_0

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_2
    .end sparse-switch
.end method

.method private o(C)V
    .locals 3

    .prologue
    .line 356
    iget v0, p0, Lorg/owasp/html/l;->cHh:I

    .line 358
    :cond_0
    if-nez v0, :cond_1

    .line 360
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_1
    add-int/lit8 v0, v0, -0x2

    .line 364
    iget-object v1, p0, Lorg/owasp/html/l;->cHg:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 365
    invoke-direct {p0, v0}, Lorg/owasp/html/l;->gf(I)V

    goto :goto_0
.end method

.method private p(C)V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    sparse-switch p1, :sswitch_data_0

    .line 682
    :goto_0
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 687
    return-void

    .line 681
    :sswitch_0
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method final abJ()Lorg/owasp/html/CssTokens;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 393
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->gf(I)V

    .line 394
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/owasp/html/l;->av(II)V

    .line 397
    iget-object v0, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/owasp/html/CssTokens;->abF()Lorg/owasp/html/CssTokens;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/l;->cHa:[I

    iget v1, p0, Lorg/owasp/html/l;->cHf:I

    invoke-static {v0, v1}, Lorg/owasp/html/CssTokens;->b([II)[I

    move-result-object v6

    .line 402
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 403
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 404
    add-int/lit8 v0, v0, -0x1

    .line 405
    iget-object v1, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    iget v2, p0, Lorg/owasp/html/l;->cHe:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/owasp/html/l;->cHe:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 407
    :cond_1
    iget-object v1, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v2, p0, Lorg/owasp/html/l;->cHe:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/owasp/html/CssTokens;->b([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    .line 412
    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v2, p0, Lorg/owasp/html/l;->cHe:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/owasp/html/l;->cHe:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, v0, v2

    .line 414
    iget-object v0, p0, Lorg/owasp/html/l;->cGR:[I

    iget v2, p0, Lorg/owasp/html/l;->cHe:I

    invoke-static {v0, v2}, Lorg/owasp/html/CssTokens;->b([II)[I

    move-result-object v3

    .line 415
    iget-object v0, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    invoke-static {}, Lorg/owasp/html/CssTokens;->abG()[Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/owasp/html/CssTokens$TokenType;

    .line 417
    new-instance v0, Lorg/owasp/html/CssTokens;

    new-instance v2, Lorg/owasp/html/k;

    invoke-direct {v2, v6, v5}, Lorg/owasp/html/k;-><init>([IB)V

    invoke-direct/range {v0 .. v5}, Lorg/owasp/html/CssTokens;-><init>(Ljava/lang/String;Lorg/owasp/html/k;[I[Lorg/owasp/html/CssTokens$TokenType;B)V

    goto :goto_0
.end method

.method final abK()V
    .locals 13

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x3d

    const/16 v10, 0x2e

    const/16 v9, 0x20

    const/4 v1, 0x0

    .line 424
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    .line 425
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 426
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    iget v2, p0, Lorg/owasp/html/l;->cHc:I

    if-ne v0, v2, :cond_1

    .line 649
    :cond_0
    return-void

    .line 428
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    .line 430
    iget-object v3, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    .line 431
    iget v4, p0, Lorg/owasp/html/l;->cHc:I

    .line 432
    :cond_2
    :goto_0
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    if-ge v0, v4, :cond_0

    .line 434
    sget-boolean v0, Lorg/owasp/html/l;->vb:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/owasp/html/l;->cHe:I

    iget-object v2, p0, Lorg/owasp/html/l;->cHd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token and types out of sync at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/owasp/html/l;->cHe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 448
    :cond_3
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 449
    iget v6, p0, Lorg/owasp/html/l;->pos:I

    .line 450
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 452
    sparse-switch v5, :sswitch_data_0

    .line 604
    or-int/lit8 v0, v5, 0x20

    .line 605
    const/16 v7, 0x61

    if-gt v7, v0, :cond_4

    const/16 v7, 0x7a

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v0, 0x80

    if-lt v5, v0, :cond_1b

    .line 606
    :cond_5
    invoke-direct {p0}, Lorg/owasp/html/l;->abS()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_1a

    .line 623
    :cond_6
    :goto_1
    sget-boolean v5, Lorg/owasp/html/l;->vb:Z

    if-nez v5, :cond_1d

    iget v5, p0, Lorg/owasp/html/l;->pos:I

    if-gt v5, v6, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "empty token at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ch0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 454
    :sswitch_0
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    .line 455
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 458
    :sswitch_1
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_8

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 459
    :goto_2
    const/16 v7, 0x2f

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2a

    if-ne v0, v7, :cond_9

    .line 460
    :cond_7
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    .line 461
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    :cond_8
    move v0, v1

    .line 458
    goto :goto_2

    .line 463
    :cond_9
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    .line 464
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 469
    :sswitch_2
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 470
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 472
    :cond_a
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/owasp/html/l;->p(C)V

    .line 473
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto :goto_1

    .line 477
    :sswitch_3
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 478
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    .line 480
    iget v5, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/owasp/html/l;->pos:I

    goto/16 :goto_1

    .line 483
    :sswitch_4
    sget-boolean v0, Lorg/owasp/html/l;->vb:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/owasp/html/l;->cHb:Ljava/lang/String;

    iget v7, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v7, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/owasp/html/l;->pos:I

    invoke-direct {p0, v1}, Lorg/owasp/html/l;->ct(Z)V

    iget v8, p0, Lorg/owasp/html/l;->pos:I

    if-ne v8, v7, :cond_c

    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/owasp/html/l;->pos:I

    iget-object v7, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    :goto_3
    if-eqz v0, :cond_d

    .line 484
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHo:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 483
    :cond_c
    const/4 v0, 0x1

    goto :goto_3

    .line 486
    :cond_d
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    .line 487
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 491
    :sswitch_5
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {p0}, Lorg/owasp/html/l;->abQ()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    .line 493
    if-nez v0, :cond_6

    .line 496
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 497
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 504
    :sswitch_6
    invoke-direct {p0}, Lorg/owasp/html/l;->abP()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    .line 508
    :sswitch_7
    invoke-direct {p0}, Lorg/owasp/html/l;->abR()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 509
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHy:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 511
    :cond_e
    invoke-direct {p0}, Lorg/owasp/html/l;->abS()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    .line 516
    :sswitch_8
    invoke-direct {p0}, Lorg/owasp/html/l;->abO()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    .line 519
    :sswitch_9
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_10

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 520
    :goto_4
    invoke-static {v0}, Lorg/owasp/html/CssTokens;->l(C)Z

    move-result v7

    if-nez v7, :cond_f

    if-ne v0, v10, :cond_11

    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, 0x2

    if-ge v7, v4, :cond_11

    iget v7, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/owasp/html/CssTokens;->l(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 523
    :cond_f
    invoke-direct {p0}, Lorg/owasp/html/l;->abO()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    move v0, v1

    .line 519
    goto :goto_4

    .line 524
    :cond_11
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_12

    .line 525
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    .line 526
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 527
    :cond_12
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_14

    .line 528
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 529
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 531
    :cond_13
    invoke-direct {p0}, Lorg/owasp/html/l;->abS()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    .line 533
    :cond_14
    invoke-static {v0}, Lorg/owasp/html/CssTokens;->gd(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 535
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 537
    invoke-direct {p0, v1}, Lorg/owasp/html/l;->ct(Z)V

    .line 538
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v5, v6, 0x1

    if-eq v0, v5, :cond_15

    .line 539
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHm:Lorg/owasp/html/CssTokens$TokenType;

    .line 540
    iget v5, p0, Lorg/owasp/html/l;->pos:I

    if-ge v5, v4, :cond_6

    .line 541
    iget v5, p0, Lorg/owasp/html/l;->pos:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 542
    const/16 v7, 0x28

    if-ne v7, v5, :cond_6

    .line 545
    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 549
    :cond_15
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    .line 550
    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 553
    :cond_16
    invoke-direct {p0, v10}, Lorg/owasp/html/l;->p(C)V

    .line 554
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 558
    :sswitch_a
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHC:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 559
    :sswitch_b
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHD:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 560
    :sswitch_c
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHE:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 562
    :sswitch_d
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->n(C)Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    .line 563
    iget v5, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/owasp/html/l;->pos:I

    goto/16 :goto_1

    .line 566
    :sswitch_e
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->o(C)V

    .line 567
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 571
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 574
    :sswitch_f
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_17

    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 575
    :goto_5
    if-ne v0, v11, :cond_18

    .line 576
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHz:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    :cond_17
    move v0, v1

    .line 574
    goto :goto_5

    .line 578
    :cond_18
    const/16 v7, 0x7c

    if-ne v5, v7, :cond_19

    const/16 v7, 0x7c

    if-ne v0, v7, :cond_19

    .line 579
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    const-string v5, "||"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHA:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 582
    :cond_19
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    .line 583
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 588
    :sswitch_10
    invoke-direct {p0}, Lorg/owasp/html/l;->abS()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    goto/16 :goto_1

    .line 592
    :sswitch_11
    invoke-direct {p0}, Lorg/owasp/html/l;->abS()Lorg/owasp/html/CssTokens$TokenType;

    move-result-object v0

    .line 593
    if-nez v0, :cond_6

    .line 594
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 595
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 596
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 610
    :cond_1a
    iget v0, p0, Lorg/owasp/html/l;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/owasp/html/l;->pos:I

    .line 611
    invoke-direct {p0}, Lorg/owasp/html/l;->abM()V

    .line 612
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 614
    :cond_1b
    if-le v5, v9, :cond_1c

    .line 615
    invoke-direct {p0, v5}, Lorg/owasp/html/l;->p(C)V

    .line 616
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 618
    :cond_1c
    invoke-direct {p0}, Lorg/owasp/html/l;->abL()Z

    .line 619
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    goto/16 :goto_1

    .line 625
    :cond_1d
    iget-object v5, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 626
    if-le v5, v2, :cond_2

    .line 627
    sget-object v6, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    if-ne v0, v6, :cond_1e

    .line 628
    invoke-direct {p0, v2, v5}, Lorg/owasp/html/l;->av(II)V

    goto/16 :goto_0

    .line 630
    :cond_1e
    sget-object v6, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    if-eq v0, v6, :cond_1f

    iget-object v6, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_1f

    .line 632
    sget-object v6, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    invoke-direct {p0, v6, v2}, Lorg/owasp/html/l;->a(Lorg/owasp/html/CssTokens$TokenType;I)V

    .line 633
    add-int/lit8 v2, v2, 0x1

    .line 634
    sget-boolean v6, Lorg/owasp/html/l;->vb:Z

    if-nez v6, :cond_1f

    if-ne v2, v5, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 636
    :cond_1f
    invoke-direct {p0, v0, v2}, Lorg/owasp/html/l;->a(Lorg/owasp/html/CssTokens$TokenType;I)V

    .line 639
    sget-object v5, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    if-eq v0, v5, :cond_2

    .line 640
    iget-object v0, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 641
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lorg/owasp/html/l;->ajV:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_2

    .line 643
    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Lorg/owasp/html/l;->a(Lorg/owasp/html/CssTokens$TokenType;I)V

    goto/16 :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_6
        0x23 -> :sswitch_5
        0x24 -> :sswitch_f
        0x27 -> :sswitch_6
        0x28 -> :sswitch_d
        0x29 -> :sswitch_e
        0x2a -> :sswitch_f
        0x2b -> :sswitch_9
        0x2c -> :sswitch_c
        0x2d -> :sswitch_9
        0x2e -> :sswitch_9
        0x2f -> :sswitch_1
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x3a -> :sswitch_a
        0x3b -> :sswitch_b
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
        0x40 -> :sswitch_4
        0x55 -> :sswitch_7
        0x5b -> :sswitch_d
        0x5c -> :sswitch_11
        0x5d -> :sswitch_e
        0x5e -> :sswitch_f
        0x5f -> :sswitch_10
        0x75 -> :sswitch_7
        0x7b -> :sswitch_d
        0x7c -> :sswitch_f
        0x7d -> :sswitch_e
        0x7e -> :sswitch_f
        0xfeff -> :sswitch_0
    .end sparse-switch
.end method
