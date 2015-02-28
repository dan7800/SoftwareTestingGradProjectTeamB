.class final Landroid/support/v7/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field private ow:Z

.field final synthetic uy:Landroid/support/v7/internal/a/b;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/a/b;B)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0, p1}, Landroid/support/v7/internal/a/e;-><init>(Landroid/support/v7/internal/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 2

    .prologue
    .line 592
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->ow:Z

    if-eqz v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/e;->ow:Z

    .line 597
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 598
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/a/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 601
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/e;->ow:Z

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->uy:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/a/i;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 585
    const/4 v0, 0x1

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
