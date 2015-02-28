.class public Lcom/android/ex/photo/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/L;
.implements Landroid/support/v4/view/aM;
.implements Lcom/android/ex/photo/b;
.implements Lcom/android/ex/photo/h;
.implements Lcom/android/ex/photo/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/L",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/aM;",
        "Lcom/android/ex/photo/b;",
        "Lcom/android/ex/photo/h;",
        "Lcom/android/ex/photo/w;"
    }
.end annotation


# static fields
.field public static agI:I

.field public static agJ:I


# instance fields
.field protected agE:Z

.field private final agK:Lcom/android/ex/photo/t;

.field private agL:I

.field private final agM:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private agN:I

.field private agO:Ljava/lang/String;

.field protected agP:I

.field protected agQ:Z

.field protected agR:Landroid/view/View;

.field protected agS:Landroid/view/View;

.field protected agT:Lcom/android/ex/photo/PhotoViewPager;

.field protected agU:Landroid/widget/ImageView;

.field protected agV:Lcom/android/ex/photo/a/d;

.field protected agW:Z

.field private final agX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/photo/j;",
            ">;"
        }
    .end annotation
.end field

.field private final agY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/ex/photo/i;",
            ">;"
        }
    .end annotation
.end field

.field private agZ:Z

.field private agu:Ljava/lang/String;

.field private aha:Z

.field protected ahb:Z

.field protected ahc:F

.field protected ahd:Ljava/lang/String;

.field protected ahe:Ljava/lang/String;

.field private ahf:Z

.field protected ahg:Z

.field protected ahh:I

.field protected ahi:I

.field protected ahj:I

.field protected ahk:I

.field protected ahl:Z

.field protected ahm:Lcom/android/ex/photo/u;

.field private ahn:J

.field private final aho:Ljava/lang/Runnable;

.field private eN:[Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/t;)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/photo/k;->agP:I

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/k;->agY:Ljava/util/Set;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->ahb:Z

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/k;->mHandler:Landroid/os/Handler;

    .line 696
    new-instance v0, Lcom/android/ex/photo/m;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/m;-><init>(Lcom/android/ex/photo/k;)V

    iput-object v0, p0, Lcom/android/ex/photo/k;->aho:Ljava/lang/Runnable;

    .line 191
    iput-object p1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agM:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 207
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/android/ex/photo/l;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/l;-><init>(Lcom/android/ex/photo/k;)V

    iput-object v0, p0, Lcom/android/ex/photo/k;->agM:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    goto :goto_0
.end method

.method private static a(IIIF)I
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1045
    int-to-float v0, p2

    int-to-float v1, p2

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1051
    int-to-float v1, p2

    mul-float/2addr v1, p3

    int-to-float v2, p1

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1053
    sub-int v0, p0, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/android/ex/photo/k;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/ex/photo/k;->agL:I

    return v0
.end method

.method private a(Lcom/android/ex/photo/a;)V
    .locals 1

    .prologue
    .line 755
    if-nez p1, :cond_0

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->ahd:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/photo/k;->aU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/ex/photo/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/android/ex/photo/k;->ahe:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/photo/k;->aU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/ex/photo/a;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/ex/photo/k;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->ahf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/ex/photo/r;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/photo/r;-><init>(Lcom/android/ex/photo/k;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->G()Landroid/support/v4/app/K;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nW()V

    goto :goto_0
.end method

.method private static final aU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 768
    if-nez p0, :cond_0

    .line 769
    const-string p0, ""

    .line 771
    :cond_0
    return-object p0
.end method

.method private ak(Z)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0xb

    const/16 v5, 0x13

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 693
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v7, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/android/ex/photo/k;->ahg:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/ex/photo/k;->ahf:Z

    if-eqz v2, :cond_b

    :cond_0
    if-gt v4, v5, :cond_3

    if-ne v4, v5, :cond_8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v5, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kitkatIsSecondary user is only callable on KitKat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const v5, 0x186a0

    if-le v2, v5, :cond_7

    move v2, v1

    :goto_1
    if-nez v2, :cond_8

    :cond_3
    const/16 v0, 0xf06

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v1}, Lcom/android/ex/photo/t;->nH()Lcom/android/ex/photo/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/photo/a;->hide()V

    :cond_5
    :goto_3
    if-lt v4, v6, :cond_6

    iput v0, p0, Lcom/android/ex/photo/k;->agL:I

    iget-object v1, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 694
    :cond_6
    return-void

    :cond_7
    move v2, v0

    .line 693
    goto :goto_1

    :cond_8
    if-lt v4, v7, :cond_9

    const/16 v0, 0x505

    goto :goto_2

    :cond_9
    const/16 v2, 0xe

    if-lt v4, v2, :cond_a

    move v0, v1

    goto :goto_2

    :cond_a
    if-lt v4, v6, :cond_4

    move v0, v1

    goto :goto_2

    :cond_b
    if-lt v4, v5, :cond_d

    const/16 v0, 0x700

    :cond_c
    :goto_4
    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v1}, Lcom/android/ex/photo/t;->nH()Lcom/android/ex/photo/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/photo/a;->show()V

    goto :goto_3

    :cond_d
    if-lt v4, v7, :cond_e

    const/16 v0, 0x500

    goto :goto_4

    :cond_e
    const/16 v1, 0xe

    if-ge v4, v1, :cond_c

    if-lt v4, v6, :cond_c

    goto :goto_4
