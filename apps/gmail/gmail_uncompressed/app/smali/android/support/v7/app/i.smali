.class final Landroid/support/v7/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/a/i;


# instance fields
.field final synthetic oh:Landroid/support/v7/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/app/h;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/h;->c(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/g;->onPanelClosed(ILandroid/view/Menu;)V

    .line 90
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/app/i;->oh:Landroid/support/v7/app/h;

    iget-object v0, v0, Landroid/support/v7/app/h;->nX:Landroid/support/v7/app/g;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/g;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
