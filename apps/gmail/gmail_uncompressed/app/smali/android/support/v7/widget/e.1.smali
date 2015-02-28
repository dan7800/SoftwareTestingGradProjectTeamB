.class final Landroid/support/v7/widget/e;
.super Landroid/support/v7/widget/L;
.source "SourceFile"


# instance fields
.field final synthetic Ce:Landroid/support/v7/widget/ActionMenuPresenter;

.field final synthetic Cf:Landroid/support/v7/widget/d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/d;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iput-object p3, p0, Landroid/support/v7/widget/e;->Ce:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/L;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final dA()Landroid/support/v7/widget/H;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->dA()Landroid/support/v7/widget/H;

    move-result-object v0

    goto :goto_0
.end method

.method public final dB()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public final dC()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->Cf:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/d;->Cb:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 621
    const/4 v0, 0x1

    goto :goto_0
.end method