.end method

.method static synthetic b(Lcom/android/ex/photo/k;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->finish()V

    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0, v1, v1}, Lcom/android/ex/photo/t;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic c(Lcom/android/ex/photo/k;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nW()V

    return-void
.end method

.method static synthetic d(Lcom/android/ex/photo/k;)Lcom/android/ex/photo/t;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    return-object v0
.end method

.method private declared-synchronized d(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/i;

    .line 594
    invoke-interface {v0, p1}, Lcom/android/ex/photo/i;->c(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private nS()V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/ex/photo/k;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/photo/k;->aho:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/ex/photo/k;->ahn:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    return-void
.end method

.method private nT()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/ex/photo/k;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/photo/k;->aho:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method private nW()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    .line 865
    iget-object v0, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 871
    iget-object v2, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 877
    iget v2, p0, Lcom/android/ex/photo/k;->ahj:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 878
    iget v3, p0, Lcom/android/ex/photo/k;->ahk:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 879
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 881
    iget v3, p0, Lcom/android/ex/photo/k;->ahh:I

    iget v4, p0, Lcom/android/ex/photo/k;->ahj:I

    invoke-static {v3, v4, v0, v2}, Lcom/android/ex/photo/k;->a(IIIF)I

    move-result v0

    .line 883
    iget v3, p0, Lcom/android/ex/photo/k;->ahi:I

    iget v4, p0, Lcom/android/ex/photo/k;->ahk:I

    invoke-static {v3, v4, v1, v2}, Lcom/android/ex/photo/k;->a(IIIF)I

    move-result v1

    .line 886
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 887
    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 888
    iget-object v4, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 889
    iget-object v4, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 890
    iget-object v4, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v4, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 893
    iget-object v4, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 894
    iget-object v2, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 895
    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 897
    new-instance v0, Lcom/android/ex/photo/n;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/n;-><init>(Lcom/android/ex/photo/k;)V

    .line 903
    iget-object v1, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 905
    const/16 v2, 0x10

    if-lt v3, v2, :cond_0

    .line 906
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 910
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 943
    :goto_1
    return-void

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/android/ex/photo/k;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 912
    :cond_1
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 913
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 914
    iget-object v4, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 915
    iget-object v3, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 917
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v3, v0, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 919
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 920
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v2, v5, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 921
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 923
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 924
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 925
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 926
    new-instance v0, Lcom/android/ex/photo/o;

    invoke-direct {v0, p0}, Lcom/android/ex/photo/o;-><init>(Lcom/android/ex/photo/k;)V

    .line 940
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public final D(I)V
    .locals 0

    .prologue
    .line 614
    iput p1, p0, Lcom/android/ex/photo/k;->agN:I

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/k;->bG(I)V

    .line 616
    return-void
.end method

.method public final E(I)V
    .locals 0

    .prologue
    .line 620
    return-void
.end method

.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/j",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 489
    new-instance v0, Lcom/android/ex/photo/c/d;

    iget-object v1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v1}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/photo/k;->agu:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/photo/k;->eN:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/photo/c/d;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IFI)V
    .locals 4

    .prologue
    .line 600
    float-to-double v0, p2

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/j;

    .line 602
    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/android/ex/photo/j;->nM()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/j;

    .line 606
    if-eqz v0, :cond_1

    .line 607
    invoke-interface {v0}, Lcom/android/ex/photo/j;->nM()V

    .line 610
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final a(ILcom/android/ex/photo/j;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public final a(Landroid/support/v4/content/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/j",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->aha:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 584
    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/j;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/j;->getId()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iput-boolean v7, p0, Lcom/android/ex/photo/k;->agQ:Z

    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v0, v6}, Lcom/android/ex/photo/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/photo/k;->nR()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/k;->agP:I

    iget-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_5

    iget-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_2
    const/4 v1, -0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v1, v2

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_6

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v1, p0, Lcom/android/ex/photo/k;->agN:I

    :cond_4
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->ahb:Z

    if-eqz v0, :cond_8

    iput-boolean v7, p0, Lcom/android/ex/photo/k;->agZ:Z

    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v0, v6}, Lcom/android/ex/photo/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agQ:Z

    iput-boolean v2, p0, Lcom/android/ex/photo/k;->agQ:Z

    iget-object v1, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v1, p2}, Lcom/android/ex/photo/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v3, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v1, v3}, Lcom/android/ex/photo/PhotoViewPager;->a(Landroid/support/v4/view/U;)V

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/ex/photo/k;->d(Landroid/database/Cursor;)V

    iget v1, p0, Lcom/android/ex/photo/k;->agN:I

    if-gez v1, :cond_a

    iput v2, p0, Lcom/android/ex/photo/k;->agN:I

    :cond_a
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    iget v3, p0, Lcom/android/ex/photo/k;->agN:I

    invoke-virtual {v1, v3, v2}, Lcom/android/ex/photo/PhotoViewPager;->b(IZ)V

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/ex/photo/k;->agN:I

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/k;->bG(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/android/ex/photo/b/a;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public a(Lcom/android/ex/photo/b/a;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public final a(Lcom/android/ex/photo/b/a;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 821
    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/photo/b/a;->nY()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    if-eqz p2, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const-string v0, "PhotoViewController"

    const-string v1, "Failed to load fragment image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, v3}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/android/ex/photo/i;)V
    .locals 1

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agY:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/android/ex/photo/i;)V
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agY:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bE(I)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method public bF(I)V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method public bG(I)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/j;

    .line 706
    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v0}, Lcom/android/ex/photo/j;->nL()V

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/k;->nV()Landroid/database/Cursor;

    move-result-object v0

    .line 710
    iput p1, p0, Lcom/android/ex/photo/k;->agN:I

    .line 714
    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 715
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    .line 716
    invoke-virtual {p0}, Lcom/android/ex/photo/k;->nU()V

    .line 719
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nT()V

    .line 720
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nS()V

    .line 721
    return-void
.end method

.method public final cM()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xfa

    .line 406
    iget-boolean v1, p0, Lcom/android/ex/photo/k;->agW:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/ex/photo/k;->agE:Z

    if-nez v1, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/ex/photo/k;->nI()V

    .line 415
    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 409
    :cond_1
    iget-boolean v1, p0, Lcom/android/ex/photo/k;->ahg:Z

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v1}, Lcom/android/ex/photo/t;->getIntent()Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/ex/photo/k;->ahj:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/ex/photo/k;->ahk:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/android/ex/photo/k;->ahh:I

    iget v5, p0, Lcom/android/ex/photo/k;->ahj:I

    invoke-static {v4, v5, v1, v3}, Lcom/android/ex/photo/k;->a(IIIF)I

    move-result v1

    iget v4, p0, Lcom/android/ex/photo/k;->ahi:I

    iget v5, p0, Lcom/android/ex/photo/k;->ahk:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/ex/photo/k;->a(IIIF)I

    move-result v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v5, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/android/ex/photo/p;

    invoke-direct {v5, p0}, Lcom/android/ex/photo/p;-><init>(Lcom/android/ex/photo/k;)V

    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    :goto_1
    const/16 v1, 0x10

    if-lt v4, v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/ex/photo/k;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v8, v8, v3, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/ex/photo/q;

    invoke-direct {v1, p0}, Lcom/android/ex/photo/q;-><init>(Lcom/android/ex/photo/k;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1, v0}, Lcom/android/ex/photo/PhotoViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method protected final d(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 664
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 665
    :goto_0
    iput-boolean p1, p0, Lcom/android/ex/photo/k;->agW:Z

    .line 667
    iget-boolean v3, p0, Lcom/android/ex/photo/k;->agW:Z

    if-eqz v3, :cond_2

    .line 668
    invoke-direct {p0, v1}, Lcom/android/ex/photo/k;->ak(Z)V

    .line 669
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nT()V

    .line 677
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/j;

    .line 679
    iget-boolean v2, p0, Lcom/android/ex/photo/k;->agW:Z

    invoke-interface {v0}, Lcom/android/ex/photo/j;->nK()V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 664
    goto :goto_0

    .line 671
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/ex/photo/k;->ak(Z)V

    .line 672
    if-eqz p2, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nS()V

    goto :goto_1

    .line 682
    :cond_3
    return-void
.end method

.method public final e(ILjava/lang/String;)Landroid/support/v4/content/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/j",
            "<",
            "Lcom/android/ex/photo/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    packed-switch p1, :pswitch_data_0

    .line 502
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 500
    :pswitch_0
    new-instance v0, Lcom/android/ex/photo/c/a;

    iget-object v1, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v1}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/ex/photo/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/support/v4/app/Fragment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->bd()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v2, p1}, Lcom/android/ex/photo/a/d;->f(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0, p1}, Lcom/android/ex/photo/t;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/support/v4/app/Fragment;)Z
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v0}, Lcom/android/ex/photo/a/d;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    .line 462
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v1, p1}, Lcom/android/ex/photo/a/d;->f(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v0}, Lcom/android/ex/photo/a/d;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public final i(FF)Lcom/android/ex/photo/PhotoViewPager$InterceptType;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 637
    .line 640
    iget-object v1, p0, Lcom/android/ex/photo/k;->agX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/j;

    .line 641
    if-nez v2, :cond_0

    .line 642
    invoke-interface {v0}, Lcom/android/ex/photo/j;->nN()Z

    move-result v2

    .line 644
    :cond_0
    if-nez v1, :cond_5

    .line 645
    invoke-interface {v0}, Lcom/android/ex/photo/j;->nO()Z

    move-result v0

    :goto_1
    move v1, v0

    .line 647
    goto :goto_0

    .line 649
    :cond_1
    if-eqz v2, :cond_3

    .line 650
    if-eqz v1, :cond_2

    .line 651
    sget-object v0, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->ahz:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    .line 657
    :goto_2
    return-object v0

    .line 653
    :cond_2
    sget-object v0, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->ahx:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_2

    .line 654
    :cond_3
    if-eqz v1, :cond_4

    .line 655
    sget-object v0, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->ahy:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_2

    .line 657
    :cond_4
    sget-object v0, Lcom/android/ex/photo/PhotoViewPager$InterceptType;->ahw:Lcom/android/ex/photo/PhotoViewPager$InterceptType;

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final nI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 467
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/k;->d(ZZ)V

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nJ()Lcom/android/ex/photo/a/d;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    return-object v0
.end method

