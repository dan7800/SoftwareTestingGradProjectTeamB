.class Landroid/support/v4/view/aY;
.super Landroid/support/v4/view/aW;
.source "SourceFile"


# instance fields
.field jK:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/support/v4/view/aW;-><init>()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/aY;->jK:Ljava/util/WeakHashMap;

    .line 497
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/aV;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 436
    return-void
.end method

.method public final a(Landroid/support/v4/view/aV;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 346
    return-void
.end method

.method public a(Landroid/support/v4/view/aV;Landroid/view/View;Landroid/support/v4/view/bk;)V
    .locals 3

    .prologue
    .line 475
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 476
    new-instance v0, Landroid/support/v4/view/aZ;

    invoke-direct {v0, p1}, Landroid/support/v4/view/aZ;-><init>(Landroid/support/v4/view/aV;)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/support/v4/view/bf;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/view/bf;-><init>(Landroid/support/v4/view/bk;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 341
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 366
    return-void
.end method

.method public final b(Landroid/support/v4/view/aV;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 471
    return-void
.end method

.method public final b(Landroid/support/v4/view/aV;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 351
    return-void
.end method

.method public final c(Landroid/support/v4/view/aV;Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 356
    return-void
.end method

.method public final d(Landroid/support/v4/view/aV;Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 426
    return-void
.end method
