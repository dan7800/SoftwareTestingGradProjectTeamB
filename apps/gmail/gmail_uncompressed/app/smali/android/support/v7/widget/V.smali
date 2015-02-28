.class final Landroid/support/v7/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/m;


# instance fields
.field final synthetic Gt:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroid/support/v7/widget/V;->Gt:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/V;->Gt:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/V;->Gt:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aa;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