.method public final nP()Lcom/android/ex/photo/t;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    return-object v0
.end method

.method public nQ()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public nR()V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public nU()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0}, Lcom/android/ex/photo/PhotoViewPager;->bd()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 728
    iget v0, p0, Lcom/android/ex/photo/k;->agP:I

    if-ltz v0, :cond_1

    move v0, v1

    .line 730
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/photo/k;->nV()Landroid/database/Cursor;

    move-result-object v4

    .line 731
    if-eqz v4, :cond_2

    .line 734
    const-string v5, "_display_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 735
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/photo/k;->ahd:Ljava/lang/String;

    .line 740
    :goto_1
    iget-boolean v4, p0, Lcom/android/ex/photo/k;->agQ:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    if-gtz v3, :cond_3

    .line 741
    :cond_0
    iput-object v6, p0, Lcom/android/ex/photo/k;->ahe:Ljava/lang/String;

    .line 747
    :goto_2
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->nH()Lcom/android/ex/photo/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/photo/k;->a(Lcom/android/ex/photo/a;)V

    .line 748
    return-void

    :cond_1
    move v0, v2

    .line 728
    goto :goto_0

    .line 737
    :cond_2
    iput-object v6, p0, Lcom/android/ex/photo/k;->ahd:Ljava/lang/String;

    goto :goto_1

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/ex/photo/F;->ahX:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    iget v2, p0, Lcom/android/ex/photo/k;->agP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->ahe:Ljava/lang/String;

    goto :goto_2
