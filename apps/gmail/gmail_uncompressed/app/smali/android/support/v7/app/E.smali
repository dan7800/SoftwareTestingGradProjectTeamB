.class abstract Landroid/support/v7/app/E;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final pk:F


# instance fields
.field private final gO:I

.field private final mb:Landroid/graphics/Paint;

.field private final pl:F

.field private final pm:F

.field private final pn:F

.field private final po:F

.field private final pp:F

.field private final pq:Z

.field private final pr:Landroid/graphics/Path;

.field private ps:Z

.field private pt:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/app/E;->pk:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    .line 56
    iput-boolean v6, p0, Landroid/support/v7/app/E;->ps:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/a/l;->rD:[I

    sget v3, Landroid/support/v7/a/b;->pw:I

    sget v4, Landroid/support/v7/a/k;->qN:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    iget-object v1, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v1, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    sget v2, Landroid/support/v7/a/l;->rF:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget v1, Landroid/support/v7/a/l;->rG:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->gO:I

    .line 71
    sget v1, Landroid/support/v7/a/l;->rE:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->pn:F

    .line 72
    sget v1, Landroid/support/v7/a/l;->rL:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->pm:F

    .line 74
    sget v1, Landroid/support/v7/a/l;->rK:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->pl:F

    .line 75
    sget v1, Landroid/support/v7/a/l;->rH:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->pp:F

    .line 76
    sget v1, Landroid/support/v7/a/l;->rJ:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/E;->pq:Z

    .line 77
    sget v1, Landroid/support/v7/a/l;->rI:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/E;->po:F

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v7/app/E;->pl:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    return-void
.end method


# virtual methods
.method abstract cX()Z
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/support/v7/app/E;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/E;->cX()Z

    move-result v3

    .line 101
    iget v0, p0, Landroid/support/v7/app/E;->pn:F

    iget v1, p0, Landroid/support/v7/app/E;->pm:F

    iget v4, p0, Landroid/support/v7/app/E;->pt:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v4

    add-float v4, v0, v1

    .line 102
    iget v0, p0, Landroid/support/v7/app/E;->pn:F

    iget v1, p0, Landroid/support/v7/app/E;->po:F

    iget v5, p0, Landroid/support/v7/app/E;->pt:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v5

    add-float v5, v0, v1

    .line 104
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/app/E;->pl:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    iget v6, p0, Landroid/support/v7/app/E;->pt:F

    const/4 v7, 0x0

    sub-float/2addr v1, v7

    mul-float/2addr v1, v6

    add-float v6, v0, v1

    .line 106
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/app/E;->pk:F

    iget v7, p0, Landroid/support/v7/app/E;->pt:F

    const/4 v8, 0x0

    sub-float/2addr v1, v8

    mul-float/2addr v1, v7

    add-float v7, v0, v1

    .line 109
    if-eqz v3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    iget v8, p0, Landroid/support/v7/app/E;->pt:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    add-float/2addr v1, v0

    .line 110
    iget v0, p0, Landroid/support/v7/app/E;->pp:F

    iget v8, p0, Landroid/support/v7/app/E;->pl:F

    add-float/2addr v0, v8

    iget v8, p0, Landroid/support/v7/app/E;->pt:F

    const/4 v9, 0x0

    sub-float/2addr v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v0, v8

    .line 111
    iget-object v8, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 113
    neg-float v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 115
    iget-object v9, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    add-float v10, v8, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v9, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 118
    float-to-double v10, v4

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v5, v10

    .line 119
    float-to-double v10, v4

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-float v4, v6

    .line 122
    iget-object v6, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iget-object v6, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 126
    iget-object v6, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    neg-float v0, v0

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v0, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 128
    iget-object v0, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v0, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-boolean v0, p0, Landroid/support/v7/app/E;->pq:Z

    if-eqz v0, :cond_4

    .line 135
    iget-boolean v0, p0, Landroid/support/v7/app/E;->ps:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 140
    :cond_0
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/app/E;->pr:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void

    .line 109
    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 135
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 137
    :cond_4
    if-eqz v3, :cond_0

    .line 138
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/support/v7/app/E;->gO:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/support/v7/app/E;->gO:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x3

    return v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected final m(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v7/app/E;->ps:Z

    .line 94
    return-void
.end method

.method public final q(F)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Landroid/support/v7/app/E;->pt:F

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/app/E;->invalidateSelf()V

    .line 184
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/app/E;->mb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    return-void
.end method
