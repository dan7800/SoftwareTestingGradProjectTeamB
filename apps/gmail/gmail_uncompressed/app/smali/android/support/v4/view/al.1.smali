.class Landroid/support/v4/view/al;
.super Landroid/support/v4/view/ak;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Landroid/support/v4/view/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1056
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 1057
    return-void
.end method

.method public final d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1066
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1067
    return-void
.end method

.method public final m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public final u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0
.end method
