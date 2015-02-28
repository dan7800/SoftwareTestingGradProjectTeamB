.class final Landroid/support/v7/internal/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field final synthetic uy:Landroid/support/v7/internal/a/b;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/a/b;B)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0, p1}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 634
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/support/v7/internal/a/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v7/internal/a/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/support/v7/internal/a/i;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method
