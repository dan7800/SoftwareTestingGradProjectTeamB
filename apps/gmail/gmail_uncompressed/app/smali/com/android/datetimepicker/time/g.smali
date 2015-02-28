.class public final Lcom/android/datetimepicker/time/g;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private JP:F

.field private JQ:F

.field private JT:Z

.field private JU:Z

.field private KG:F

.field private KI:F

.field private KK:F

.field private KL:Z

.field private KS:Landroid/graphics/Typeface;

.field private KT:Landroid/graphics/Typeface;

.field private KU:[Ljava/lang/String;

.field private KV:[Ljava/lang/String;

.field private KW:F

.field private KX:F

.field private KY:F

.field private KZ:Z

.field private Kb:Z

.field private Kd:I

.field private Ke:I

.field private La:F

.field private Lb:F

.field private Lc:[F

.field private Ld:[F

.field private Le:[F

.field private Lf:[F

.field private Lg:F

.field private Lh:F

.field Li:Landroid/animation/ObjectAnimator;

.field Lj:Landroid/animation/ObjectAnimator;

.field private Lk:Lcom/android/datetimepicker/time/h;

.field private final mb:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/g;->JT:Z

    .line 80
    return-void
.end method

.method private a(FFFF[F[F)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 240
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v4

    .line 244
    div-float v1, p1, v4

    .line 245
    iget-object v2, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    iget-object v2, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float v2, p3, v2

    .line 249
    sub-float v3, v2, p1

    aput v3, p5, v5

    .line 250
    sub-float v3, p2, p1

    aput v3, p6, v5

    .line 251
    sub-float v3, v2, v0

    aput v3, p5, v6

    .line 252
    sub-float v3, p2, v0

    aput v3, p6, v6

    .line 253
    sub-float v3, v2, v1

    aput v3, p5, v7

    .line 254
    sub-float v3, p2, v1

    aput v3, p6, v7

    .line 255
    aput v2, p5, v8

    .line 256
    aput p2, p6, v8

    .line 257
    const/4 v3, 0x4

    add-float v4, v2, v1

    aput v4, p5, v3

    .line 258
    const/4 v3, 0x4

    add-float/2addr v1, p2

    aput v1, p6, v3

    .line 259
    const/4 v1, 0x5

    add-float v3, v2, v0

    aput v3, p5, v1

    .line 260
    const/4 v1, 0x5

    add-float/2addr v0, p2

    aput v0, p6, v1

    .line 261
    const/4 v0, 0x6

    add-float v1, v2, p1

    aput v1, p5, v0

    .line 262
    const/4 v0, 0x6

    add-float v1, p2, p1

    aput v1, p6, v0

    .line 263
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 270
    iget-object v0, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v0, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 272
    const/4 v0, 0x0

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x0

    aget v2, p6, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    aget-object v0, p4, v4

    aget v1, p5, v7

    aget v2, p6, v4

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    aget-object v0, p4, v5

    aget v1, p5, v8

    aget v2, p6, v5

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    aget-object v0, p4, v6

    const/4 v1, 0x6

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    aget-object v0, p4, v7

    aget v1, p5, v8

    aget v2, p6, v7

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 277
    aget-object v0, p4, v8

    aget v1, p5, v7

    aget v2, p6, v8

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    const/4 v0, 0x6

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x6

    aget v2, p6, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    const/4 v0, 0x7

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v8

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    const/16 v0, 0x8

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v7

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    const/16 v0, 0xa

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v5

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    const/16 v0, 0xb

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v4

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/g;->getWidth()I

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->JT:Z

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->JU:Z

    if-nez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/g;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/g;->Kd:I

    .line 182
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/g;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    .line 183
    iget v0, p0, Lcom/android/datetimepicker/time/g;->Kd:I

    iget v1, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/g;->JP:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    .line 184
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->Kb:Z

    if-nez v0, :cond_2

    .line 188
    iget v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    iget v1, p0, Lcom/android/datetimepicker/time/g;->JQ:F

    mul-float/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    .line 192
    :cond_2
    iget v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KW:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/g;->La:F

    .line 193
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->KL:Z

    if-eqz v0, :cond_3

    .line 194
    iget v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/g;->Lb:F

    .line 198
    :cond_3
    invoke-static {v8, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    iget v2, p0, Lcom/android/datetimepicker/time/g;->Lg:F

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    iget v2, p0, Lcom/android/datetimepicker/time/g;->Lh:F

    invoke-static {v6, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const-string v3, "animationRadiusMultiplier"

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Keyframe;

    aput-object v0, v4, v9

    aput-object v1, v4, v7

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v8, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v10, [Landroid/animation/Keyframe;

    aput-object v1, v4, v9

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v9

    aput-object v1, v2, v7

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/g;->Li:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/datetimepicker/time/g;->Li:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/time/g;->Lk:Lcom/android/datetimepicker/time/h;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v0, p0, Lcom/android/datetimepicker/time/g;->Lh:F

    invoke-static {v8, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    iget v2, p0, Lcom/android/datetimepicker/time/g;->Lh:F

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v2, 0x3f570a3d    # 0.84f

    iget v3, p0, Lcom/android/datetimepicker/time/g;->Lg:F

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const-string v4, "animationRadiusMultiplier"

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Keyframe;

    aput-object v0, v5, v9

    aput-object v1, v5, v7

    aput-object v2, v5, v10

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Keyframe;

    aput-object v1, v5, v9

    aput-object v2, v5, v7

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v9

    aput-object v1, v2, v7

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x271

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/g;->Lj:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/datetimepicker/time/g;->Lj:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/time/g;->Lk:Lcom/android/datetimepicker/time/h;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iput-boolean v7, p0, Lcom/android/datetimepicker/time/g;->KZ:Z

    .line 201
    iput-boolean v7, p0, Lcom/android/datetimepicker/time/g;->JU:Z

    .line 205
    :cond_4
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->KZ:Z

    if-eqz v0, :cond_6

    .line 206
    iget v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KI:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KK:F

    mul-float/2addr v1, v0

    .line 210
    iget v0, p0, Lcom/android/datetimepicker/time/g;->Kd:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    int-to-float v3, v0

    iget v4, p0, Lcom/android/datetimepicker/time/g;->La:F

    iget-object v5, p0, Lcom/android/datetimepicker/time/g;->Lc:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/g;->Ld:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/g;->a(FFFF[F[F)V

    .line 212
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->KL:Z

    if-eqz v0, :cond_5

    .line 214
    iget v0, p0, Lcom/android/datetimepicker/time/g;->KY:F

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KG:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/g;->KK:F

    mul-float/2addr v1, v0

    .line 216
    iget v0, p0, Lcom/android/datetimepicker/time/g;->Kd:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/datetimepicker/time/g;->Ke:I

    int-to-float v3, v0

    iget v4, p0, Lcom/android/datetimepicker/time/g;->Lb:F

    iget-object v5, p0, Lcom/android/datetimepicker/time/g;->Le:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/g;->Lf:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/g;->a(FFFF[F[F)V

    .line 219
    :cond_5
    iput-boolean v9, p0, Lcom/android/datetimepicker/time/g;->KZ:Z

    .line 223
    :cond_6
    iget v2, p0, Lcom/android/datetimepicker/time/g;->La:F

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->KS:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/android/datetimepicker/time/g;->KU:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/datetimepicker/time/g;->Ld:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/g;->Lc:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/g;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 224
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/g;->KL:Z

    if-eqz v0, :cond_0

    .line 225
    iget v2, p0, Lcom/android/datetimepicker/time/g;->Lb:F

    iget-object v3, p0, Lcom/android/datetimepicker/time/g;->KT:Landroid/graphics/Typeface;

    iget-object v4, p0, Lcom/android/datetimepicker/time/g;->KV:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/datetimepicker/time/g;->Lf:[F

    iget-object v6, p0, Lcom/android/datetimepicker/time/g;->Le:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/datetimepicker/time/g;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method
