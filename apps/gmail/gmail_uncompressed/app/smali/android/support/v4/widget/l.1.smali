.class public final Landroid/support/v4/widget/l;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public gravity:I

.field lm:F

.field ln:Z

.field lo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1777
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1763
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1778
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1769
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1763
    iput v1, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1771
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->bQ()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1772
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1773
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1774
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/l;)V
    .locals 1

    .prologue
    .line 1786
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1763
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1787
    iget v0, p1, Landroid/support/v4/widget/l;->gravity:I

    iput v0, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1788
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1791
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1792
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1795
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1763
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/l;->gravity:I

    .line 1796
    return-void
.end method
