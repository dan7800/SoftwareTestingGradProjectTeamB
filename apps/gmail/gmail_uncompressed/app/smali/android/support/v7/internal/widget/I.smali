.class final Landroid/support/v7/internal/widget/I;
.super Landroid/support/v7/widget/L;
.source "SourceFile"


# instance fields
.field final synthetic AP:Landroid/support/v7/internal/widget/M;

.field final synthetic AQ:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/M;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Landroid/support/v7/internal/widget/I;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Landroid/support/v7/internal/widget/I;->AP:Landroid/support/v7/internal/widget/M;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/L;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final dA()Landroid/support/v7/widget/H;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/widget/I;->AP:Landroid/support/v7/internal/widget/M;

    return-object v0
.end method

.method public final dB()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/widget/I;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/P;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/I;->AQ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/P;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/P;->show()V

    .line 200
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
