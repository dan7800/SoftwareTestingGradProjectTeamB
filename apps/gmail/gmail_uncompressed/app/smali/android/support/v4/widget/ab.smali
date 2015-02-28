.class final Landroid/support/v4/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic nz:Landroid/support/v4/widget/W;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/W;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Landroid/support/v4/widget/ab;->nz:Landroid/support/v4/widget/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v4/widget/ab;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->g(Landroid/support/v4/widget/W;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Landroid/support/v4/widget/ab;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->i(Landroid/support/v4/widget/W;)V

    .line 794
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 787
    return-void
.end method
