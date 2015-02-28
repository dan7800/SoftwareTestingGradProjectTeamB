.class final Landroid/support/v4/view/bc;
.super Landroid/support/v4/view/ba;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Landroid/support/v4/view/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/bm;)V
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/bj;

    invoke-direct {v1, p2, p1}, Landroid/support/v4/view/bj;-><init>(Landroid/support/v4/view/bm;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 591
    return-void
.end method