.end method

.method public final nV()Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 781
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    if-nez v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-object v0

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v1}, Lcom/android/ex/photo/PhotoViewPager;->bd()I

    move-result v2

    .line 786
    iget-object v1, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v1}, Lcom/android/ex/photo/a/d;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_0

    .line 792
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v0, v1

    .line 794
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 219
    sget v0, Lcom/android/ex/photo/k;->agJ:I

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v2, Lcom/android/ex/photo/util/ImageUtils;->aiA:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v0, Lcom/android/ex/photo/s;->ahr:[I

    invoke-virtual {v2}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/ex/photo/k;->agJ:I

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 222
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lcom/android/ex/photo/k;->agI:I

    .line 224
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 226
    const-string v1, "photos_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "photos_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/photo/k;->agu:Ljava/lang/String;

    .line 229
    :cond_1
    const-string v1, "scale_up_animation"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iput-boolean v5, p0, Lcom/android/ex/photo/k;->ahg:Z

    .line 231
    const-string v1, "start_x_extra"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->ahh:I

    .line 232
    const-string v1, "start_y_extra"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->ahi:I

    .line 233
    const-string v1, "start_width_extra"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->ahj:I

    .line 234
    const-string v1, "start_height_extra"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->ahk:I

    .line 236
    :cond_2
    const-string v1, "action_bar_hidden_initially"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/ex/photo/k;->agE:Z

    .line 238
    const-string v1, "display_thumbs_fullscreen"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/ex/photo/k;->ahl:Z

    .line 244
    const-string v1, "projection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 245
    const-string v1, "projection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/photo/k;->eN:[Ljava/lang/String;

    .line 251
    :goto_1
    const-string v1, "max_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->ahc:F

    .line 252
    iput-object v3, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    .line 253
    iput v4, p0, Lcom/android/ex/photo/k;->agN:I

    .line 260
    const-string v1, "photo_index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-string v1, "photo_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/k;->agN:I

    .line 263
    :cond_3
    const-string v1, "initial_photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    const-string v1, "initial_photo_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    .line 266
    :cond_4
    iput-boolean v5, p0, Lcom/android/ex/photo/k;->agQ:Z

    .line 268
    if-eqz p1, :cond_9

    .line 269
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    .line 270
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_INDEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/k;->agN:I

    .line 271
    const-string v0, "com.android.ex.PhotoViewFragment.FULLSCREEN"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    .line 272
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARTITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->ahd:Ljava/lang/String;

    .line 273
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->ahe:Ljava/lang/String;

    .line 274
    const-string v0, "com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->ahf:Z

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    sget v1, Lcom/android/ex/photo/E;->ahU:I

    invoke-interface {v0, v1}, Lcom/android/ex/photo/t;->setContentView(I)V

    .line 283
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->F()Landroid/support/v4/app/p;

    move-result-object v2

    iget v4, p0, Lcom/android/ex/photo/k;->ahc:F

    new-instance v0, Lcom/android/ex/photo/a/d;

    iget-boolean v5, p0, Lcom/android/ex/photo/k;->ahl:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/photo/a/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/p;Landroid/database/Cursor;FZ)V

    iput-object v0, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    .line 285
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 286
    sget v0, Lcom/android/ex/photo/C;->ahM:I

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_5

    .line 288
    iget-object v0, p0, Lcom/android/ex/photo/k;->agR:Landroid/view/View;

    iget-object v2, p0, Lcom/android/ex/photo/k;->agM:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 290
    :cond_5
    sget v0, Lcom/android/ex/photo/C;->ahL:I

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    .line 291
    sget v0, Lcom/android/ex/photo/C;->ahN:I

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/photo/k;->agU:Landroid/widget/ImageView;

    .line 292
    sget v0, Lcom/android/ex/photo/C;->ahR:I

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/ex/photo/PhotoViewPager;

    iput-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    .line 293
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    iget-object v2, p0, Lcom/android/ex/photo/k;->agV:Lcom/android/ex/photo/a/d;

    invoke-virtual {v0, v2}, Lcom/android/ex/photo/PhotoViewPager;->a(Landroid/support/v4/view/U;)V

    .line 294
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/PhotoViewPager;->a(Landroid/support/v4/view/aM;)V

    .line 295
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/PhotoViewPager;->a(Lcom/android/ex/photo/w;)V

    .line 296
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    sget v2, Lcom/android/ex/photo/A;->ahG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/photo/PhotoViewPager;->z(I)V

    .line 298
    new-instance v0, Lcom/android/ex/photo/u;

    invoke-direct {v0, p0, v6}, Lcom/android/ex/photo/u;-><init>(Lcom/android/ex/photo/k;B)V

    iput-object v0, p0, Lcom/android/ex/photo/k;->ahm:Lcom/android/ex/photo/u;

    .line 299
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->ahg:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/ex/photo/k;->ahf:Z

    if-eqz v0, :cond_a

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->G()Landroid/support/v4/app/K;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 305
    iget-object v0, p0, Lcom/android/ex/photo/k;->agS:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :goto_3
    sget v0, Lcom/android/ex/photo/D;->ahT:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/ex/photo/k;->ahn:J

    .line 321
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->nH()Lcom/android/ex/photo/a;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_7

    .line 323
    invoke-interface {v0}, Lcom/android/ex/photo/a;->nB()V

    .line 324
    invoke-interface {v0, p0}, Lcom/android/ex/photo/a;->a(Lcom/android/ex/photo/b;)V

    .line 325
    invoke-interface {v0}, Lcom/android/ex/photo/a;->nC()V

    .line 328
    invoke-direct {p0, v0}, Lcom/android/ex/photo/k;->a(Lcom/android/ex/photo/a;)V

    .line 331
    :cond_7
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->ahg:Z

    if-nez v0, :cond_b

    .line 332
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    invoke-direct {p0, v0}, Lcom/android/ex/photo/k;->ak(Z)V

    .line 338
    :goto_4
    return-void

    .line 219
    :pswitch_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x320

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/ex/photo/k;->agJ:I

    goto/16 :goto_0

    .line 247
    :cond_8
    iput-object v3, p0, Lcom/android/ex/photo/k;->eN:[Ljava/lang/String;

    goto/16 :goto_1

    .line 277
    :cond_9
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agE:Z

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    goto/16 :goto_2

    .line 311
    :cond_a
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    const-string v2, "image_uri"

    iget-object v3, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v2}, Lcom/android/ex/photo/t;->G()Landroid/support/v4/app/K;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/ex/photo/k;->ahm:Lcom/android/ex/photo/u;

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    goto :goto_3

    .line 336
    :cond_b
    invoke-direct {p0, v6}, Lcom/android/ex/photo/k;->ak(Z)V

    goto :goto_4

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->aha:Z

    .line 397
    return-void
