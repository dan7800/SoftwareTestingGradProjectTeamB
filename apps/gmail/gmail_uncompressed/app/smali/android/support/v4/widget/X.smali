.class final Landroid/support/v4/widget/X;
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
    .line 149
    iput-object p1, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->b(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/z;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/z;->setAlpha(I)V

    .line 163
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->b(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/z;->start()V

    .line 164
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->c(Landroid/support/v4/widget/W;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->d(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->d(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/af;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/widget/af;->cq()V

    .line 181
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    iget-object v1, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v1}, Landroid/support/v4/widget/W;->e(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;I)I

    .line 182
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->b(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/z;->stop()V

    .line 171
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->e(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->f(Landroid/support/v4/widget/W;)V

    .line 174
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->g(Landroid/support/v4/widget/W;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;F)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    iget-object v1, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    iget v1, v1, Landroid/support/v4/widget/W;->nk:I

    iget-object v2, p0, Landroid/support/v4/widget/X;->nz:Landroid/support/v4/widget/W;

    invoke-static {v2}, Landroid/support/v4/widget/W;->h(Landroid/support/v4/widget/W;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;IZ)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
