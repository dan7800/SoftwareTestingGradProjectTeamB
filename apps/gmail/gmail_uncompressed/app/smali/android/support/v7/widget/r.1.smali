.class final Landroid/support/v7/widget/r;
.super Landroid/support/v7/widget/w;
.source "SourceFile"


# instance fields
.field final synthetic CY:Landroid/support/v7/widget/w;

.field final synthetic CZ:Landroid/support/v7/widget/w;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w;)V
    .locals 0

    .prologue
    .line 2708
    iput-object p1, p0, Landroid/support/v7/widget/r;->CY:Landroid/support/v7/widget/w;

    iput-object p2, p0, Landroid/support/v7/widget/r;->CZ:Landroid/support/v7/widget/w;

    invoke-direct {p0}, Landroid/support/v7/widget/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;II)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2718
    invoke-static {p1}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2720
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/r;->CY:Landroid/support/v7/widget/w;

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/w;->d(Landroid/view/View;II)I

    move-result v0

    return v0

    .line 2718
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2720
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/r;->CZ:Landroid/support/v7/widget/w;

    goto :goto_1
.end method

.method final k(Landroid/view/View;I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2711
    invoke-static {p1}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2713
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/r;->CY:Landroid/support/v7/widget/w;

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/w;->k(Landroid/view/View;I)I

    move-result v0

    return v0

    .line 2711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2713
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/r;->CZ:Landroid/support/v7/widget/w;

    goto :goto_1
.end method
