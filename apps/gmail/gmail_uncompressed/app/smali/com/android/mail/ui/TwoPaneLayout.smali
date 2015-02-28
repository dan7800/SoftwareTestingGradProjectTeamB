.class final Lcom/android/mail/ui/TwoPaneLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/cc;
.implements Lcom/android/mail/ui/dE;


# instance fields
.field private Av:Z

.field private final aOA:Landroid/graphics/drawable/Drawable;

.field private final aOB:I

.field private final aOC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final aOD:Lcom/android/mail/ui/dz;

.field private aOE:Z

.field private final aOF:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final aOc:I

.field private final aOd:I

.field private final aOe:I

.field private final aOf:D

.field private final aOg:Landroid/animation/TimeInterpolator;

.field private final aOh:Z

.field private aOi:I

.field private aOj:I

.field private aOk:Lcom/android/mail/ui/dt;

.field private aOl:Lcom/android/mail/ui/cl;

.field private final aOm:Lcom/android/mail/ui/cb;

.field private aOn:I

.field private aOo:Ljava/lang/Float;

.field private aOp:Landroid/view/View;

.field private aOq:Landroid/view/View;

.field private aOr:Landroid/view/View;

.field private aOs:Landroid/view/View;

.field private aOt:Landroid/view/View;

.field private aOu:I

.field private aOv:I

.field private aOw:I

.field private aOx:I

.field private aOy:I

.field private aOz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/TwoPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    .line 100
    iput v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOj:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOC:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/android/mail/ui/dz;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/dz;-><init>(Lcom/android/mail/ui/TwoPaneLayout;B)V

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOD:Lcom/android/mail/ui/dz;

    .line 152
    new-instance v0, Lcom/android/mail/ui/dw;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/dw;-><init>(Lcom/android/mail/ui/TwoPaneLayout;)V

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOF:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 177
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    .line 184
    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    .line 185
    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOd:I

    .line 186
    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOd:I

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    .line 188
    const v1, 0x10c0003

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOg:Landroid/animation/TimeInterpolator;

    .line 191
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 192
    const v2, 0x7f0b001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 193
    int-to-double v2, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    iput-wide v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOf:D

    .line 196
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOA:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOB:I

    .line 199
    new-instance v0, Lcom/android/mail/ui/cb;

    invoke-direct {v0, p1, p0}, Lcom/android/mail/ui/cb;-><init>(Landroid/content/Context;Lcom/android/mail/ui/cc;)V

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOm:Lcom/android/mail/ui/cb;

    .line 200
    return-void
.end method

