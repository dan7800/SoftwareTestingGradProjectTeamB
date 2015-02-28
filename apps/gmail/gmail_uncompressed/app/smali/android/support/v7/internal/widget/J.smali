.class final Landroid/support/v7/internal/widget/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic AQ:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Landroid/support/v7/internal/widget/J;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/internal/widget/J;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/P;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Landroid/support/v7/internal/widget/J;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/P;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->show()V

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/J;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_1

    .line 707
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 709
    :cond_1
    return-void
.end method
