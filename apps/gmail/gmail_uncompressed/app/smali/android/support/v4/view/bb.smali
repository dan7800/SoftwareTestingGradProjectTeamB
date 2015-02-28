.class Landroid/support/v4/view/bb;
.super Landroid/support/v4/view/aY;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/support/v4/view/aY;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/aV;Landroid/view/View;Landroid/support/v4/view/bk;)V
    .locals 2

    .prologue
    .line 560
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/bh;

    invoke-direct {v1, p3, p2}, Landroid/support/v4/view/bh;-><init>(Landroid/support/v4/view/bk;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
