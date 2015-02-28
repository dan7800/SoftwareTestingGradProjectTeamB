.class final Landroid/support/v7/widget/t;
.super Landroid/support/v7/widget/w;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2761
    invoke-direct {p0}, Landroid/support/v7/widget/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 2769
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2770
    const/4 v0, 0x0

    .line 2773
    :cond_0
    :goto_0
    return v0

    .line 2772
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2773
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public final fp()Landroid/support/v7/widget/A;
    .locals 1

    .prologue
    .line 2778
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/t;)V

    return-object v0
.end method

.method final k(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 2764
    const/4 v0, 0x0

    return v0
.end method
