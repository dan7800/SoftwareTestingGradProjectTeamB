.class final Landroid/support/v7/internal/a/h;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# instance fields
.field final synthetic uy:Landroid/support/v7/internal/a/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/b;Landroid/support/v7/internal/a/i;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    .line 511
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ac;-><init>(Landroid/support/v7/internal/a/i;)V

    .line 512
    return-void
.end method


# virtual methods
.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 526
    packed-switch p1, :pswitch_data_0

    .line 545
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ac;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 528
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/b;->da()V

    .line 531
    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->e(Landroid/support/v7/internal/a/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Landroid/view/Menu;

    move-result-object v0

    .line 538
    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Landroid/support/v7/internal/a/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/support/v7/internal/a/i;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1, v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/ac;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 517
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/v;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->eF()V

    .line 519
    iget-object v1, p0, Landroid/support/v7/internal/a/h;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->d(Landroid/support/v7/internal/a/b;)Z

    .line 521
    :cond_0
    return v0
.end method
