.class final Landroid/support/v4/view/bh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic jL:Landroid/support/v4/view/bk;

.field final synthetic jM:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/bk;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/view/bh;->jL:Landroid/support/v4/view/bk;

    iput-object p2, p0, Landroid/support/v4/view/bh;->jM:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/bh;->jL:Landroid/support/v4/view/bk;

    iget-object v1, p0, Landroid/support/v4/view/bh;->jM:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bk;->C(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/view/bh;->jL:Landroid/support/v4/view/bk;

    iget-object v1, p0, Landroid/support/v4/view/bh;->jM:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bk;->B(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/bh;->jL:Landroid/support/v4/view/bk;

    iget-object v1, p0, Landroid/support/v4/view/bh;->jM:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bk;->A(Landroid/view/View;)V

    .line 53
    return-void
.end method
