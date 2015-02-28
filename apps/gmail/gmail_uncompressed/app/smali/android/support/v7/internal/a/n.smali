.class public final Landroid/support/v7/internal/a/n;
.super Landroid/support/v7/c/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field final synthetic vc:Landroid/support/v7/internal/a/j;

.field private vd:Landroid/support/v7/c/b;

.field private ve:Landroid/support/v7/internal/view/menu/i;

.field private vf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/j;Landroid/support/v7/c/b;)V
    .locals 2

    .prologue
    .line 951
    iput-object p1, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-direct {p0}, Landroid/support/v7/c/a;-><init>()V

    .line 952
    iput-object p2, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    .line 953
    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {p1}, Landroid/support/v7/internal/a/j;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dJ()Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    .line 955
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 956
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/n;->invalidate()V

    .line 1102
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1074
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final df()Z
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dO()V

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1014
    iget-object v1, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->dP()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->dP()V

    throw v0
.end method

.method public final finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 970
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    iget-object v0, v0, Landroid/support/v7/internal/a/j;->uK:Landroid/support/v7/internal/a/n;

    if-eq v0, p0, :cond_0

    .line 997
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->h(Landroid/support/v7/internal/a/j;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v1}, Landroid/support/v7/internal/a/j;->i(Landroid/support/v7/internal/a/j;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/a/j;->b(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 982
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    iput-object p0, v0, Landroid/support/v7/internal/a/j;->uL:Landroid/support/v7/c/a;

    .line 983
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    iput-object v1, v0, Landroid/support/v7/internal/a/j;->uM:Landroid/support/v7/c/b;

    .line 987
    :goto_1
    iput-object v2, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    .line 988
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/a/j;->q(Z)V

    .line 991
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->ew()V

    .line 992
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->k(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/v;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->eL()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 994
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->g(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    iget-boolean v1, v1, Landroid/support/v7/internal/a/j;->uX:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 996
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    iput-object v2, v0, Landroid/support/v7/internal/a/j;->uK:Landroid/support/v7/internal/a/n;

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    invoke-interface {v0, p0}, Landroid/support/v7/c/b;->c(Landroid/support/v7/c/a;)V

    goto :goto_1
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 960
    new-instance v0, Landroid/support/v7/internal/view/e;

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/a/j;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final invalidate()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dO()V

    .line 1003
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vd:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dP()V

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/n;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->dP()V

    throw v0
.end method

.method public final isTitleOptional()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1021
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/n;->vf:Ljava/lang/ref/WeakReference;

    .line 1022
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->l(Landroid/support/v7/internal/a/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/n;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1042
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1027
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->l(Landroid/support/v7/internal/a/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/n;->setTitle(Ljava/lang/CharSequence;)V

    .line 1037
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1032
    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 1056
    invoke-super {p0, p1}, Landroid/support/v7/c/a;->setTitleOptionalHint(Z)V

    .line 1057
    iget-object v0, p0, Landroid/support/v7/internal/a/n;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->j(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->B(Z)V

    .line 1058
    return-void
.end method
