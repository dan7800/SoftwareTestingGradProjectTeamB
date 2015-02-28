.class final Landroid/support/v4/widget/n;
.super Landroid/support/v4/widget/aj;
.source "SourceFile"


# instance fields
.field final synthetic ll:Landroid/support/v4/widget/DrawerLayout;

.field private final ls:I

.field private lt:Landroid/support/v4/widget/ag;

.field private final lu:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1

    .prologue
    .line 1605
    iput-object p1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/aj;-><init>()V

    .line 1599
    new-instance v0, Landroid/support/v4/widget/o;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/o;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->lu:Ljava/lang/Runnable;

    .line 1606
    iput p2, p0, Landroid/support/v4/widget/n;->ls:I

    .line 1607
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/n;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1595
    iget-object v1, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    invoke-virtual {v1}, Landroid/support/v4/widget/ag;->cs()I

    move-result v2

    iget v1, p0, Landroid/support/v4/widget/n;->ls:I

    if-ne v1, v5, :cond_4

    move v3, v4

    :goto_0
    if-eqz v3, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->N(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :cond_0
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->F(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    iget-object v3, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v2, v1, v5}, Landroid/support/v4/widget/ag;->a(Landroid/view/View;II)Z

    iput-boolean v4, v0, Landroid/support/v4/widget/l;->ln:Z

    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    invoke-direct {p0}, Landroid/support/v4/widget/n;->bT()V

    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bP()V

    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->N(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method

.method private bT()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 1656
    iget v1, p0, Landroid/support/v4/widget/n;->ls:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 1657
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->N(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    if-eqz v0, :cond_1

    .line 1659
    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->L(Landroid/view/View;)V

    .line 1661
    :cond_1
    return-void
.end method


# virtual methods
.method public final Q(I)V
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/n;->ls:I

    iget-object v1, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    invoke-virtual {v1}, Landroid/support/v4/widget/ag;->ct()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 1628
    return-void
.end method

.method public final S(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/n;->ls:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->F(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final T(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1649
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    .line 1650
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/l;->ln:Z

    .line 1652
    invoke-direct {p0}, Landroid/support/v4/widget/n;->bT()V

    .line 1653
    return-void
.end method

.method public final U(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final V(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1757
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v4/widget/ag;)V
    .locals 0

    .prologue
    .line 1610
    iput-object p1, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    .line 1611
    return-void
.end method

.method public final bS()V
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/n;->lu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1615
    return-void
.end method

.method public final bU()V
    .locals 4

    .prologue
    .line 1684
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/n;->lu:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1685
    return-void
.end method

.method public final g(II)V
    .locals 2

    .prologue
    .line 1729
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1730
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->N(I)Landroid/view/View;

    move-result-object v0

    .line 1735
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->F(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1736
    iget-object v1, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ag;->i(Landroid/view/View;I)V

    .line 1738
    :cond_0
    return-void

    .line 1732
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->N(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final g(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1633
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1636
    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1637
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1642
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;F)V

    .line 1643
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1645
    return-void

    .line 1639
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1640
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 1643
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final h(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1751
    :goto_0
    return v0

    .line 1750
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1751
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public final j(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1667
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->G(Landroid/view/View;)F

    move-result v1

    .line 1668
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1671
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1672
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1678
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->lt:Landroid/support/v4/widget/ag;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ag;->l(II)Z

    .line 1679
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1680
    return-void

    .line 1672
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 1674
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/n;->ll:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1675
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method
