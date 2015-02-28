.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final im:[I

.field private static final io:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/aI;",
            ">;"
        }
    .end annotation
.end field

.field private static final ip:Landroid/view/animation/Interpolator;

.field private static final jn:Landroid/support/v4/view/aQ;


# instance fields
.field private aC:Z

.field private hT:Landroid/view/VelocityTracker;

.field private iA:I

.field private iB:Landroid/graphics/drawable/Drawable;

.field private iC:I

.field private iD:I

.field private iE:F

.field private iF:F

.field private iG:I

.field private iH:I

.field private iI:Z

.field private iJ:Z

.field private iK:I

.field private iL:Z

.field private iM:Z

.field private iN:I

.field private iO:I

.field private iP:I

.field private iQ:F

.field private iR:F

.field private iS:F

.field private iT:F

.field private iU:I

.field private iV:I

.field private iW:I

.field private iX:I

.field private iY:I

.field private iZ:Z

.field private in:I

.field private final iq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/aI;",
            ">;"
        }
    .end annotation
.end field

.field private final ir:Landroid/support/v4/view/aI;

.field private final is:Landroid/graphics/Rect;

.field private it:Landroid/support/v4/view/U;

.field private iu:I

.field private iv:I

.field private iw:Landroid/os/Parcelable;

.field private ix:Ljava/lang/ClassLoader;

.field private iy:Landroid/widget/Scroller;

.field private iz:Landroid/support/v4/view/aO;

.field private ja:Landroid/support/v4/widget/s;

.field private jb:Landroid/support/v4/widget/s;

.field private jc:Z

.field private jd:Z

.field private je:Z

.field private jf:I

.field private jg:Landroid/support/v4/view/aM;

.field private jh:Landroid/support/v4/view/aM;

.field private ji:Landroid/support/v4/view/aL;

.field private jj:Landroid/support/v4/view/aN;

.field private jk:Ljava/lang/reflect/Method;

.field private jl:I

.field private jm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final jo:Ljava/lang/Runnable;

