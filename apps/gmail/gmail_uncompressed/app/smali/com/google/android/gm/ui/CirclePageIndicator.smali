.class public Lcom/google/android/gm/ui/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/aM;


# instance fields
.field private aGq:Landroid/support/v4/view/ViewPager;

.field private final bpw:F

.field private final bpx:F

.field private bpy:Landroid/graphics/Paint;

.field private bpz:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f010129

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/google/android/gm/af;->ry:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 61
    :try_start_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpy:Landroid/graphics/Paint;

    .line 62
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpy:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpy:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpy:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const v4, 0x1060012

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpz:Landroid/graphics/Paint;

    .line 69
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpz:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpz:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpz:Landroid/graphics/Paint;

    const/4 v3, 0x1

    const v4, 0x1060013

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const/4 v2, 0x2

    const v3, 0x7f0c0175

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    .line 77
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpx:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private Il()I
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->Im()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private Im()I
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getCount()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpx:F

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private In()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final D(I)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->invalidate()V

    .line 208
    return-void
.end method

.method public final E(I)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final a(IFI)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public final e(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    .line 88
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 166
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v3, v0

    .line 169
    cmpg-float v0, v1, v4

    if-lez v0, :cond_0

    cmpg-float v0, v3, v4

    if-gtz v0, :cond_1

    .line 190
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getCount()I

    move-result v4

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v0

    .line 176
    :goto_0
    iget v2, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    div-float v5, v2, v6

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->Im()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float v2, v1, v5

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v6

    add-float v6, v1, v3

    .line 184
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    .line 185
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpy:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v3, v6, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iget v1, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpw:F

    iget v7, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpx:F

    add-float/2addr v1, v7

    add-float/2addr v3, v1

    .line 184
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 175
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/ui/CirclePageIndicator;->bpz:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/gm/ui/CirclePageIndicator;->getDefaultSize(II)I

    move-result v0

    .line 110
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/gm/ui/CirclePageIndicator;->getDefaultSize(II)I

    move-result v1

    .line 126
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 127
    return-void

    .line 96
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 99
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->Il()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 102
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->Il()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    .line 115
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->In()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 118
    :sswitch_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->In()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gm/ui/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 110
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method
