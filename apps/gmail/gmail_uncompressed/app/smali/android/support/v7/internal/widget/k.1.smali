.class final Landroid/support/v7/internal/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/bk;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bk;)Landroid/support/v4/view/aV;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/aV;)Landroid/support/v4/view/aV;

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aV;->d(F)Landroid/support/v4/view/aV;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/k;->zH:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->f(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/bk;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bk;)Landroid/support/v4/view/aV;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/aV;)Landroid/support/v4/view/aV;

    .line 144
    :cond_0
    return-void
.end method
