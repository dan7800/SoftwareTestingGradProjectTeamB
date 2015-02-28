.class final Landroid/support/v4/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic lY:Landroid/support/v4/widget/E;

.field final synthetic lZ:Landroid/support/v4/widget/z;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/z;Landroid/support/v4/widget/E;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    iput-object p2, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cj()V

    .line 365
    iget-object v0, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    invoke-virtual {v0}, Landroid/support/v4/widget/E;->cc()V

    .line 366
    iget-object v0, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    iget-object v1, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    invoke-virtual {v1}, Landroid/support/v4/widget/E;->cg()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/E;->j(F)V

    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    iget-boolean v0, v0, Landroid/support/v4/widget/z;->lW:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    iput-boolean v2, v0, Landroid/support/v4/widget/z;->lW:Z

    .line 371
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 372
    iget-object v0, p0, Landroid/support/v4/widget/B;->lY:Landroid/support/v4/widget/E;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/E;->h(Z)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    iget-object v1, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    invoke-static {v1}, Landroid/support/v4/widget/z;->a(Landroid/support/v4/widget/z;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/widget/z;->a(Landroid/support/v4/widget/z;F)F

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v4/widget/B;->lZ:Landroid/support/v4/widget/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/z;->a(Landroid/support/v4/widget/z;F)F

    .line 355
    return-void
.end method
