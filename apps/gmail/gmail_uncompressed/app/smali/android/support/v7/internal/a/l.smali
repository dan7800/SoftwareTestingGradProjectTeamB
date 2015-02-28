.class final Landroid/support/v7/internal/a/l;
.super Landroid/support/v4/view/bl;
.source "SourceFile"


# instance fields
.field final synthetic vc:Landroid/support/v7/internal/a/j;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/j;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v7/internal/a/l;->vc:Landroid/support/v7/internal/a/j;

    invoke-direct {p0}, Landroid/support/v4/view/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/a/l;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->f(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/view/h;

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/a/l;->vc:Landroid/support/v7/internal/a/j;

    invoke-static {v0}, Landroid/support/v7/internal/a/j;->c(Landroid/support/v7/internal/a/j;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
