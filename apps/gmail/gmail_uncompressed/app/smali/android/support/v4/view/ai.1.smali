.class Landroid/support/v4/view/ai;
.super Landroid/support/v4/view/ah;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 803
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 804
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 763
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 764
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 776
    return-void
.end method

.method final aZ()J
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 807
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 808
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 811
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 812
    return-void
.end method

.method public final d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 835
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 836
    return-void
.end method

.method public final e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 839
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 840
    return-void
.end method

.method public final k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public final p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 791
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public final q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public final resolveSizeAndState(III)I
    .locals 1

    .prologue
    .line 779
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public final t(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public final x(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 895
    return-void
.end method
