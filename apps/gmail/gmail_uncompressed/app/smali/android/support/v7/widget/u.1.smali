.class final Landroid/support/v7/widget/u;
.super Landroid/support/v7/widget/A;
.source "SourceFile"


# instance fields
.field final synthetic Da:Landroid/support/v7/widget/t;

.field private size:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;)V
    .locals 1

    .prologue
    .line 2778
    iput-object p1, p0, Landroid/support/v7/widget/u;->Da:Landroid/support/v7/widget/t;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/A;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final I(Z)I
    .locals 2

    .prologue
    .line 2801
    invoke-super {p0, p1}, Landroid/support/v7/widget/A;->I(Z)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/u;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/w;IZ)I
    .locals 2

    .prologue
    .line 2806
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/A;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/w;IZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final r(II)V
    .locals 2

    .prologue
    .line 2795
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/A;->r(II)V

    .line 2796
    iget v0, p0, Landroid/support/v7/widget/u;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/u;->size:I

    .line 2797
    return-void
.end method

.method protected final reset()V
    .locals 1

    .prologue
    .line 2789
    invoke-super {p0}, Landroid/support/v7/widget/A;->reset()V

    .line 2790
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/u;->size:I

    .line 2791
    return-void
.end method