.end method

.method public final onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->ahf:Z

    .line 855
    iget-object v0, p0, Lcom/android/ex/photo/k;->agT:Lcom/android/ex/photo/PhotoViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/photo/PhotoViewPager;->setVisibility(I)V

    .line 856
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    invoke-direct {p0, v0}, Lcom/android/ex/photo/k;->ak(Z)V

    .line 857
    return-void
.end method

.method public final onMenuVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 803
    if-eqz p1, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nT()V

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/photo/k;->nS()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 433
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->finish()V

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/k;->ahb:Z

    .line 391
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agW:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/k;->d(ZZ)V

    .line 382
    iput-boolean v1, p0, Lcom/android/ex/photo/k;->ahb:Z

    .line 383
    iget-boolean v0, p0, Lcom/android/ex/photo/k;->agZ:Z

    if-eqz v0, :cond_0

    .line 384
    iput-boolean v1, p0, Lcom/android/ex/photo/k;->agZ:Z

    .line 385
    iget-object v0, p0, Lcom/android/ex/photo/k;->agK:Lcom/android/ex/photo/t;

    invoke-interface {v0}, Lcom/android/ex/photo/t;->G()Landroid/support/v4/app/K;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/K;->a(ILandroid/os/Bundle;Landroid/support/v4/app/L;)Landroid/support/v4/content/j;

    .line 387
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 419
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_URI"

    iget-object v1, p0, Lcom/android/ex/photo/k;->agO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "com.android.ex.PhotoViewFragment.CURRENT_INDEX"

    iget v1, p0, Lcom/android/ex/photo/k;->agN:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    const-string v0, "com.android.ex.PhotoViewFragment.FULLSCREEN"

    iget-boolean v1, p0, Lcom/android/ex/photo/k;->agW:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARTITLE"

    iget-object v1, p0, Lcom/android/ex/photo/k;->ahd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE"

    iget-object v1, p0, Lcom/android/ex/photo/k;->ahe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED"

    iget-boolean v1, p0, Lcom/android/ex/photo/k;->ahf:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method