.field private jp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->im:[I

    .line 121
    new-instance v0, Landroid/support/v4/view/aE;

    invoke-direct {v0}, Landroid/support/v4/view/aE;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->io:Ljava/util/Comparator;

    .line 128
    new-instance v0, Landroid/support/v4/view/aF;

    invoke-direct {v0}, Landroid/support/v4/view/aF;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ip:Landroid/view/animation/Interpolator;

    .line 228
    new-instance v0, Landroid/support/v4/view/aQ;

    invoke-direct {v0}, Landroid/support/v4/view/aQ;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->jn:Landroid/support/v4/view/aQ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 349
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/aI;

    invoke-direct {v0}, Landroid/support/v4/view/aI;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ir:Landroid/support/v4/view/aI;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    .line 142
    iput v1, p0, Landroid/support/v4/view/ViewPager;->iv:I

    .line 143
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->iw:Landroid/os/Parcelable;

    .line 144
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->ix:Ljava/lang/ClassLoader;

    .line 156
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iE:F

    .line 157
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iF:F

    .line 166
    iput v3, p0, Landroid/support/v4/view/ViewPager;->iK:I

    .line 185
    iput v1, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 213
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->jd:Z

    .line 246
    new-instance v0, Landroid/support/v4/view/aG;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aG;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jo:Ljava/lang/Runnable;

    .line 253
    iput v2, p0, Landroid/support/v4/view/ViewPager;->jp:I

    .line 350
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ba()V

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/aI;

    invoke-direct {v0}, Landroid/support/v4/view/aI;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ir:Landroid/support/v4/view/aI;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    .line 142
    iput v1, p0, Landroid/support/v4/view/ViewPager;->iv:I

    .line 143
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->iw:Landroid/os/Parcelable;

    .line 144
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->ix:Ljava/lang/ClassLoader;

    .line 156
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iE:F

    .line 157
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iF:F

    .line 166
    iput v3, p0, Landroid/support/v4/view/ViewPager;->iK:I

    .line 185
    iput v1, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 213
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->jd:Z

    .line 246
    new-instance v0, Landroid/support/v4/view/aG;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aG;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jo:Ljava/lang/Runnable;

    .line 253
    iput v2, p0, Landroid/support/v4/view/ViewPager;->jp:I

    .line 355
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ba()V

    .line 356
    return-void
.end method

.method private A(I)V
    .locals 18

    .prologue
    .line 923
    const/4 v3, 0x0

    .line 924
    const/4 v2, 0x2

    .line 925
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->iu:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_21

    .line 926
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->iu:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_1

    const/16 v2, 0x42

    .line 927
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->iu:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->B(I)Landroid/support/v4/view/aI;

    move-result-object v3

    .line 928
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->iu:I

    move-object v4, v3

    move v3, v2

    .line 931
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-nez v2, :cond_2

    .line 932
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->bg()V

    .line 1108
    :cond_0
    :goto_2
    return-void

    .line 926
    :cond_1
    const/16 v2, 0x11

    goto :goto_0

    .line 940
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->iJ:Z

    if-eqz v2, :cond_3

    .line 942
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->bg()V

    goto :goto_2

    .line 949
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    .line 955
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->iK:I

    .line 956
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->iu:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v5}, Landroid/support/v4/view/U;->getCount()I

    move-result v12

    .line 958
    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->in:I

    if-eq v12, v2, :cond_4

    .line 963
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 967
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->in:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 965
    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 976
    :cond_4
    const/4 v6, 0x0

    .line 978
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_20

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    .line 980
    iget v7, v2, Landroid/support/v4/view/aI;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->iu:I

    if-lt v7, v8, :cond_6

    .line 981
    iget v7, v2, Landroid/support/v4/view/aI;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v7, v8, :cond_20

    .line 986
    :goto_5
    if-nez v2, :cond_1f

    if-lez v12, :cond_1f

    .line 987
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->iu:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->d(II)Landroid/support/v4/view/aI;

    move-result-object v2

    move-object v10, v2

    .line 993
    :goto_6
    if-eqz v10, :cond_17

    .line 994
    const/4 v9, 0x0

    .line 995
    add-int/lit8 v8, v5, -0x1

    .line 996
    if-ltz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    .line 997
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v14

    .line 998
    if-gtz v14, :cond_8

    const/4 v6, 0x0

    .line 1000
    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move v7, v9

    move/from16 v9, v16

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_9
    if-ltz v9, :cond_e

    .line 1001
    cmpl-float v15, v7, v6

    if-ltz v15, :cond_a

    if-ge v9, v11, :cond_a

    .line 1002
    if-eqz v2, :cond_e

    .line 1003
    iget v15, v2, Landroid/support/v4/view/aI;->position:I

    if-ne v9, v15, :cond_5

    iget-boolean v15, v2, Landroid/support/v4/view/aI;->js:Z

    if-nez v15, :cond_5

    .line 1006
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1007
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v2, v2, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1012
    add-int/lit8 v5, v5, -0x1

    .line 1013
    add-int/lit8 v8, v8, -0x1

    .line 1014
    if-ltz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    .line 1000
    :cond_5
    :goto_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 978
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 996
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 998
    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    iget v7, v10, Landroid/support/v4/view/aI;->jt:F

    sub-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v15, v14

    div-float/2addr v7, v15

    add-float/2addr v6, v7

    goto :goto_8

    .line 1014
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 1016
    :cond_a
    if-eqz v2, :cond_c

    iget v15, v2, Landroid/support/v4/view/aI;->position:I

    if-ne v9, v15, :cond_c

    .line 1017
    iget v2, v2, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v7, v2

    .line 1018
    add-int/lit8 v5, v5, -0x1

    .line 1019
    if-ltz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    goto :goto_a

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    .line 1021
    :cond_c
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Landroid/support/v4/view/ViewPager;->d(II)Landroid/support/v4/view/aI;

    move-result-object v2

    .line 1022
    iget v2, v2, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v7, v2

    .line 1023
    add-int/lit8 v8, v8, 0x1

    .line 1024
    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 1028
    :cond_e
    iget v6, v10, Landroid/support/v4/view/aI;->jt:F

    .line 1029
    add-int/lit8 v9, v8, 0x1

    .line 1030
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v6, v2

    if-gez v2, :cond_16

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    move-object v7, v2

    .line 1032
    :goto_b
    if-gtz v14, :cond_10

    const/4 v2, 0x0

    move v5, v2

    .line 1034
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v2

    move-object v2, v7

    move v7, v9

    move/from16 v9, v16

    :goto_d
    if-ge v9, v12, :cond_16

    .line 1035
    cmpl-float v11, v6, v5

    if-ltz v11, :cond_12

    if-le v9, v13, :cond_12

    .line 1036
    if-eqz v2, :cond_16

    .line 1037
    iget v11, v2, Landroid/support/v4/view/aI;->position:I

    if-ne v9, v11, :cond_1e

    iget-boolean v11, v2, Landroid/support/v4/view/aI;->js:Z

    if-nez v11, :cond_1e

    .line 1040
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1041
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v2, v2, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    :goto_e
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    .line 1034
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v2

    move-object v2, v6

    move/from16 v6, v16

    goto :goto_d

    .line 1031
    :cond_f
    const/4 v7, 0x0

    goto :goto_b

    .line 1032
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v14

    div-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v2, v5

    move v5, v2

    goto :goto_c

    .line 1046
    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 1048
    :cond_12
    if-eqz v2, :cond_14

    iget v11, v2, Landroid/support/v4/view/aI;->position:I

    if-ne v9, v11, :cond_14

    .line 1049
    iget v2, v2, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v6, v2

    .line 1050
    add-int/lit8 v7, v7, 0x1

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    :goto_10
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 1053
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Landroid/support/v4/view/ViewPager;->d(II)Landroid/support/v4/view/aI;

    move-result-object v2

    .line 1054
    add-int/lit8 v7, v7, 0x1

    .line 1055
    iget v2, v2, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v6, v2

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    :goto_11
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    goto :goto_11

    .line 1061
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/aI;ILandroid/support/v4/view/aI;)V

    .line 1071
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->iu:I

    if-eqz v10, :cond_19

    iget-object v2, v10, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/U;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v2}, Landroid/support/v4/view/U;->aW()V

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1078
    const/4 v2, 0x0

    move v4, v2

    :goto_13
    if-ge v4, v5, :cond_1a

    .line 1079
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1080
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aJ;

    .line 1081
    iput v4, v2, Landroid/support/v4/view/aJ;->jx:I

    .line 1082
    iget-boolean v7, v2, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v7, :cond_18

    iget v7, v2, Landroid/support/v4/view/aJ;->jt:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_18

    .line 1084
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v6

    .line 1085
    if-eqz v6, :cond_18

    .line 1086
    iget v7, v6, Landroid/support/v4/view/aI;->jt:F

    iput v7, v2, Landroid/support/v4/view/aJ;->jt:F

    .line 1087
    iget v6, v6, Landroid/support/v4/view/aI;->position:I

    iput v6, v2, Landroid/support/v4/view/aJ;->position:I

    .line 1078
    :cond_18
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_13

    .line 1071
    :cond_19
    const/4 v2, 0x0

    goto :goto_12

    .line 1091
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->bg()V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1095
    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->z(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v2

    .line 1096
    :goto_14
    if-eqz v2, :cond_1b

    iget v2, v2, Landroid/support/v4/view/aI;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->iu:I

    if-eq v2, v4, :cond_0

    .line 1097
    :cond_1b
    const/4 v2, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1098
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1099
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v5

    .line 1100
    if-eqz v5, :cond_1c

    iget v5, v5, Landroid/support/v4/view/aI;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v5, v6, :cond_1c

    .line 1101
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1102
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1095
    :cond_1d
    const/4 v2, 0x0

    goto :goto_14

    :cond_1e
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto/16 :goto_f

    :cond_1f
    move-object v10, v2

    goto/16 :goto_6

    :cond_20
    move-object v2, v6

    goto/16 :goto_5

    :cond_21
    move-object v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method private B(I)Landroid/support/v4/view/aI;
    .locals 3

    .prologue
    .line 1352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1353
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1354
    iget v2, v0, Landroid/support/v4/view/aI;->position:I

    if-ne v2, p1, :cond_0

    .line 1358
    :goto_1
    return-object v0

    .line 1352
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1358
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private C(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1636
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->je:Z

    .line 1638
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1639
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->je:Z

    if-nez v1, :cond_2

    .line 1640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1645
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bi()Landroid/support/v4/view/aI;

    move-result-object v1

    .line 1646
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v2

    .line 1647
    iget v3, p0, Landroid/support/v4/view/ViewPager;->iA:I

    add-int/2addr v3, v2

    .line 1648
    iget v4, p0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1649
    iget v5, v1, Landroid/support/v4/view/aI;->position:I

    .line 1650
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/view/aI;->ju:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1652
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1654
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->je:Z

    .line 1655
    invoke-direct {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1656
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->je:Z

    if-nez v0, :cond_1

    .line 1657
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1660
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2585
    if-nez p1, :cond_2

    .line 2586
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2588
    :goto_0
    if-nez p2, :cond_0

    .line 2589
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2607
    :goto_1
    return-object v0

    .line 2592
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2593
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2594
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2595
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2598
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2599
    check-cast v0, Landroid/view/ViewGroup;

    .line 2600
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2601
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2602
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2603
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2605
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2607
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IFI)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1677
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jf:I

    if-lez v0, :cond_1

    .line 1678
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 1679
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1680
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1681
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1682
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1683
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1684
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1685
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    .line 1686
    iget-boolean v9, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-eqz v9, :cond_6

    .line 1688
    iget v0, v0, Landroid/support/v4/view/aJ;->gravity:I

    and-int/lit8 v0, v0, 0x7

    .line 1689
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1707
    :goto_1
    add-int/2addr v0, v5

    .line 1709
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1710
    if-eqz v0, :cond_0

    .line 1711
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1683
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1696
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1697
    goto :goto_1

    .line 1699
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1701
    goto :goto_1

    .line 1703
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1704
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    .line 1716
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_2

    .line 1717
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/aM;->a(IFI)V

    .line 1719
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/aM;->a(IFI)V

    .line 1723
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jj:Landroid/support/v4/view/aN;

    if-eqz v0, :cond_5

    .line 1724
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1725
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1726
    :goto_3
    if-ge v1, v4, :cond_5

    .line 1727
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    .line 1730
    iget-boolean v0, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v0, :cond_4

    .line 1732
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1733
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->jj:Landroid/support/v4/view/aN;

    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/aN;->g(Landroid/view/View;F)V

    .line 1726
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1737
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->je:Z

    .line 1738
    return-void

    :cond_6
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1473
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1474
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1475
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, p4

    .line 1477
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1478
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1479
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1481
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1482
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1485
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->B(I)Landroid/support/v4/view/aI;

    move-result-object v3

    .line 1486
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/aI;->ju:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->B(I)Landroid/support/v4/view/aI;

    move-result-object v0

    .line 1491
    if-eqz v0, :cond_2

    iget v0, v0, Landroid/support/v4/view/aI;->ju:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iF:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1492
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1494
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1495
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(Z)V

    .line 1496
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1491
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 12

    .prologue
    .line 562
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->B(I)Landroid/support/v4/view/aI;

    move-result-object v1

    .line 563
    const/4 v0, 0x0

    .line 564
    if-eqz v1, :cond_0

    .line 565
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v0

    .line 566
    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->iE:F

    iget v1, v1, Landroid/support/v4/view/aI;->ju:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->iF:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 569
    :cond_0
    if-eqz p2, :cond_6

    .line 570
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 571
    :goto_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 574
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 588
    :cond_2
    :goto_1
    return-void

    .line 570
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, v0, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->x(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->x(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v6, v8

    float-to-double v8, v6

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_5

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ad;->i(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget v5, p0, Landroid/support/v4/view/ViewPager;->iu:I

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_2

    .line 578
    :cond_6
    if-eqz p4, :cond_7

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    if-eqz v1, :cond_7

    .line 579
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    invoke-interface {v1, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 581
    :cond_7
    if-eqz p4, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    if-eqz v1, :cond_8

    .line 582
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    invoke-interface {v1, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 584
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->d(Z)V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 586
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->C(I)Z

    goto/16 :goto_1
.end method

.method private a(IZZ)V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 515
    return-void
.end method

.method private a(IZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 519
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 558
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 527
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 532
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iK:I

    .line 533
    iget v2, p0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Landroid/support/v4/view/ViewPager;->iu:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 537
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 538
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    iput-boolean v3, v0, Landroid/support/v4/view/aI;->js:Z

    .line 537
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 529
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 530
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 541
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 543
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    if-eqz v0, :cond_a

    .line 546
    iput p1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    .line 547
    if-eqz v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_8

    .line 548
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 550
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jh:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1}, Landroid/support/v4/view/aM;->D(I)V

    .line 553
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0

    .line 555
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->A(I)V

    .line 556
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->x(I)V

    return-void
.end method

.method private a(Landroid/support/v4/view/aI;ILandroid/support/v4/view/aI;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 1127
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v7

    .line 1128
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v0

    .line 1129
    if-lez v0, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1131
    :goto_0
    if-eqz p3, :cond_4

    .line 1132
    iget v0, p3, Landroid/support/v4/view/aI;->position:I

    .line 1134
    iget v1, p1, Landroid/support/v4/view/aI;->position:I

    if-ge v0, v1, :cond_2

    .line 1136
    iget v1, p3, Landroid/support/v4/view/aI;->ju:F

    iget v2, p3, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    .line 1138
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v4

    move v1, v0

    .line 1139
    :goto_1
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1140
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1141
    :goto_2
    iget v5, v0, Landroid/support/v4/view/aI;->position:I

    if-le v1, v5, :cond_e

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_e

    .line 1142
    add-int/lit8 v3, v3, 0x1

    .line 1143
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    goto :goto_2

    .line 1129
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 1145
    :goto_3
    iget v5, v0, Landroid/support/v4/view/aI;->position:I

    if-ge v2, v5, :cond_1

    .line 1148
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    add-float v5, v10, v6

    add-float/2addr v5, v1

    .line 1149
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_3

    .line 1151
    :cond_1
    iput v1, v0, Landroid/support/v4/view/aI;->ju:F

    .line 1152
    iget v0, v0, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 1139
    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1154
    :cond_2
    iget v1, p1, Landroid/support/v4/view/aI;->position:I

    if-le v0, v1, :cond_4

    .line 1155
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1156
    iget v1, p3, Landroid/support/v4/view/aI;->ju:F

    .line 1158
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1159
    :goto_4
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    if-lt v1, v0, :cond_4

    if-ltz v3, :cond_4

    .line 1160
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1161
    :goto_5
    iget v5, v0, Landroid/support/v4/view/aI;->position:I

    if-ge v1, v5, :cond_d

    if-lez v3, :cond_d

    .line 1162
    add-int/lit8 v3, v3, -0x1

    .line 1163
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    goto :goto_5

    .line 1165
    :goto_6
    iget v5, v0, Landroid/support/v4/view/aI;->position:I

    if-le v2, v5, :cond_3

    .line 1168
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    add-float v5, v10, v6

    sub-float v5, v1, v5

    .line 1169
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v5

    goto :goto_6

    .line 1171
    :cond_3
    iget v5, v0, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 1172
    iput v1, v0, Landroid/support/v4/view/aI;->ju:F

    .line 1159
    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 1178
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1179
    iget v2, p1, Landroid/support/v4/view/aI;->ju:F

    .line 1180
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    add-int/lit8 v1, v0, -0x1

    .line 1181
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    if-nez v0, :cond_5

    iget v0, p1, Landroid/support/v4/view/aI;->ju:F

    :goto_7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->iE:F

    .line 1182
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_6

    iget v0, p1, Landroid/support/v4/view/aI;->ju:F

    iget v3, p1, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->iF:F

    .line 1185
    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_9

    .line 1186
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1187
    :goto_a
    iget v8, v0, Landroid/support/v4/view/aI;->position:I

    if-le v1, v8, :cond_7

    .line 1188
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    add-int/lit8 v1, v1, -0x1

    add-float v8, v10, v6

    sub-float/2addr v2, v8

    goto :goto_a

    .line 1181
    :cond_5
    const v0, -0x800001

    goto :goto_7

    .line 1182
    :cond_6
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1190
    :cond_7
    iget v8, v0, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v8, v6

    sub-float/2addr v2, v8

    .line 1191
    iput v2, v0, Landroid/support/v4/view/aI;->ju:F

    .line 1192
    iget v0, v0, Landroid/support/v4/view/aI;->position:I

    if-nez v0, :cond_8

    iput v2, p0, Landroid/support/v4/view/ViewPager;->iE:F

    .line 1185
    :cond_8
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_9

    .line 1194
    :cond_9
    iget v0, p1, Landroid/support/v4/view/aI;->ju:F

    iget v1, p1, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1195
    iget v0, p1, Landroid/support/v4/view/aI;->position:I

    add-int/lit8 v1, v0, 0x1

    .line 1197
    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_b
    if-ge v3, v5, :cond_c

    .line 1198
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1199
    :goto_c
    iget v8, v0, Landroid/support/v4/view/aI;->position:I

    if-ge v1, v8, :cond_a

    .line 1200
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    add-int/lit8 v1, v1, 0x1

    add-float v8, v10, v6

    add-float/2addr v2, v8

    goto :goto_c

    .line 1202
    :cond_a
    iget v8, v0, Landroid/support/v4/view/aI;->position:I

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_b

    .line 1203
    iget v8, v0, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v8, v2

    sub-float/2addr v8, v10

    iput v8, p0, Landroid/support/v4/view/ViewPager;->iF:F

    .line 1205
    :cond_b
    iput v2, v0, Landroid/support/v4/view/aI;->ju:F

    .line 1206
    iget v0, v0, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v0, v6

    add-float/2addr v2, v0

    .line 1197
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_b

    .line 1209
    :cond_c
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->jd:Z

    .line 1210
    return-void

    :cond_d
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_6

    :cond_e
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_3
.end method

.method private a(F)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2062
    .line 2064
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    sub-float/2addr v0, p1

    .line 2065
    iput p1, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 2067
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2068
    add-float v5, v1, v0

    .line 2069
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v7

    .line 2071
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iE:F

    mul-float v4, v0, v1

    .line 2072
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iF:F

    mul-float v6, v0, v1

    .line 2076
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 2077
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aI;

    .line 2078
    iget v8, v0, Landroid/support/v4/view/aI;->position:I

    if-eqz v8, :cond_5

    .line 2080
    iget v0, v0, Landroid/support/v4/view/aI;->ju:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2082
    :goto_0
    iget v8, v1, Landroid/support/v4/view/aI;->position:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v9}, Landroid/support/v4/view/U;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 2084
    iget v1, v1, Landroid/support/v4/view/aI;->ju:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2087
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 2088
    if-eqz v0, :cond_0

    .line 2089
    sub-float v0, v4, v5

    .line 2090
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/s;->f(F)Z

    move-result v2

    .line 2101
    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 2102
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2103
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->C(I)Z

    .line 2105
    return v2

    .line 2093
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 2094
    if-eqz v3, :cond_2

    .line 2095
    sub-float v0, v5, v1

    .line 2096
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/s;->f(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 2098
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2456
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2457
    check-cast v6, Landroid/view/ViewGroup;

    .line 2458
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2459
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2460
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2462
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2465
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2466
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2475
    :cond_0
    :goto_1
    return v2

    .line 2462
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2475
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private arrowScroll(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2519
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2520
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2547
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2549
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2550
    if-ne p1, v7, :cond_5

    .line 2553
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2554
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2555
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2556
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bk()Z

    move-result v0

    .line 2578
    :goto_1
    if-eqz v0, :cond_0

    .line 2579
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2581
    :cond_0
    return v0

    .line 2522
    :cond_1
    if-eqz v2, :cond_c

    .line 2524
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 2526
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2531
    :goto_3
    if-nez v0, :cond_c

    .line 2533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2534
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2537
    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2525
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2539
    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2541
    goto/16 :goto_0

    .line 2558
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2560
    :cond_5
    if-ne p1, v8, :cond_b

    .line 2563
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2564
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->is:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2565
    if-eqz v0, :cond_6

    if-le v2, v3, :cond_a

    .line 2566
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2571
    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2573
    :cond_8
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bk()Z

    move-result v0

    goto/16 :goto_1

    .line 2574
    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 2576
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bl()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/U;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    return-object v0
.end method

.method private ba()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 360
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 361
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->ip:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    .line 364
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 367
    invoke-static {v1}, Landroid/support/v4/view/ar;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->iP:I

    .line 368
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->iV:I

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->iW:I

    .line 370
    new-instance v1, Landroid/support/v4/widget/s;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    .line 371
    new-instance v1, Landroid/support/v4/widget/s;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    .line 373
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iX:I

    .line 374
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iY:I

    .line 375
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iN:I

    .line 377
    new-instance v0, Landroid/support/v4/view/aK;

    invoke-direct {v0, p0}, Landroid/support/v4/view/aK;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 379
    invoke-static {p0}, Landroid/support/v4/view/ad;->j(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-static {p0, v4}, Landroid/support/v4/view/ad;->c(Landroid/view/View;I)V

    .line 384
    :cond_0
    return-void
.end method

.method private bc()I
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private bg()V
    .locals 4

    .prologue
    .line 1111
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jl:I

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    .line 1117
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1118
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1119
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1120
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1115
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->jn:Landroid/support/v4/view/aQ;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1124
    :cond_2
    return-void
.end method

.method private bh()V
    .locals 2

    .prologue
    .line 2055
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2056
    if-eqz v0, :cond_0

    .line 2057
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2059
    :cond_0
    return-void
.end method

.method private bi()Landroid/support/v4/view/aI;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2113
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v1

    .line 2114
    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2115
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2116
    :goto_1
    const/4 v5, -0x1

    .line 2119
    const/4 v4, 0x1

    .line 2121
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2122
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2123
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 2125
    if-nez v5, :cond_6

    iget v10, v0, Landroid/support/v4/view/aI;->position:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2127
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ir:Landroid/support/v4/view/aI;

    .line 2128
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/aI;->ju:F

    .line 2129
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/aI;->position:I

    .line 2130
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget v6, v0, Landroid/support/v4/view/aI;->position:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Landroid/support/v4/view/aI;->jt:F

    .line 2131
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2133
    :goto_3
    iget v6, v2, Landroid/support/v4/view/aI;->ju:F

    .line 2136
    iget v7, v2, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2137
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2138
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2151
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2114
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2115
    goto :goto_1

    .line 2145
    :cond_5
    iget v5, v2, Landroid/support/v4/view/aI;->position:I

    .line 2147
    iget v4, v2, Landroid/support/v4/view/aI;->jt:F

    .line 2122
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private bj()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2404
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    .line 2405
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    .line 2407
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    .line 2411
    :cond_0
    return-void
.end method

.method private bk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2611
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-lez v1, :cond_0

    .line 2612
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->b(IZ)V

    .line 2615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bl()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2619
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v2}, Landroid/support/v4/view/U;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2620
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->b(IZ)V

    .line 2623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic bm()[I
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/support/v4/view/ViewPager;->im:[I

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    return v0
.end method

.method private d(II)Landroid/support/v4/view/aI;
    .locals 2

    .prologue
    .line 835
    new-instance v0, Landroid/support/v4/view/aI;

    invoke-direct {v0}, Landroid/support/v4/view/aI;-><init>()V

    .line 836
    iput p1, v0, Landroid/support/v4/view/aI;->position:I

    .line 837
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    .line 838
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/view/aI;->jt:F

    .line 839
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 840
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :goto_0
    return-object v0

    .line 842
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2389
    invoke-static {p1}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2390
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2391
    iget v2, p0, Landroid/support/v4/view/ViewPager;->iU:I

    if-ne v1, v2, :cond_0

    .line 2394
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2395
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 2396
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 2397
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2401
    :cond_0
    return-void

    .line 2394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1741
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1742
    :goto_0
    if-eqz v0, :cond_1

    .line 1744
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1745
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1747
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1748
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1749
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1750
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1751
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1754
    :cond_1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    move v1, v2

    move v3, v0

    .line 1755
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1756
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1757
    iget-boolean v5, v0, Landroid/support/v4/view/aI;->js:Z

    if-eqz v5, :cond_2

    .line 1759
    iput-boolean v2, v0, Landroid/support/v4/view/aI;->js:Z

    move v3, v4

    .line 1755
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1741
    goto :goto_0

    .line 1762
    :cond_4
    if-eqz v3, :cond_5

    .line 1763
    if-eqz p1, :cond_6

    .line 1764
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jo:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1769
    :cond_5
    :goto_2
    return-void

    .line 1766
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jo:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2414
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iI:Z

    if-eq v0, p1, :cond_0

    .line 2415
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->iI:Z

    .line 2426
    :cond_0
    return-void
.end method

.method private x(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 393
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jp:I

    if-ne v0, p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->jp:I

    .line 398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jj:Landroid/support/v4/view/aN;

    if-eqz v0, :cond_4

    .line 400
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/support/v4/view/ad;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_3

    .line 402
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    invoke-interface {v0, p1}, Landroid/support/v4/view/aM;->E(I)V

    goto :goto_0
.end method

.method private y(Landroid/view/View;)Landroid/support/v4/view/aI;
    .locals 4

    .prologue
    .line 1331
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1332
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 1333
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v3, v0, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/U;->b(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    :goto_1
    return-object v0

    .line 1331
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1337
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private z(Landroid/view/View;)Landroid/support/v4/view/aI;
    .locals 2

    .prologue
    .line 1342
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1343
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1344
    :cond_0
    const/4 v0, 0x0

    .line 1348
    :goto_1
    return-object v0

    .line 1346
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1348
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/U;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iz:Landroid/support/v4/view/aO;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/U;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    move v1, v2

    .line 416
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 418
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget v4, v0, Landroid/support/v4/view/aI;->position:I

    iget-object v0, v0, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->aW()V

    .line 421
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 422
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    iget-boolean v0, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 423
    :cond_2
    iput v2, p0, Landroid/support/v4/view/ViewPager;->iu:I

    .line 424
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 427
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    .line 429
    iput v2, p0, Landroid/support/v4/view/ViewPager;->in:I

    .line 431
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v1, :cond_5

    .line 432
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iz:Landroid/support/v4/view/aO;

    if-nez v1, :cond_4

    .line 433
    new-instance v1, Landroid/support/v4/view/aO;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/aO;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->iz:Landroid/support/v4/view/aO;

    .line 435
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->iz:Landroid/support/v4/view/aO;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/U;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 436
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 437
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 438
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 439
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v3}, Landroid/support/v4/view/U;->getCount()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->in:I

    .line 440
    iget v3, p0, Landroid/support/v4/view/ViewPager;->iv:I

    if-ltz v3, :cond_7

    .line 441
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->iw:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->ix:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/U;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 442
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iv:I

    invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->iv:I

    .line 444
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->iw:Landroid/os/Parcelable;

    .line 445
    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->ix:Ljava/lang/ClassLoader;

    .line 453
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ji:Landroid/support/v4/view/aL;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 454
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ji:Landroid/support/v4/view/aL;

    .line 456
    :cond_6
    return-void

    .line 446
    :cond_7
    if-nez v1, :cond_8

    .line 447
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    goto :goto_2

    .line 449
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_2
.end method

.method public final a(Landroid/support/v4/view/aM;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->jg:Landroid/support/v4/view/aM;

    .line 598
    return-void
.end method

.method public final a(Landroid/support/v4/view/aN;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_2

    .line 614
    if-eqz p1, :cond_3

    move v0, v1

    .line 615
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->jj:Landroid/support/v4/view/aN;

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_5

    .line 616
    :goto_2
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->jj:Landroid/support/v4/view/aN;

    .line 617
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->jk:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    :try_start_0
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->jk:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->jk:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :cond_1
    :goto_4
    if-eqz v0, :cond_6

    .line 619
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/view/ViewPager;->jl:I

    .line 623
    :goto_5
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    .line 625
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 614
    goto :goto_0

    :cond_4
    move v3, v2

    .line 615
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    .line 617
    :catch_0
    move-exception v3

    const-string v4, "ViewPager"

    const-string v5, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v3

    const-string v4, "ViewPager"

    const-string v5, "Error changing children drawing order"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 621
    :cond_6
    iput v2, p0, Landroid/support/v4/view/ViewPager;->jl:I

    goto :goto_5
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2631
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2633
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2635
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    .line 2636
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2637
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2638
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2639
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v4

    .line 2640
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/aI;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v4, v5, :cond_0

    .line 2641
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2636
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2651
    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2657
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2668
    :cond_3
    :goto_1
    return-void

    .line 2660
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2664
    :cond_5
    if-eqz p1, :cond_3

    .line 2665
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2678
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2679
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2681
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v2

    .line 2682
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/aI;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v2, v3, :cond_0

    .line 2683
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2687
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1297
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1298
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1300
    check-cast v0, Landroid/support/v4/view/aJ;

    .line 1301
    iget-boolean v2, v0, Landroid/support/v4/view/aJ;->jv:Z

    instance-of v3, p1, Landroid/support/v4/view/aH;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/aJ;->jv:Z

    .line 1302
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->aC:Z

    if-eqz v2, :cond_1

    .line 1303
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-eqz v2, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/aJ;->jw:Z

    .line 1307
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1319
    :goto_1
    return-void

    .line 1309
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public final b(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 506
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 507
    return-void
.end method

.method public final bb()Landroid/support/v4/view/U;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    return-object v0
.end method

.method public final bd()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    return v0
.end method

.method final be()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 850
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v8

    .line 851
    iput v8, p0, Landroid/support/v4/view/ViewPager;->in:I

    .line 852
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->iK:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    move v0, v1

    .line 854
    :goto_0
    iget v3, p0, Landroid/support/v4/view/ViewPager;->iu:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 857
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 858
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    .line 859
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v9, v0, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/U;->f(Ljava/lang/Object;)I

    move-result v7

    .line 861
    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 862
    const/4 v9, -0x2

    if-ne v7, v9, :cond_2

    .line 866
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 867
    add-int/lit8 v3, v3, -0x1

    .line 869
    if-nez v4, :cond_0

    .line 870
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    move v4, v1

    .line 874
    :cond_0
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget v7, v0, Landroid/support/v4/view/aI;->position:I

    iget-object v9, v0, Landroid/support/v4/view/aI;->jr:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/U;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 877
    iget v6, p0, Landroid/support/v4/view/ViewPager;->iu:I

    iget v0, v0, Landroid/support/v4/view/aI;->position:I

    if-ne v6, v0, :cond_a

    .line 879
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 857
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 852
    goto :goto_0

    .line 885
    :cond_2
    iget v9, v0, Landroid/support/v4/view/aI;->position:I

    if-eq v9, v7, :cond_9

    .line 886
    iget v6, v0, Landroid/support/v4/view/aI;->position:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v6, v9, :cond_3

    move v5, v7

    .line 891
    :cond_3
    iput v7, v0, Landroid/support/v4/view/aI;->position:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 892
    goto :goto_2

    .line 896
    :cond_4
    if-eqz v4, :cond_5

    .line 897
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->aW()V

    .line 900
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->io:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 902
    if-eqz v6, :cond_8

    .line 904
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 905
    :goto_3
    if-ge v3, v4, :cond_7

    .line 906
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    .line 908
    iget-boolean v6, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v6, :cond_6

    .line 909
    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/aJ;->jt:F

    .line 905
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 913
    :cond_7
    invoke-direct {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 914
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 916
    :cond_8
    return-void

    :cond_9
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_2
.end method

.method final bf()V
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->A(I)V

    .line 920
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 737
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    .line 738
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 739
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 740
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 741
    return-void

    .line 739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2429
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-nez v2, :cond_1

    .line 2440
    :cond_0
    :goto_0
    return v0

    .line 2433
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v2

    .line 2434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2435
    if-gez p1, :cond_2

    .line 2436
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->iE:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-le v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2437
    :cond_2
    if-lez p1, :cond_0

    .line 2438
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->iF:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-ge v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2757
    instance-of v0, p1, Landroid/support/v4/view/aJ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1612
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1614
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1615
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1616
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1618
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1619
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1620
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->C(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1621
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1622
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1627
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ad;->i(Landroid/view/View;)V

    .line 1633
    :goto_0
    return-void

    .line 1632
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2481
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/A;->b(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/A;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2725
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    .line 2726
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2742
    :cond_0
    :goto_0
    return v0

    .line 2730
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2731
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2732
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2733
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2734
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v4

    .line 2735
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/aI;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2737
    const/4 v0, 0x1

    goto :goto_0

    .line 2731
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2176
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2177
    const/4 v0, 0x0

    .line 2179
    invoke-static {p0}, Landroid/support/v4/view/ad;->h(Landroid/view/View;)I

    move-result v1

    .line 2180
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v1}, Landroid/support/v4/view/U;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2183
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2185
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2186
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2188
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2189
    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->iE:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2190
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/s;->setSize(II)V

    .line 2191
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/s;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2192
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2194
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2196
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2197
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2199
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2200
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->iF:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2201
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/s;->setSize(II)V

    .line 2202
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/s;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2203
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2210
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2212
    invoke-static {p0}, Landroid/support/v4/view/ad;->i(Landroid/view/View;)V

    .line 2214
    :cond_3
    return-void

    .line 2206
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->finish()V

    .line 2207
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 759
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    .line 761
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 764
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2747
    new-instance v0, Landroid/support/v4/view/aJ;

    invoke-direct {v0}, Landroid/support/v4/view/aJ;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2762
    new-instance v0, Landroid/support/v4/view/aJ;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/aJ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2752
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 647
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    iget v0, v0, Landroid/support/v4/view/aJ;->jx:I

    .line 649
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1363
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 1365
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->jo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 389
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 390
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2218
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2221
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->iA:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v1, :cond_3

    .line 2222
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2225
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2226
    const/4 v5, 0x0

    .line 2227
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aI;

    .line 2228
    iget v4, v1, Landroid/support/v4/view/aI;->ju:F

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2230
    iget v3, v1, Landroid/support/v4/view/aI;->position:I

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/aI;

    iget v10, v2, Landroid/support/v4/view/aI;->position:I

    move v2, v5

    move v5, v3

    .line 2232
    :goto_0
    if-ge v5, v10, :cond_3

    .line 2233
    :goto_1
    iget v3, v1, Landroid/support/v4/view/aI;->position:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2234
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aI;

    goto :goto_1

    .line 2238
    :cond_0
    iget v3, v1, Landroid/support/v4/view/aI;->position:I

    if-ne v5, v3, :cond_2

    .line 2239
    iget v3, v1, Landroid/support/v4/view/aI;->ju:F

    iget v4, v1, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2240
    iget v4, v1, Landroid/support/v4/view/aI;->ju:F

    iget v11, v1, Landroid/support/v4/view/aI;->jt:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2247
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2248
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->iC:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->iA:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->iD:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2253
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_3

    .line 2254
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2242
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    .line 2243
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    int-to-float v11, v7

    mul-float/2addr v3, v11

    .line 2244
    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2258
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1795
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1798
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    .line 1799
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    .line 1800
    iput v3, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 1801
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1802
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1803
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    .line 1925
    :cond_1
    :goto_0
    return v2

    .line 1810
    :cond_2
    if-eqz v0, :cond_4

    .line 1811
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1813
    goto :goto_0

    .line 1815
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    if-nez v1, :cond_1

    .line 1821
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1916
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1917
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    .line 1919
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1925
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    goto :goto_0

    .line 1832
    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 1833
    if-eq v0, v3, :cond_5

    .line 1835
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1839
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1840
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    sub-float v8, v7, v1

    .line 1841
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1842
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1843
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iT:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1846
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iO:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v8, v12

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->iO:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    cmpg-float v0, v8, v12

    if-gez v0, :cond_9

    :cond_8
    move v0, v6

    :goto_2
    if-nez v0, :cond_a

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1849
    iput v7, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 1850
    iput v10, p0, Landroid/support/v4/view/ViewPager;->iR:F

    .line 1851
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    goto :goto_0

    :cond_9
    move v0, v2

    .line 1846
    goto :goto_2

    .line 1854
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    .line 1856
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    .line 1857
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bh()V

    .line 1858
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->x(I)V

    .line 1859
    cmpl-float v0, v8, v12

    if-lez v0, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 1861
    iput v10, p0, Landroid/support/v4/view/ViewPager;->iR:F

    .line 1862
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1871
    :cond_b
    :goto_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-eqz v0, :cond_5

    .line 1873
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1874
    invoke-static {p0}, Landroid/support/v4/view/ad;->i(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1859
    :cond_c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    .line 1863
    :cond_d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    .line 1869
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    goto :goto_4

    .line 1885
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 1886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iT:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iR:F

    .line 1887
    invoke-static {p1, v2}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 1888
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iM:Z

    .line 1890
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1891
    iget v0, p0, Landroid/support/v4/view/ViewPager;->jp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iY:I

    if-le v0, v1, :cond_e

    .line 1894
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1895
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 1896
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    .line 1897
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    .line 1898
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bh()V

    .line 1899
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->x(I)V

    goto/16 :goto_1

    .line 1901
    :cond_e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(Z)V

    .line 1902
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    goto/16 :goto_1

    .line 1912
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1821
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1504
    sub-int v10, p4, p2

    .line 1505
    sub-int v11, p5, p3

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1512
    const/4 v4, 0x0

    .line 1516
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1517
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1518
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_5

    .line 1519
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aJ;

    .line 1520
    iget-boolean v7, v1, Landroid/support/v4/view/aJ;->jv:Z

    if-eqz v7, :cond_5

    .line 1523
    iget v7, v1, Landroid/support/v4/view/aJ;->gravity:I

    and-int/lit8 v7, v7, 0x7

    .line 1524
    iget v1, v1, Landroid/support/v4/view/aJ;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1525
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1542
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1559
    :goto_2
    add-int/2addr v7, v12

    .line 1560
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1563
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1516
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1531
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1532
    goto :goto_1

    .line 1534
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1536
    goto :goto_1

    .line 1538
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1539
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1548
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1549
    goto :goto_2

    .line 1551
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1553
    goto :goto_2

    .line 1555
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1556
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1568
    :cond_0
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    .line 1570
    const/4 v1, 0x0

    move v5, v1

    :goto_4
    if-ge v5, v9, :cond_3

    .line 1571
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1572
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_2

    .line 1573
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aJ;

    .line 1575
    iget-boolean v10, v1, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1576
    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/aI;->ju:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1577
    add-int/2addr v10, v6

    .line 1579
    iget-boolean v12, v1, Landroid/support/v4/view/aJ;->jw:Z

    if-eqz v12, :cond_1

    .line 1582
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/aJ;->jw:Z

    .line 1583
    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/aJ;->jt:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1586
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1589
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    .line 1594
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1570
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 1600
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->iC:I

    .line 1601
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->iD:I

    .line 1602
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->jf:I

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->jc:Z

    if-eqz v1, :cond_4

    .line 1605
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->iu:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 1607
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->jc:Z

    .line 1608
    return-void

    :cond_5
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1374
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1377
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1378
    div-int/lit8 v1, v0, 0xa

    .line 1379
    iget v2, p0, Landroid/support/v4/view/ViewPager;->iN:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->iO:I

    .line 1382
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1383
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1390
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1391
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1392
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1393
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1394
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    .line 1395
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-eqz v1, :cond_3

    .line 1396
    iget v1, v0, Landroid/support/v4/view/aJ;->gravity:I

    and-int/lit8 v6, v1, 0x7

    .line 1397
    iget v1, v0, Landroid/support/v4/view/aJ;->gravity:I

    and-int/lit8 v4, v1, 0x70

    .line 1398
    const/high16 v2, -0x80000000

    .line 1399
    const/high16 v1, -0x80000000

    .line 1400
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1401
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1403
    :goto_2
    if-eqz v7, :cond_6

    .line 1404
    const/high16 v2, 0x40000000    # 2.0f

    .line 1411
    :cond_2
    :goto_3
    iget v4, v0, Landroid/support/v4/view/aJ;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1412
    const/high16 v4, 0x40000000    # 2.0f

    .line 1413
    iget v2, v0, Landroid/support/v4/view/aJ;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1414
    iget v2, v0, Landroid/support/v4/view/aJ;->width:I

    .line 1417
    :goto_4
    iget v11, v0, Landroid/support/v4/view/aJ;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1418
    const/high16 v1, 0x40000000    # 2.0f

    .line 1419
    iget v11, v0, Landroid/support/v4/view/aJ;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1420
    iget v0, v0, Landroid/support/v4/view/aJ;->height:I

    .line 1423
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1424
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1425
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1427
    if-eqz v7, :cond_7

    .line 1428
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1391
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1400
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1401
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1405
    :cond_6
    if-eqz v6, :cond_2

    .line 1406
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    .line 1429
    :cond_7
    if-eqz v6, :cond_3

    .line 1430
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1436
    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iG:I

    .line 1437
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iH:I

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->aC:Z

    .line 1441
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    .line 1442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->aC:Z

    .line 1445
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1446
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1447
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1448
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1452
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aJ;

    .line 1453
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Landroid/support/v4/view/aJ;->jv:Z

    if-nez v5, :cond_a

    .line 1454
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/aJ;->jt:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1456
    iget v5, p0, Landroid/support/v4/view/ViewPager;->iH:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1446
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1460
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2698
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2699
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2708
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2709
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2710
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2711
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->y(Landroid/view/View;)Landroid/support/v4/view/aI;

    move-result-object v6

    .line 2712
    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/aI;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-ne v6, v7, :cond_1

    .line 2713
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2719
    :goto_1
    return v2

    .line 2704
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2706
    goto :goto_0

    .line 2708
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2719
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1277
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1278
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1293
    :goto_0
    return-void

    .line 1282
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1283
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1285
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->jy:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->jz:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/U;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1287
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1289
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iv:I

    .line 1290
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->jy:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->iw:Landroid/os/Parcelable;

    .line 1291
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->jz:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ix:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1266
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1267
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1268
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1269
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->aY()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->jy:Landroid/os/Parcelable;

    .line 1272
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1464
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1467
    if-eq p1, p3, :cond_0

    .line 1468
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iA:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iA:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1470
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1930
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iZ:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 2051
    :goto_0
    return v0

    .line 1937
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 1940
    goto :goto_0

    .line 1943
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->it:Landroid/support/v4/view/U;

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    .line 1945
    goto :goto_0

    .line 1948
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    .line 1951
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1956
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2048
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v4, :cond_6

    .line 2049
    invoke-static {p0}, Landroid/support/v4/view/ad;->i(Landroid/view/View;)V

    :cond_6
    move v0, v3

    .line 2051
    goto :goto_0

    .line 1958
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iy:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1959
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 1960
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->bf()V

    .line 1963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 1964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iT:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iR:F

    .line 1965
    invoke-static {p1, v4}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    goto :goto_1

    .line 1969
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-nez v0, :cond_7

    .line 1970
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1971
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1972
    iget v2, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1973
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1974
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iR:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1976
    iget v6, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    .line 1978
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    .line 1979
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bh()V

    .line 1980
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 1982
    iput v5, p0, Landroid/support/v4/view/ViewPager;->iR:F

    .line 1983
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->x(I)V

    .line 1984
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1987
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1988
    if-eqz v0, :cond_7

    .line 1989
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1994
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-eqz v0, :cond_5

    .line 1996
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1998
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1999
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(F)Z

    move-result v0

    or-int/lit8 v4, v0, 0x0

    .line 2000
    goto/16 :goto_1

    .line 1980
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iS:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->iP:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 2003
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-eqz v0, :cond_5

    .line 2004
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->hT:Landroid/view/VelocityTracker;

    .line 2005
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->iW:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2006
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iU:I

    invoke-static {v0, v1}, Landroid/support/v4/view/Z;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    .line 2008
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 2009
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bc()I

    move-result v1

    .line 2010
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2011
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bi()Landroid/support/v4/view/aI;

    move-result-object v6

    .line 2012
    iget v0, v6, Landroid/support/v4/view/aI;->position:I

    .line 2013
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v6, Landroid/support/v4/view/aI;->ju:F

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/support/v4/view/aI;->jt:F

    div-float v2, v1, v2

    .line 2014
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iU:I

    invoke-static {p1, v1}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2016
    invoke-static {p1, v1}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2017
    iget v6, p0, Landroid/support/v4/view/ViewPager;->iS:F

    sub-float/2addr v1, v6

    float-to-int v1, v1

    .line 2018
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->iX:I

    if-le v1, v6, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->iV:I

    if-le v1, v6, :cond_b

    if-lez v5, :cond_a

    :goto_3
    move v2, v0

    :goto_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aI;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->iq:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/aI;

    iget v0, v0, Landroid/support/v4/view/aI;->position:I

    iget v1, v1, Landroid/support/v4/view/aI;->position:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2020
    :cond_9
    invoke-direct {p0, v2, v3, v3, v5}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 2022
    iput v7, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 2023
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bj()V

    .line 2024
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v0}, Landroid/support/v4/widget/s;->bV()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->bV()Z

    move-result v1

    or-int v4, v0, v1

    .line 2025
    goto/16 :goto_1

    .line 2018
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget v1, p0, Landroid/support/v4/view/ViewPager;->iu:I

    if-lt v0, v1, :cond_c

    const v1, 0x3ecccccd    # 0.4f

    :goto_5
    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v2, v0

    goto :goto_4

    :cond_c
    const v1, 0x3f19999a    # 0.6f

    goto :goto_5

    .line 2028
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->iL:Z

    if-eqz v0, :cond_5

    .line 2029
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iu:I

    invoke-direct {p0, v0, v3, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    .line 2030
    iput v7, p0, Landroid/support/v4/view/ViewPager;->iU:I

    .line 2031
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->bj()V

    .line 2032
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ja:Landroid/support/v4/widget/s;

    invoke-virtual {v0}, Landroid/support/v4/widget/s;->bV()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->jb:Landroid/support/v4/widget/s;

    invoke-virtual {v1}, Landroid/support/v4/widget/s;->bV()Z

    move-result v1

    or-int v4, v0, v1

    goto/16 :goto_1

    .line 2036
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2037
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2038
    iput v1, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    .line 2039
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    goto/16 :goto_1

    .line 2043
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(Landroid/view/MotionEvent;)V

    .line 2044
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iU:I

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->iQ:F

    goto/16 :goto_1

    .line 1956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->aC:Z

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1328
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 754
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->iB:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->iJ:Z

    .line 495
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->jc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 496
    return-void

    :cond_0
    move v0, v1

    .line 495
    goto :goto_0
.end method

.method public final z(I)V
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Landroid/support/v4/view/ViewPager;->iA:I

    .line 714
    iput p1, p0, Landroid/support/v4/view/ViewPager;->iA:I

    .line 716
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 717
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 719
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 720
    return-void
.end method
