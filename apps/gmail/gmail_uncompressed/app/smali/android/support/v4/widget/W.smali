.class public Landroid/support/v4/widget/W;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final im:[I

.field private static final mW:Ljava/lang/String;


# instance fields
.field private iL:Z

.field private iP:I

.field private iT:F

.field private iU:I

.field private ke:Landroid/view/View;

.field private mX:Landroid/support/v4/widget/af;

.field private mY:Z

.field private mZ:F

.field private na:I

.field private nb:I

.field private nc:Z

.field private nd:Z

.field private ne:Z

.field private final nf:Landroid/view/animation/DecelerateInterpolator;

.field private ng:Landroid/support/v4/widget/d;

.field private nh:I

.field protected ni:I

.field private nj:F

.field protected nk:I

.field private nl:Landroid/support/v4/widget/z;

.field private nm:Landroid/view/animation/Animation;

.field private nn:Landroid/view/animation/Animation;

.field private no:Landroid/view/animation/Animation;

.field private np:Landroid/view/animation/Animation;

.field private nq:Landroid/view/animation/Animation;

.field private nr:F

.field private ns:Z

.field private nt:I

.field private nu:I

.field private nv:Z

.field private nw:Landroid/view/animation/Animation$AnimationListener;

.field private final nx:Landroid/view/animation/Animation;

.field private final ny:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const-class v0, Landroid/support/v4/widget/W;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/W;->mW:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/W;->im:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/W;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v2, 0x0

    .line 268
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-boolean v2, p0, Landroid/support/v4/widget/W;->mY:Z

    .line 97
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/W;->mZ:F

    .line 101
    iput-boolean v2, p0, Landroid/support/v4/widget/W;->nc:Z

    .line 105
    iput v1, p0, Landroid/support/v4/widget/W;->iU:I

    .line 118
    iput v1, p0, Landroid/support/v4/widget/W;->nh:I

    .line 149
    new-instance v0, Landroid/support/v4/widget/X;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/X;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v0, p0, Landroid/support/v4/widget/W;->nw:Landroid/view/animation/Animation$AnimationListener;

    .line 842
    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ac;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v0, p0, Landroid/support/v4/widget/W;->nx:Landroid/view/animation/Animation;

    .line 865
    new-instance v0, Landroid/support/v4/widget/ad;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ad;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v0, p0, Landroid/support/v4/widget/W;->ny:Landroid/view/animation/Animation;

    .line 270
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->iP:I

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->na:I

    .line 275
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/W;->setWillNotDraw(Z)V

    .line 276
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/W;->nf:Landroid/view/animation/DecelerateInterpolator;

    .line 278
    sget-object v0, Landroid/support/v4/widget/W;->im:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/W;->setEnabled(Z)V

    .line 280
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 283
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/W;->nt:I

    .line 284
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/W;->nu:I

    .line 286
    new-instance v1, Landroid/support/v4/widget/d;

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    new-instance v1, Landroid/support/v4/widget/z;

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/support/v4/widget/z;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1}, Landroid/support/v4/widget/z;->bY()V

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v2, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/W;->addView(Landroid/view/View;)V

    .line 287
    invoke-static {p0}, Landroid/support/v4/view/ad;->a(Landroid/view/ViewGroup;)V

    .line 289
    const/high16 v1, 0x42800000    # 64.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/W;->nr:F

    .line 290
    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    iput v0, p0, Landroid/support/v4/widget/W;->mZ:F

    .line 291
    return-void
.end method

