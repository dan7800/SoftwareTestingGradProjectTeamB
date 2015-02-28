.class final Landroid/support/v4/widget/V;
.super Landroid/support/v4/widget/T;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1531
    invoke-direct {p0}, Landroid/support/v4/widget/T;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1534
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/Q;

    iget-object v0, v0, Landroid/support/v4/widget/Q;->mS:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1535
    return-void
.end method
