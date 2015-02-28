.class Landroid/support/v4/view/ak;
.super Landroid/support/v4/view/aj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Landroid/support/v4/view/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 979
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 980
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 983
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 984
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 987
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 988
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 999
    const/4 p2, 0x2

    .line 1001
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1002
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 976
    return-void
.end method

.method public final j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final n(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final r(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 1034
    return-void
.end method

.method public final w(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method
