.class public final Landroid/support/v7/widget/C;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# static fields
.field private static final DN:Landroid/support/v7/widget/B;

.field private static final DO:I

.field private static final DP:I

.field private static final DQ:I

.field private static final DR:I

.field private static final DS:I

.field private static final DT:I

.field private static final DU:I

.field private static final DV:I

.field private static final DW:I

.field private static final DX:I

.field private static final DY:I

.field private static final DZ:I

.field private static final Ea:I


# instance fields
.field public Eb:Landroid/support/v7/widget/F;

.field public Ec:Landroid/support/v7/widget/F;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1856
    new-instance v0, Landroid/support/v7/widget/B;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/B;-><init>(II)V

    .line 1857
    sput-object v0, Landroid/support/v7/widget/C;->DN:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->size()I

    move-result v0

    sput v0, Landroid/support/v7/widget/C;->DO:I

    .line 1861
    sget v0, Landroid/support/v7/b/c;->ub:I

    sput v0, Landroid/support/v7/widget/C;->DP:I

    .line 1862
    sget v0, Landroid/support/v7/b/c;->ud:I

    sput v0, Landroid/support/v7/widget/C;->DQ:I

    .line 1863
    sget v0, Landroid/support/v7/b/c;->uf:I

    sput v0, Landroid/support/v7/widget/C;->DR:I

    .line 1864
    sget v0, Landroid/support/v7/b/c;->ue:I

    sput v0, Landroid/support/v7/widget/C;->DS:I

    .line 1865
    sget v0, Landroid/support/v7/b/c;->uc:I

    sput v0, Landroid/support/v7/widget/C;->DT:I

    .line 1867
    sget v0, Landroid/support/v7/b/c;->ug:I

    sput v0, Landroid/support/v7/widget/C;->DU:I

    .line 1868
    sget v0, Landroid/support/v7/b/c;->uh:I

    sput v0, Landroid/support/v7/widget/C;->DV:I

    .line 1869
    sget v0, Landroid/support/v7/b/c;->ui:I

    sput v0, Landroid/support/v7/widget/C;->DW:I

    .line 1871
    sget v0, Landroid/support/v7/b/c;->uk:I

    sput v0, Landroid/support/v7/widget/C;->DX:I

    .line 1872
    sget v0, Landroid/support/v7/b/c;->ul:I

    sput v0, Landroid/support/v7/widget/C;->DY:I

    .line 1873
    sget v0, Landroid/support/v7/b/c;->um:I

    sput v0, Landroid/support/v7/widget/C;->DZ:I

    .line 1875
    sget v0, Landroid/support/v7/b/c;->uj:I

    sput v0, Landroid/support/v7/widget/C;->Ea:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1937
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    sget-object v1, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/C;-><init>(Landroid/support/v7/widget/F;Landroid/support/v7/widget/F;B)V

    .line 1938
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 1978
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1979
    sget-object v0, Landroid/support/v7/b/c;->rT:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/widget/C;->DP:I

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/C;->DQ:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/C;->leftMargin:I

    sget v2, Landroid/support/v7/widget/C;->DR:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/C;->topMargin:I

    sget v2, Landroid/support/v7/widget/C;->DS:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/C;->rightMargin:I

    sget v2, Landroid/support/v7/widget/C;->DT:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/C;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1980
    sget-object v0, Landroid/support/v7/b/c;->rT:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_1
    sget v0, Landroid/support/v7/widget/C;->Ea:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v2, Landroid/support/v7/widget/C;->DU:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/C;->DV:I

    sget v4, Landroid/support/v7/widget/C;->DO:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/C;->DW:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->f(IZ)Landroid/support/v7/widget/w;

    move-result-object v5

    invoke-static {v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/w;F)Landroid/support/v7/widget/F;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    sget v2, Landroid/support/v7/widget/C;->DX:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroid/support/v7/widget/C;->DY:I

    sget v4, Landroid/support/v7/widget/C;->DO:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Landroid/support/v7/widget/C;->DZ:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->f(IZ)Landroid/support/v7/widget/w;

    move-result-object v0

    invoke-static {v2, v3, v0, v4}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/w;F)Landroid/support/v7/widget/F;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 1979
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1980
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private constructor <init>(Landroid/support/v7/widget/F;Landroid/support/v7/widget/F;)V
    .locals 2

    .prologue
    const/4 v0, -0x2

    const/high16 v1, -0x80000000

    .line 1913
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1914
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/widget/C;->setMargins(IIII)V

    .line 1915
    iput-object p1, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 1916
    iput-object p2, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1917
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/F;Landroid/support/v7/widget/F;B)V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/C;-><init>(Landroid/support/v7/widget/F;Landroid/support/v7/widget/F;)V

    .line 1931
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1946
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/F;->Ee:Landroid/support/v7/widget/F;

    iput-object v0, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1947
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/B;)V
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/F;->c(Landroid/support/v7/widget/B;)Landroid/support/v7/widget/F;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 2049
    return-void
.end method

.method final b(Landroid/support/v7/widget/B;)V
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/F;->c(Landroid/support/v7/widget/B;)Landroid/support/v7/widget/F;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 2053
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2057
    if-ne p0, p1, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return v0

    .line 2058
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2060
    :cond_3
    check-cast p1, Landroid/support/v7/widget/C;

    .line 2062
    iget-object v2, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    iget-object v3, p1, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/F;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2063
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    iget-object v3, p1, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/F;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    invoke-virtual {v0}, Landroid/support/v7/widget/F;->hashCode()I

    move-result v0

    .line 2071
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    invoke-virtual {v1}, Landroid/support/v7/widget/F;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2072
    return v0
.end method

.method protected final setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2043
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/C;->width:I

    .line 2044
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/C;->height:I

    .line 2045
    return-void
.end method
