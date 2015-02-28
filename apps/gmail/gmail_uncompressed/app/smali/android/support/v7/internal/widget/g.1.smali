.class final Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ze:Landroid/support/v7/c/a;

.field final synthetic zf:Landroid/support/v7/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/a;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->zf:Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/g;->ze:Landroid/support/v7/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->ze:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->finish()V

    .line 222
    return-void
.end method