.method private U(I)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 187
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/z;->setAlpha(I)V

    .line 188
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/W;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Landroid/support/v4/widget/W;->nb:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/W;F)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v4/widget/W;->m(F)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/W;IZ)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/W;->c(IZ)V

    return-void
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4

    .prologue
    .line 406
    new-instance v0, Landroid/support/v4/widget/Z;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/Z;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v0, p0, Landroid/support/v4/widget/W;->nn:Landroid/view/animation/Animation;

    .line 412
    iget-object v0, p0, Landroid/support/v4/widget/W;->nn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 413
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 414
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 415
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/W;->nn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->mY:Z

    if-eq v0, p1, :cond_1

    .line 394
    iput-boolean p2, p0, Landroid/support/v4/widget/W;->ns:Z

    .line 395
    invoke-direct {p0}, Landroid/support/v4/widget/W;->co()V

    .line 396
    iput-boolean p1, p0, Landroid/support/v4/widget/W;->mY:Z

    .line 397
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->mY:Z

    if-eqz v0, :cond_2

    .line 398
    iget v0, p0, Landroid/support/v4/widget/W;->nb:I

    iget-object v1, p0, Landroid/support/v4/widget/W;->nw:Landroid/view/animation/Animation$AnimationListener;

    iput v0, p0, Landroid/support/v4/widget/W;->ni:I

    iget-object v0, p0, Landroid/support/v4/widget/W;->nx:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->nx:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/W;->nx:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/W;->nf:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/W;->nx:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/W;->nw:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/W;->a(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/W;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->mY:Z

    return v0
.end method

.method private static a(Landroid/view/animation/Animation;)Z
    .locals 1

    .prologue
    .line 669
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/z;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/widget/W;F)V
    .locals 3

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/W;->ni:I

    iget v1, p0, Landroid/support/v4/widget/W;->nk:I

    iget v2, p0, Landroid/support/v4/widget/W;->ni:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/W;->c(IZ)V

    return-void
.end method

.method private c(IZ)V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->bringToFront()V

    .line 898
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/d;->offsetTopAndBottom(I)V

    .line 899
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->nb:I

    .line 900
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 901
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->invalidate()V

    .line 903
    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/support/v4/widget/W;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->ns:Z

    return v0
.end method

.method private static cn()Z
    .locals 2

    .prologue
    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private co()V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 507
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/W;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 508
    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    iput-object v1, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    .line 514
    :cond_0
    return-void

    .line 506
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/af;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/W;->mX:Landroid/support/v4/widget/af;

    return-object v0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 906
    invoke-static {p1}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 907
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 908
    iget v2, p0, Landroid/support/v4/widget/W;->iU:I

    if-ne v1, v2, :cond_0

    .line 911
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 912
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->iU:I

    .line 914
    :cond_0
    return-void

    .line 911
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 656
    invoke-static {p0, p1}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 657
    if-gez v0, :cond_0

    .line 658
    const/high16 v0, -0x40800000    # -1.0f

    .line 660
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/view/P;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/d;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v4/widget/W;)V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/W;->U(I)V

    return-void
.end method

