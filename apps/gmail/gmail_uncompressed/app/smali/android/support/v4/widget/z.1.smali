.class final Landroid/support/v4/widget/z;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final lJ:Landroid/view/animation/Interpolator;

.field private static final lK:Landroid/view/animation/Interpolator;

.field private static final lL:Landroid/view/animation/Interpolator;

.field private static final lM:Landroid/view/animation/Interpolator;


# instance fields
.field private final lN:[I

.field private final lO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final lP:Landroid/support/v4/widget/E;

.field private lQ:F

.field private lR:Landroid/content/res/Resources;

.field private lS:Landroid/view/View;

.field private lT:F

.field private lU:D

.field private lV:D

.field lW:Z

.field private final lX:Landroid/graphics/drawable/Drawable$Callback;

.field private mAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->lJ:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/support/v4/widget/D;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/D;-><init>(B)V

    sput-object v0, Landroid/support/v4/widget/z;->lK:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/support/v4/widget/F;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/F;-><init>(B)V

    sput-object v0, Landroid/support/v4/widget/z;->lL:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/z;->lM:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 76
    new-array v0, v6, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Landroid/support/v4/widget/z;->lN:[I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->lO:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Landroid/support/v4/widget/C;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/C;-><init>(Landroid/support/v4/widget/z;)V

    iput-object v0, p0, Landroid/support/v4/widget/z;->lX:Landroid/graphics/drawable/Drawable$Callback;

    .line 113
    iput-object p2, p0, Landroid/support/v4/widget/z;->lS:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/z;->lR:Landroid/content/res/Resources;

    .line 116
    new-instance v0, Landroid/support/v4/widget/E;

    iget-object v1, p0, Landroid/support/v4/widget/z;->lX:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/E;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    .line 117
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    iget-object v1, p0, Landroid/support/v4/widget/z;->lN:[I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/E;->setColors([I)V

    .line 119
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    iget-object v1, p0, Landroid/support/v4/widget/z;->lR:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v4/widget/z;->lU:D

    float-to-double v2, v1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v4/widget/z;->lV:D

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/E;->setStrokeWidth(F)V

    const-wide v2, 0x4021800000000000L    # 8.75

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/E;->a(D)V

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cb()V

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/widget/E;->e(FF)V

    iget-wide v2, p0, Landroid/support/v4/widget/z;->lU:D

    double-to-int v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/z;->lV:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/E;->j(II)V

    .line 120
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    new-instance v1, Landroid/support/v4/widget/A;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/widget/A;-><init>(Landroid/support/v4/widget/z;Landroid/support/v4/widget/E;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v2, Landroid/support/v4/widget/z;->lJ:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/support/v4/widget/B;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/B;-><init>(Landroid/support/v4/widget/z;Landroid/support/v4/widget/E;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v1, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    .line 121
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/z;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/v4/widget/z;->lT:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/z;F)F
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Landroid/support/v4/widget/z;->lT:F

    return p1
.end method

.method static synthetic a(FLandroid/support/v4/widget/E;)V
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/support/v4/widget/E;->ci()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v4/widget/E;->ce()F

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/widget/E;->cf()F

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/widget/E;->ce()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/E;->j(F)V

    invoke-virtual {p1}, Landroid/support/v4/widget/E;->ci()F

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/widget/E;->ci()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/E;->setRotation(F)V

    return-void
.end method

.method static synthetic bZ()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/z;->lL:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic ca()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/widget/z;->lK:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public final varargs a([I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->setColors([I)V

    .line 205
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cb()V

    .line 206
    return-void
.end method

.method public final bY()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/E;->setBackgroundColor(I)V

    .line 194
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/support/v4/widget/z;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 222
    iget v2, p0, Landroid/support/v4/widget/z;->lQ:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    iget-object v2, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/E;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 225
    return-void
.end method

.method public final g(F)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->g(F)V

    .line 167
    return-void
.end method

.method public final g(Z)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->h(Z)V

    .line 160
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Landroid/support/v4/widget/z;->lV:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Landroid/support/v4/widget/z;->lU:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, -0x3

    return v0
.end method

.method public final h(F)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/E;->j(F)V

    .line 177
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->k(F)V

    .line 178
    return-void
.end method

.method public final i(F)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->setRotation(F)V

    .line 187
    return-void
.end method

.method public final isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v3, p0, Landroid/support/v4/widget/z;->lO:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 261
    :goto_0
    if-ge v2, v4, :cond_1

    .line 262
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 263
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 267
    :goto_1
    return v0

    .line 261
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 267
    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->setAlpha(I)V

    .line 230
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/E;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 239
    return-void
.end method

.method final setRotation(F)V
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Landroid/support/v4/widget/z;->lQ:F

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/widget/z;->invalidateSelf()V

    .line 245
    return-void
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 273
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cj()V

    .line 275
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cg()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v1}, Landroid/support/v4/widget/E;->cd()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/z;->lW:Z

    .line 277
    iget-object v0, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 278
    iget-object v0, p0, Landroid/support/v4/widget/z;->lS:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cb()V

    .line 281
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->ck()V

    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    iget-object v0, p0, Landroid/support/v4/widget/z;->lS:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/z;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/z;->lS:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/z;->setRotation(F)V

    .line 291
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/E;->h(Z)V

    .line 292
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cb()V

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/z;->lP:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->ck()V

    .line 294
    return-void
.end method
