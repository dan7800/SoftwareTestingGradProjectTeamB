.class final Landroid/support/v4/view/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic ii:Landroid/support/v4/view/T;


# direct methods
.method constructor <init>(Landroid/support/v4/view/T;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v4/view/ap;->ii:Landroid/support/v4/view/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/support/v4/view/bo;

    invoke-direct {v0, p2}, Landroid/support/v4/view/bo;-><init>(Landroid/view/WindowInsets;)V

    .line 60
    iget-object v1, p0, Landroid/support/v4/view/ap;->ii:Landroid/support/v4/view/T;

    invoke-interface {v1, v0}, Landroid/support/v4/view/T;->a(Landroid/support/v4/view/bn;)Landroid/support/v4/view/bn;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bo;

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/view/bo;->bq()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
