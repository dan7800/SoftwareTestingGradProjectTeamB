.class public final Landroid/support/v7/widget/Z;
.super Landroid/support/v7/app/b;
.source "SourceFile"


# instance fields
.field Gv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1802
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/b;-><init>(II)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1803
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Z;->gravity:I

    .line 1804
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1807
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/b;-><init>(II)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1808
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Z;->gravity:I

    .line 1809
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1798
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1799
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 1822
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1823
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Z;)V
    .locals 1

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1818
    iget v0, p1, Landroid/support/v7/widget/Z;->Gv:I

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1819
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1833
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1834
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1826
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Z;->Gv:I

    .line 1829
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/Z;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/Z;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/Z;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/Z;->bottomMargin:I

    .line 1830
    return-void
.end method