.method private Aq()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0}, Lcom/android/mail/ui/dt;->Aq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Aw()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0}, Lcom/android/mail/ui/dt;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "TwoPaneLayout"

    const-string v1, "IN TPL.onTransitionComplete, activity destroyed->quitting early"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 478
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 460
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 465
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOj:I

    .line 468
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    move v1, v0

    .line 469
    :goto_2
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 470
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0}, Lcom/android/mail/ui/dt;->Av()Ljava/util/List;

    move-result-object v0

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dy;

    .line 473
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aq()Z

    move-result v5

    invoke-interface {v0, v1, v5}, Lcom/android/mail/ui/dy;->j(IZ)V

    goto :goto_3

    .line 468
    :cond_2
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOx:I

    move v1, v0

    goto :goto_2

    .line 477
    :cond_3
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/mail/ui/TwoPaneLayout;->bF(Z)V

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Ax()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/mail/ui/TwoPaneLayout;->bE(Z)V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/mail/ui/TwoPaneLayout;->bF(Z)V

    :cond_5
    :goto_5
    invoke-direct {p0, v2}, Lcom/android/mail/ui/TwoPaneLayout;->bE(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/mail/ui/TwoPaneLayout;->bF(Z)V

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Ax()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v3

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private C(F)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 553
    iget-boolean v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v2, :cond_1

    .line 554
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    if-nez v2, :cond_0

    .line 555
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 567
    :goto_0
    cmpg-float v3, v2, v0

    if-gez v3, :cond_3

    :goto_1
    return v0

    .line 557
    :cond_0
    neg-float v2, p1

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 560
    :cond_1
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    if-nez v2, :cond_2

    .line 561
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v2, v2

    div-float v2, p1, v2

    goto :goto_0

    .line 563
    :cond_2
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 567
    :cond_3
    cmpl-float v0, v2, v1

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/mail/ui/TwoPaneLayout;ZZZ)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/mail/ui/TwoPaneLayout;->b(IZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/TwoPaneLayout;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    return v0
.end method

.method static synthetic b(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    return-object v0
.end method

.method private b(FFZ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 379
    if-eqz p3, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOD:Lcom/android/mail/ui/dz;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOF:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOg:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 383
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 384
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 386
    :cond_2
    return-void
.end method

.method private b(IZZZ)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 436
    if-eqz p2, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_0
    if-eqz p3, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_1
    if-eqz p4, :cond_3

    .line 443
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 447
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_3
    return-void
.end method

.method private bE(Z)V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOl:Lcom/android/mail/ui/cl;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOl:Lcom/android/mail/ui/cl;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/cl;->bm(Z)V

    .line 666
    :cond_0
    return-void
.end method

.method private bF(Z)V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOl:Lcom/android/mail/ui/cl;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOl:Lcom/android/mail/ui/cl;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/cl;->bn(Z)V

    .line 672
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/mail/ui/TwoPaneLayout;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOB:I

    return v0
.end method

.method static synthetic d(Lcom/android/mail/ui/TwoPaneLayout;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aw()V

    return-void
.end method

.method private d(ZZZ)V
    .locals 2

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/mail/ui/TwoPaneLayout;->b(IZZZ)V

    .line 426
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOC:Ljava/util/List;

    new-instance v1, Lcom/android/mail/ui/dx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mail/ui/dx;-><init>(Lcom/android/mail/ui/TwoPaneLayout;ZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method private dj(I)I
    .locals 4

    .prologue
    .line 645
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    sub-int v0, p1, v0

    .line 646
    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-eqz v1, :cond_0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOf:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :cond_0
    return v0
.end method

.method static synthetic e(Lcom/android/mail/ui/TwoPaneLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOF:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private l(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 743
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->do(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_2

    .line 745
    :goto_0
    int-to-float v0, p1

    int-to-float v2, p1

    invoke-direct {p0, v0, v2, p2}, Lcom/android/mail/ui/TwoPaneLayout;->b(FFZ)V

    .line 746
    invoke-direct {p0, v1, v1, v3}, Lcom/android/mail/ui/TwoPaneLayout;->d(ZZZ)V

    .line 756
    :goto_1
    if-nez p2, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aw()V

    .line 759
    :cond_1
    return-void

    .line 744
    :cond_2
    neg-int p1, p1

    goto :goto_0

    .line 749
    :cond_3
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aq()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    .line 750
    :goto_2
    iget-boolean v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v2, :cond_4

    neg-int v0, v0

    .line 751
    :cond_4
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p2}, Lcom/android/mail/ui/TwoPaneLayout;->b(FFZ)V

    .line 752
    invoke-direct {p0, v3, v3, v1}, Lcom/android/mail/ui/TwoPaneLayout;->d(ZZZ)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 749
    goto :goto_2
.end method

.method private s(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 767
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p2, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 771
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    const-string v0, "TwoPaneLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 775
    const-string v0, "folders"

    .line 787
    :goto_1
    const-string v1, "TwoPaneLayout"

    const-string v2, "TPL: setPaneWidth, w=%spx pane=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 777
    const-string v0, "conv-list"

    goto :goto_1

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 779
    const-string v0, "conv-view"

    goto :goto_1

    .line 780
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 781
    const-string v0, "misc-view"

    goto :goto_1

    .line 782
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 783
    const-string v0, "conv-misc-wrapper"

    goto :goto_1

    .line 785
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "???:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final Ax()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ay()Z
    .locals 2

    .prologue
    .line 762
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOj:I

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Az()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    return v0
.end method

.method public final a(FFZ)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    if-eqz p3, :cond_3

    .line 534
    iget-boolean v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/mail/ui/dt;->bB(Z)V

    .line 543
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 535
    goto :goto_0

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/mail/ui/dt;->bB(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/TwoPaneLayout;->C(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/mail/ui/dt;->bB(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public final b(Lcom/android/mail/ui/dt;)V
    .locals 2

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    .line 259
    iput-object p1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOl:Lcom/android/mail/ui/cl;

    .line 261
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    check-cast v0, Lcom/android/mail/ui/ConversationViewFrame;

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationViewFrame;->a(Lcom/android/mail/ui/bd;)V

    .line 262
    return-void
.end method

.method public final bD(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    neg-int v0, v0

    .line 366
    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/ui/TwoPaneLayout;->b(FFZ)V

    .line 367
    return-void

    .line 365
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    goto :goto_0

    .line 366
    :cond_1
    int-to-float v0, v0

    goto :goto_1
.end method

.method public final cI(I)V
    .locals 6

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 694
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_0
    invoke-static {p1}, Lcom/android/mail/ui/dD;->do(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :goto_0
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0}, Lcom/android/mail/ui/dt;->wg()V

    .line 714
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 715
    invoke-direct {p0, v5}, Lcom/android/mail/ui/TwoPaneLayout;->bE(Z)V

    .line 718
    :cond_2
    iput p1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    .line 719
    const-string v0, "TwoPaneLayout"

    const-string v1, "onViewModeChanged(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 723
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v0

    .line 724
    if-eqz v0, :cond_3

    .line 726
    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-eqz v1, :cond_5

    .line 727
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aw()V

    .line 732
    :cond_3
    :goto_1
    return-void

    .line 703
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_5
    invoke-direct {p0, v0, v5}, Lcom/android/mail/ui/TwoPaneLayout;->l(IZ)V

    goto :goto_1
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOA:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOB:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 230
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOA:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOB:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected final onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 239
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 241
    const v0, 0x7f0d0230

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    .line 242
    const v0, 0x7f0d0231

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    .line 243
    const v0, 0x7f0d0233

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/TwoPaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    const v1, 0x7f0d0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    const v1, 0x7f0d0236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    .line 250
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Ay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 576
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 621
    :goto_1
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOm:Lcom/android/mail/ui/cb;

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOo:Ljava/lang/Float;

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/mail/ui/cb;->a(Landroid/view/MotionEvent;ILjava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    .line 578
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 579
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aq()Z

    move-result v0

    .line 580
    if-eqz v0, :cond_7

    .line 585
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-eqz v0, :cond_4

    .line 586
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->do(I)Z

    .line 587
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 588
    :goto_2
    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 596
    :goto_3
    cmpl-float v0, v4, v0

    if-ltz v0, :cond_5

    cmpg-float v0, v4, v1

    if-gtz v0, :cond_5

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOE:Z

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOo:Ljava/lang/Float;

    .line 598
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_6

    .line 599
    iput v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    goto :goto_1

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_2

    .line 588
    :cond_3
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    goto :goto_3

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 592
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    goto :goto_3

    :cond_5
    move v0, v3

    .line 596
    goto :goto_4

    .line 601
    :cond_6
    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    goto :goto_1

    .line 605
    :cond_7
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 607
    :goto_5
    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 610
    cmpl-float v0, v4, v0

    if-ltz v0, :cond_9

    cmpg-float v0, v4, v1

    if-gtz v0, :cond_9

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOE:Z

    .line 611
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_a

    .line 612
    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    .line 613
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOo:Ljava/lang/Float;

    goto/16 :goto_1

    .line 605
    :cond_8
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_5

    :cond_9
    move v0, v3

    .line 610
    goto :goto_6

    .line 615
    :cond_a
    iput v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    .line 616
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOo:Ljava/lang/Float;

    goto/16 :goto_1

    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 273
    const-string v1, "MailBlankFragment"

    const-string v2, "TPL(%s).onLayout()"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 275
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    .line 280
    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v1

    .line 282
    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    iget-object v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOd:I

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    sub-int v2, v1, v2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    :goto_0
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    iget-boolean v5, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v5, :cond_3

    :goto_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    :cond_0
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOv:I

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOx:I

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOz:I

    .line 289
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOj:I

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOi:I

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-nez v0, :cond_4

    .line 290
    invoke-direct {p0, v1, v6}, Lcom/android/mail/ui/TwoPaneLayout;->l(IZ)V

    .line 297
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getMeasuredHeight()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOv:I

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 299
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOx:I

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 300
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    iget v3, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOz:I

    invoke-virtual {v1, v2, v6, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 301
    return-void

    .line 282
    :cond_2
    iput v6, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOu:I

    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOw:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOy:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 292
    :cond_4
    invoke-direct {p0}, Lcom/android/mail/ui/TwoPaneLayout;->Aw()V

    goto :goto_2
.end method

.method protected final onMeasure(II)V
    .locals 4

    .prologue
    .line 266
    const-string v0, "MailBlankFragment"

    const-string v1, "TPL(%s).onMeasure()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 267
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getMeasuredWidth()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOh:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mail/ui/TwoPaneLayout;->dj(I)I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOc:I

    sub-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOr:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/android/mail/ui/TwoPaneLayout;->s(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/mail/ui/TwoPaneLayout;->dj(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/TwoPaneLayout;->s(Landroid/view/View;I)V

    .line 268
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 269
    return-void

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOE:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOm:Lcom/android/mail/ui/cb;

    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOo:Ljava/lang/Float;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/mail/ui/cb;->a(Landroid/view/MotionEvent;ILjava/lang/Float;)Z

    .line 629
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v1, "{mTranslatedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, " mCurrDragMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, " mShouldInterceptCurrentTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, " mTransitionCompleteJobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOC:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-direct {p0, p1}, Lcom/android/mail/ui/TwoPaneLayout;->C(F)F

    move-result v1

    .line 516
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 518
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mail/ui/TwoPaneLayout;->b(FFZ)V

    .line 519
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dt;->x(F)V

    .line 522
    iget-boolean v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->Av:Z

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/mail/ui/TwoPaneLayout;->invalidate(IIII)V

    .line 528
    :goto_1
    return-void

    .line 516
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOe:I

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/mail/ui/TwoPaneLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/mail/ui/TwoPaneLayout;->invalidate(IIII)V

    goto :goto_1
.end method

.method public final zA()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneLayout;->aOk:Lcom/android/mail/ui/dt;

    invoke-virtual {v0}, Lcom/android/mail/ui/dt;->zk()V

    .line 508
    return-void
.end method
