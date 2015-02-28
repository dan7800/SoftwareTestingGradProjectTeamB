.class public final Landroid/support/v7/widget/U;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method private static x(II)I
    .locals 2

    .prologue
    .line 70
    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 74
    sparse-switch v1, :sswitch_data_0

    .line 85
    :goto_0
    :sswitch_0
    return p0

    .line 79
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 82
    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/support/v7/widget/U;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/support/v7/widget/U;->x(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/U;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/support/v7/widget/U;->x(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/U;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method
