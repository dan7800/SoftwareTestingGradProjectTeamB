.class public abstract Landroid/support/v4/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final kt:I


# instance fields
.field private final kc:Landroid/support/v4/widget/b;

.field private final kd:Landroid/view/animation/Interpolator;

.field private final ke:Landroid/view/View;

.field private kf:Ljava/lang/Runnable;

.field private kg:[F

.field private kh:[F

.field private ki:I

.field private kj:I

.field private kk:[F

.field private kl:[F

.field private km:[F

.field private kn:Z

.field private ko:Z

.field private kp:Z

.field private kq:Z

.field private kr:Z

.field private ks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/a;->kt:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x3a83126f    # 0.001f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/support/v4/widget/b;

    invoke-direct {v0}, Landroid/support/v4/widget/b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    .line 140
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->kd:Landroid/view/animation/Interpolator;

    .line 149
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/v4/widget/a;->kg:[F

    .line 152
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/v4/widget/a;->kh:[F

    .line 161
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/support/v4/widget/a;->kk:[F

    .line 164
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/support/v4/widget/a;->kl:[F

    .line 167
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/support/v4/widget/a;->km:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    const v1, 0x44c4e000    # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 214
    const v2, 0x439d8000    # 315.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 215
    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v4/widget/a;->km:[F

    div-float v3, v1, v6

    aput v3, v2, v5

    iget-object v2, p0, Landroid/support/v4/widget/a;->km:[F

    div-float/2addr v1, v6

    aput v1, v2, v4

    .line 216
    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/v4/widget/a;->kl:[F

    div-float v2, v0, v6

    aput v2, v1, v5

    iget-object v1, p0, Landroid/support/v4/widget/a;->kl:[F

    div-float/2addr v0, v6

    aput v0, v1, v4

    .line 218
    iput v4, p0, Landroid/support/v4/widget/a;->ki:I

    .line 219
    iget-object v0, p0, Landroid/support/v4/widget/a;->kh:[F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->kh:[F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    aput v1, v0, v4

    .line 220
    iget-object v0, p0, Landroid/support/v4/widget/a;->kg:[F

    const v1, 0x3e4ccccd    # 0.2f

    aput v1, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->kg:[F

    const v1, 0x3e4ccccd    # 0.2f

    aput v1, v0, v4

    .line 221
    iget-object v0, p0, Landroid/support/v4/widget/a;->kk:[F

    aput v7, v0, v5

    iget-object v0, p0, Landroid/support/v4/widget/a;->kk:[F

    aput v7, v0, v4

    .line 222
    sget v0, Landroid/support/v4/widget/a;->kt:I

    iput v0, p0, Landroid/support/v4/widget/a;->kj:I

    .line 223
    iget-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->J(I)V

    .line 224
    iget-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->K(I)V

    .line 225
    return-void

    .line 149
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private static a(FFF)F
    .locals 1

    .prologue
    .line 663
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 668
    :goto_0
    return p2

    .line 665
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 666
    goto :goto_0

    :cond_1
    move p2, p0

    .line 668
    goto :goto_0
.end method

.method private a(IFFF)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/v4/widget/a;->kg:[F

    aget v0, v0, p1

    .line 540
    iget-object v2, p0, Landroid/support/v4/widget/a;->kh:[F

    aget v2, v2, p1

    .line 541
    mul-float/2addr v0, p3

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/a;->b(FF)F

    move-result v2

    sub-float v3, p3, p2

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/a;->b(FF)F

    move-result v0

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/a;->kd:Landroid/view/animation/Interpolator;

    neg-float v0, v0

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    :goto_0
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    .line 542
    :goto_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    move v0, v1

    .line 558
    :goto_2
    return v0

    .line 541
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/widget/a;->kd:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 547
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/a;->kk:[F

    aget v2, v2, p1

    .line 548
    iget-object v3, p0, Landroid/support/v4/widget/a;->kl:[F

    aget v3, v3, p1

    .line 549
    iget-object v4, p0, Landroid/support/v4/widget/a;->km:[F

    aget v4, v4, p1

    .line 550
    mul-float/2addr v2, p4

    .line 555
    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 556
    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    goto :goto_2

    .line 558
    :cond_3
    neg-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->kq:Z

    return v0
.end method

.method private b(FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 624
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/a;->ki:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 632
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 634
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->kq:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/a;->ki:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 637
    goto :goto_0

    .line 642
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 644
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->ko:Z

    return v0
.end method

.method private bA()V
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->ko:Z

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->kq:Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    invoke-virtual {v0}, Landroid/support/v4/widget/b;->bA()V

    goto :goto_0
.end method

.method private bz()Z
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    .line 493
    invoke-virtual {v0}, Landroid/support/v4/widget/b;->bD()I

    move-result v1

    .line 494
    invoke-virtual {v0}, Landroid/support/v4/widget/b;->bC()I

    move-result v0

    .line 496
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/a;->I(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->ko:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v4/widget/a;)Landroid/support/v4/widget/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    return-object v0
.end method

.method static synthetic e(F)F
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic e(II)I
    .locals 0

    .prologue
    .line 84
    if-le p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-gez p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v4/widget/a;->bz()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->kq:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->kp:Z

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/a;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->kp:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/a;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method static synthetic j(Landroid/support/v4/widget/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public abstract H(I)V
.end method

.method public abstract I(I)Z
.end method

.method public final e(Z)Landroid/support/v4/widget/a;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->kr:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/a;->bA()V

    .line 239
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/widget/a;->kr:Z

    .line 240
    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 456
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->kr:Z

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 461
    packed-switch v2, :pswitch_data_0

    .line 485
    :cond_2
    :goto_1
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->ks:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->kq:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 463
    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->kp:Z

    .line 464
    iput-boolean v0, p0, Landroid/support/v4/widget/a;->kn:Z

    .line 467
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v2

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v3

    .line 471
    iget-object v4, p0, Landroid/support/v4/widget/a;->kc:Landroid/support/v4/widget/b;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/b;->c(FF)V

    .line 475
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->kq:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v4/widget/a;->bz()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    iget-object v2, p0, Landroid/support/v4/widget/a;->kf:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    new-instance v2, Landroid/support/v4/widget/c;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/a;B)V

    iput-object v2, p0, Landroid/support/v4/widget/a;->kf:Ljava/lang/Runnable;

    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->kq:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/a;->ko:Z

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->kn:Z

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v4/widget/a;->kj:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/widget/a;->ke:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/a;->kf:Ljava/lang/Runnable;

    iget v4, p0, Landroid/support/v4/widget/a;->kj:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->kn:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/support/v4/widget/a;->kf:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 481
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/a;->bA()V

    goto :goto_1

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
