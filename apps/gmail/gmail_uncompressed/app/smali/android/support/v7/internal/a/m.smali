.class final Landroid/support/v7/internal/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bm;


# instance fields
.field final synthetic vc:Landroid/support/v7/internal/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/j;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/internal/a/m;->vc:Landroid/support/v7/internal/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bp()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/a/m;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 169
    return-void
.end method
