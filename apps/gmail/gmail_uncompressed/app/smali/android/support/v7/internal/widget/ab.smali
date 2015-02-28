.class final Landroid/support/v7/internal/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic BA:Landroid/support/v7/internal/widget/aa;

.field final Bz:Landroid/support/v7/internal/view/menu/a;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aa;)V
    .locals 3

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/support/v7/internal/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-static {v1}, Landroid/support/v7/internal/widget/aa;->a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-static {v2}, Landroid/support/v7/internal/widget/aa;->b(Landroid/support/v7/internal/widget/aa;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ab;->Bz:Landroid/support/v7/internal/view/menu/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->c(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->d(Landroid/support/v7/internal/widget/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->BA:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->c(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/internal/a/i;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->Bz:Landroid/support/v7/internal/view/menu/a;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/a/i;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 192
    :cond_0
    return-void
.end method
