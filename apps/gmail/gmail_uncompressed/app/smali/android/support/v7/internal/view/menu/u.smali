.class final Landroid/support/v7/internal/view/menu/u;
.super Landroid/support/v7/internal/view/menu/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field xR:Landroid/support/v4/view/p;

.field final synthetic xS:Landroid/support/v7/internal/view/menu/t;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/t;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/u;->xS:Landroid/support/v7/internal/view/menu/t;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/support/v7/internal/view/menu/o;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/p;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/u;->xR:Landroid/support/v4/view/p;

    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xO:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xO:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xR:Landroid/support/v4/view/p;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xR:Landroid/support/v4/view/p;

    invoke-interface {v0}, Landroid/support/v4/view/p;->aV()V

    .line 82
    :cond_0
    return-void
.end method

.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xO:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->xO:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method
