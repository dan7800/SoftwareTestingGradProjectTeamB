.class public Landroid/support/v7/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/a/i;


# instance fields
.field private Gy:Landroid/support/v7/internal/a/i;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/i;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/a/i;->a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/a/i;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/a/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/a/i;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/a/i;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/a/i;->onPanelClosed(ILandroid/view/Menu;)V

    .line 60
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ac;->Gy:Landroid/support/v7/internal/a/i;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/internal/a/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
