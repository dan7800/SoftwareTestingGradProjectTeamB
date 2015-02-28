.class final Landroid/support/v7/internal/a/k;
.super Landroid/support/v4/view/bl;
.source "SourceFile"


# instance fields
.field final synthetic vc:Landroid/support/v7/internal/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/j;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-direct {p0}, Landroid/support/v4/view/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->a(Landroid/support/v7/internal/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->b(Landroid/support/v7/internal/a/j;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->b(Landroid/support/v7/internal/a/j;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ad;->b(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->d(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->e(Landroid/support/v7/internal/a/j;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->d(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->A(Z)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->f(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/view/h;

    .line 148
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/j;->db()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->g(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/a/k;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->g(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ad;->v(Landroid/view/View;)V

    .line 152
    :cond_2
    return-void
.end method
