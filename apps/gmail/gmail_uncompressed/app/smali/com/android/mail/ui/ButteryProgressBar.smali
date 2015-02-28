.class public Lcom/android/mail/ui/ButteryProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final aGr:Landroid/graphics/drawable/GradientDrawable;

.field private final aGs:Landroid/animation/ValueAnimator;

.field private final aGt:I

.field private final aGu:I

.field private final aGv:I

.field private aGw:I

.field private final art:F

.field private final mb:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ButteryProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mb:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->art:F

    .line 88
    sget-object v0, Lcom/android/mail/i;->rx:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 90
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGt:I

    .line 92
    const/4 v0, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->art:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGu:I

    .line 95
    const/4 v0, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->art:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGv:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/ui/aq;

    invoke-direct {v1, v5}, Lcom/android/mail/ui/aq;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/mail/ui/ap;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/ap;-><init>(Lcom/android/mail/ui/ButteryProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->mb:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGt:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v4, [I

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGt:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x22000000

    or-int/2addr v3, v4

    aput v3, v2, v5

    aput v5, v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGr:Landroid/graphics/drawable/GradientDrawable;

    .line 119
    return-void

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 103
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private start()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 166
    invoke-direct {p0}, Lcom/android/mail/ui/ButteryProgressBar;->start()V

    .line 167
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 172
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 173
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGr:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 147
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v8

    .line 152
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGw:I

    add-int/lit8 v0, v0, -0x1

    shr-int v9, v8, v0

    .line 155
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGw:I

    if-ge v6, v0, :cond_0

    .line 156
    add-int/lit8 v0, v6, 0x1

    shr-int v0, v8, v0

    int-to-float v0, v0

    mul-float v1, v7, v0

    .line 157
    if-nez v6, :cond_2

    add-int v0, v8, v9

    int-to-float v0, v0

    .line 158
    :goto_1
    iget v2, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGv:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, v9

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    int-to-float v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGu:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/mail/ui/ButteryProgressBar;->mb:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 157
    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getWidth()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGr:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGu:I

    invoke-virtual {p0}, Lcom/android/mail/ui/ButteryProgressBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGu:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 128
    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/ui/ButteryProgressBar;->art:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    div-float/2addr v0, v1

    .line 130
    const v1, 0x3e99999a    # 0.3f

    sub-float v2, v0, v6

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    .line 131
    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v6

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    .line 132
    iget-object v2, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGw:I

    .line 135
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 179
    if-nez p2, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/mail/ui/ButteryProgressBar;->start()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ButteryProgressBar;->aGs:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