.method static synthetic g(Landroid/support/v4/widget/W;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nd:Z

    return v0
.end method

.method static synthetic h(Landroid/support/v4/widget/W;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/W;->nb:I

    return v0
.end method

.method static synthetic i(Landroid/support/v4/widget/W;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/W;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic j(Landroid/support/v4/widget/W;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nv:Z

    return v0
.end method

.method static synthetic k(Landroid/support/v4/widget/W;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    return v0
.end method

.method private k(II)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    iget-boolean v1, p0, Landroid/support/v4/widget/W;->nd:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v4/widget/W;->cn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    :goto_0
    return-object v0

    .line 432
    :cond_0
    new-instance v1, Landroid/support/v4/widget/aa;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/widget/aa;-><init>(Landroid/support/v4/widget/W;II)V

    .line 440
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 442
    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    .line 444
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v1

    .line 445
    goto :goto_0
.end method

.method static synthetic l(Landroid/support/v4/widget/W;)F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/v4/widget/W;->nj:F

    return v0
.end method

.method private m(F)V
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Landroid/support/v4/widget/W;->cn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/W;->U(I)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/ad;->d(Landroid/view/View;F)V

    .line 388
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-static {v0, p1}, Landroid/support/v4/view/ad;->e(Landroid/view/View;F)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/widget/af;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Landroid/support/v4/widget/W;->mX:Landroid/support/v4/widget/af;

    .line 323
    return-void
.end method

.method public final varargs b([I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/W;->co()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/z;->a([I)V

    .line 464
    return-void
.end method

.method public cp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    .line 585
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 587
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    move v0, v1

    .line 594
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 587
    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 594
    :cond_4
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ad;->g(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/support/v4/widget/W;->nh:I

    if-gez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return p2

    .line 296
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 298
    iget p2, p0, Landroid/support/v4/widget/W;->nh:I

    goto :goto_0

    .line 299
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/W;->nh:I

    if-lt p2, v0, :cond_0

    .line 301
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 339
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/W;->mY:Z

    if-eq v0, p1, :cond_3

    .line 341
    iput-boolean p1, p0, Landroid/support/v4/widget/W;->mY:Z

    .line 342
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nv:Z

    if-nez v0, :cond_2

    .line 344
    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    iget v1, p0, Landroid/support/v4/widget/W;->nk:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 348
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/W;->nb:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/W;->c(IZ)V

    .line 350
    iput-boolean v2, p0, Landroid/support/v4/widget/W;->ns:Z

    .line 351
    iget-object v0, p0, Landroid/support/v4/widget/W;->nw:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/d;->setVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/z;->setAlpha(I)V

    :cond_0
    new-instance v1, Landroid/support/v4/widget/Y;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/Y;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v1, p0, Landroid/support/v4/widget/W;->nm:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/W;->nm:Landroid/view/animation/Animation;

    iget v2, p0, Landroid/support/v4/widget/W;->na:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/W;->nm:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    :goto_1
    return-void

    .line 346
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    float-to-int v0, v0

    goto :goto_0

    .line 353
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/W;->a(ZZ)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 600
    invoke-direct {p0}, Landroid/support/v4/widget/W;->co()V

    .line 602
    invoke-static {p1}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 604
    iget-boolean v2, p0, Landroid/support/v4/widget/W;->ne:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 605
    iput-boolean v0, p0, Landroid/support/v4/widget/W;->ne:Z

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/W;->ne:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->cp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/widget/W;->mY:Z

    if-eqz v2, :cond_2

    .line 652
    :cond_1
    :goto_0
    return v0

    .line 613
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 652
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->iL:Z

    goto :goto_0

    .line 615
    :pswitch_1
    iget v1, p0, Landroid/support/v4/widget/W;->nk:I

    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v5}, Landroid/support/v4/widget/W;->c(IZ)V

    .line 616
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/W;->iU:I

    .line 617
    iput-boolean v0, p0, Landroid/support/v4/widget/W;->iL:Z

    .line 618
    iget v1, p0, Landroid/support/v4/widget/W;->iU:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/W;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 619
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 622
    iput v1, p0, Landroid/support/v4/widget/W;->iT:F

    .line 625
    :pswitch_2
    iget v1, p0, Landroid/support/v4/widget/W;->iU:I

    if-ne v1, v4, :cond_4

    .line 626
    sget-object v1, Landroid/support/v4/widget/W;->mW:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 630
    :cond_4
    iget v1, p0, Landroid/support/v4/widget/W;->iU:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/W;->e(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 631
    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    .line 634
    iget v0, p0, Landroid/support/v4/widget/W;->iT:F

    sub-float v0, v1, v0

    .line 635
    iget v1, p0, Landroid/support/v4/widget/W;->iP:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/W;->iL:Z

    if-nez v0, :cond_3

    .line 636
    iput-boolean v5, p0, Landroid/support/v4/widget/W;->iL:Z

    .line 637
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/z;->setAlpha(I)V

    goto :goto_1

    .line 642
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/W;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 647
    :pswitch_4
    iput-boolean v0, p0, Landroid/support/v4/widget/W;->iL:Z

    .line 648
    iput v4, p0, Landroid/support/v4/widget/W;->iU:I

    goto :goto_1

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getMeasuredWidth()I

    move-result v0

    .line 528
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getMeasuredHeight()I

    move-result v1

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    if-nez v2, :cond_2

    .line 533
    invoke-direct {p0}, Landroid/support/v4/widget/W;->co()V

    .line 535
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    .line 539
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingLeft()I

    move-result v3

    .line 540
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingTop()I

    move-result v4

    .line 541
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 542
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 543
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 544
    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getMeasuredWidth()I

    move-result v1

    .line 545
    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v2}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v2

    .line 546
    iget-object v3, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/W;->nb:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/W;->nb:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/support/v4/widget/d;->layout(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 552
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 553
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0}, Landroid/support/v4/widget/W;->co()V

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    if-nez v0, :cond_2

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/W;->ke:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 563
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget v1, p0, Landroid/support/v4/widget/W;->nt:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/W;->nu:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/d;->measure(II)V

    .line 565
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nv:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nc:Z

    if-nez v0, :cond_3

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/W;->nc:Z

    .line 567
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/W;->nk:I

    iput v0, p0, Landroid/support/v4/widget/W;->nb:I

    .line 569
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/W;->nh:I

    .line 571
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 572
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/W;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    if-ne v1, v2, :cond_4

    .line 573
    iput v0, p0, Landroid/support/v4/widget/W;->nh:I

    goto :goto_0

    .line 571
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 674
    invoke-static {p1}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 676
    iget-boolean v3, p0, Landroid/support/v4/widget/W;->ne:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 677
    iput-boolean v1, p0, Landroid/support/v4/widget/W;->ne:Z

    .line 680
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/W;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/widget/W;->ne:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/W;->cp()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    .line 810
    :goto_0
    return v0

    .line 685
    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v2

    .line 810
    goto :goto_0

    .line 687
    :pswitch_1
    invoke-static {p1, v1}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->iU:I

    .line 688
    iput-boolean v1, p0, Landroid/support/v4/widget/W;->iL:Z

    goto :goto_1

    .line 692
    :pswitch_2
    iget v0, p0, Landroid/support/v4/widget/W;->iU:I

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 693
    if-gez v0, :cond_4

    .line 694
    sget-object v0, Landroid/support/v4/widget/W;->mW:Ljava/lang/String;

    const-string v2, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 695
    goto :goto_0

    .line 698
    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 699
    iget v3, p0, Landroid/support/v4/widget/W;->iT:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    .line 700
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->iL:Z

    if-eqz v0, :cond_3

    .line 701
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/z;->g(Z)V

    .line 702
    iget v0, p0, Landroid/support/v4/widget/W;->mZ:F

    div-float v0, v3, v0

    .line 703
    cmpg-float v4, v0, v10

    if-gez v4, :cond_5

    move v0, v1

    .line 704
    goto :goto_0

    .line 706
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 707
    float-to-double v6, v4

    const-wide v8, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v0, v6

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v0, v5

    .line 708
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/widget/W;->mZ:F

    sub-float v6, v0, v6

    .line 709
    iget-boolean v0, p0, Landroid/support/v4/widget/W;->nv:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    iget v7, p0, Landroid/support/v4/widget/W;->nk:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    .line 711
    :goto_2
    mul-float v7, v0, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 713
    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, v6, v7

    float-to-double v8, v7

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v8, v6

    double-to-float v6, v6

    mul-float/2addr v6, v13

    .line 715
    mul-float v7, v0, v6

    mul-float/2addr v7, v13

    .line 717
    iget v8, p0, Landroid/support/v4/widget/W;->nk:I

    mul-float/2addr v0, v4

    add-float/2addr v0, v7

    float-to-int v0, v0

    add-int/2addr v0, v8

    .line 720
    iget-object v4, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v4}, Landroid/support/v4/widget/d;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 721
    iget-object v4, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v4, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 723
    :cond_6
    iget-boolean v1, p0, Landroid/support/v4/widget/W;->nd:Z

    if-nez v1, :cond_7

    .line 724
    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-static {v1, v12}, Landroid/support/v4/view/ad;->d(Landroid/view/View;F)V

    .line 725
    iget-object v1, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-static {v1, v12}, Landroid/support/v4/view/ad;->e(Landroid/view/View;F)V

    .line 727
    :cond_7
    iget v1, p0, Landroid/support/v4/widget/W;->mZ:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_c

    .line 728
    iget-boolean v1, p0, Landroid/support/v4/widget/W;->nd:Z

    if-eqz v1, :cond_8

    .line 729
    iget v1, p0, Landroid/support/v4/widget/W;->mZ:F

    div-float v1, v3, v1

    invoke-direct {p0, v1}, Landroid/support/v4/widget/W;->m(F)V

    .line 731
    :cond_8
    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1}, Landroid/support/v4/widget/z;->getAlpha()I

    move-result v1

    const/16 v3, 0x4c

    if-le v1, v3, :cond_9

    iget-object v1, p0, Landroid/support/v4/widget/W;->no:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/W;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 734
    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1}, Landroid/support/v4/widget/z;->getAlpha()I

    move-result v1

    const/16 v3, 0x4c

    invoke-direct {p0, v1, v3}, Landroid/support/v4/widget/W;->k(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/W;->no:Landroid/view/animation/Animation;

    .line 736
    :cond_9
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v5

    .line 737
    iget-object v3, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/z;->h(F)V

    .line 738
    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/z;->g(F)V

    .line 746
    :cond_a
    :goto_3
    const/high16 v1, -0x41800000    # -0.25f

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    mul-float v3, v6, v13

    add-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    .line 747
    iget-object v3, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/z;->i(F)V

    .line 748
    iget v1, p0, Landroid/support/v4/widget/W;->nb:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/W;->c(IZ)V

    goto/16 :goto_1

    .line 709
    :cond_b
    iget v0, p0, Landroid/support/v4/widget/W;->nr:F

    goto/16 :goto_2

    .line 740
    :cond_c
    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1}, Landroid/support/v4/widget/z;->getAlpha()I

    move-result v1

    const/16 v3, 0xff

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Landroid/support/v4/widget/W;->np:Landroid/view/animation/Animation;

    invoke-static {v1}, Landroid/support/v4/widget/W;->a(Landroid/view/animation/Animation;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 743
    iget-object v1, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v1}, Landroid/support/v4/widget/z;->getAlpha()I

    move-result v1

    const/16 v3, 0xff

    invoke-direct {p0, v1, v3}, Landroid/support/v4/widget/W;->k(II)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/W;->np:Landroid/view/animation/Animation;

    goto :goto_3

    .line 754
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 755
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/W;->iU:I

    goto/16 :goto_1

    .line 760
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/W;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 765
    :pswitch_5
    iget v3, p0, Landroid/support/v4/widget/W;->iU:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 766
    if-ne v0, v2, :cond_d

    .line 767
    sget-object v0, Landroid/support/v4/widget/W;->mW:Ljava/lang/String;

    const-string v2, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, v1

    .line 769
    goto/16 :goto_0

    .line 771
    :cond_e
    iget v0, p0, Landroid/support/v4/widget/W;->iU:I

    invoke-static {p1, v0}, Landroid/support/v4/view/P;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 772
    invoke-static {p1, v0}, Landroid/support/v4/view/P;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 773
    iget v3, p0, Landroid/support/v4/widget/W;->iT:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    .line 774
    iput-boolean v1, p0, Landroid/support/v4/widget/W;->iL:Z

    .line 775
    iget v3, p0, Landroid/support/v4/widget/W;->mZ:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    .line 776
    invoke-direct {p0, v2, v2}, Landroid/support/v4/widget/W;->a(ZZ)V

    .line 805
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/W;->iU:I

    move v0, v1

    .line 806
    goto/16 :goto_0

    .line 779
    :cond_f
    iput-boolean v1, p0, Landroid/support/v4/widget/W;->mY:Z

    .line 780
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/z;->h(F)V

    .line 781
    const/4 v0, 0x0

    .line 782
    iget-boolean v2, p0, Landroid/support/v4/widget/W;->nd:Z

    if-nez v2, :cond_10

    .line 783
    new-instance v0, Landroid/support/v4/widget/ab;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ab;-><init>(Landroid/support/v4/widget/W;)V

    .line 802
    :cond_10
    iget v2, p0, Landroid/support/v4/widget/W;->nb:I

    iget-boolean v3, p0, Landroid/support/v4/widget/W;->nd:Z

    if-eqz v3, :cond_13

    iput v2, p0, Landroid/support/v4/widget/W;->ni:I

    invoke-static {}, Landroid/support/v4/widget/W;->cn()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v2}, Landroid/support/v4/widget/z;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v4/widget/W;->nj:F

    :goto_5
    new-instance v2, Landroid/support/v4/widget/ae;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/ae;-><init>(Landroid/support/v4/widget/W;)V

    iput-object v2, p0, Landroid/support/v4/widget/W;->nq:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroid/support/v4/widget/W;->nq:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_11

    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_11
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v2, p0, Landroid/support/v4/widget/W;->nq:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    .line 803
    :goto_6
    iget-object v0, p0, Landroid/support/v4/widget/W;->nl:Landroid/support/v4/widget/z;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/z;->g(Z)V

    goto :goto_4

    .line 802
    :cond_12
    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-static {v2}, Landroid/support/v4/view/ad;->t(Landroid/view/View;)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/W;->nj:F

    goto :goto_5

    :cond_13
    iput v2, p0, Landroid/support/v4/widget/W;->ni:I

    iget-object v2, p0, Landroid/support/v4/widget/W;->ny:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    iget-object v2, p0, Landroid/support/v4/widget/W;->ny:Landroid/view/animation/Animation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Landroid/support/v4/widget/W;->ny:Landroid/view/animation/Animation;

    iget-object v3, p0, Landroid/support/v4/widget/W;->nf:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v0, :cond_14

    iget-object v2, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_14
    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->clearAnimation()V

    iget-object v0, p0, Landroid/support/v4/widget/W;->ng:Landroid/support/v4/widget/d;

    iget-object v2, p0, Landroid/support/v4/widget/W;->ny:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/d;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method
