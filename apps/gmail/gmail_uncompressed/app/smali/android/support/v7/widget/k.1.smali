.class public final Landroid/support/v7/widget/k;
.super Landroid/support/v7/widget/G;
.source "SourceFile"


# instance fields
.field public Cq:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public Cr:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public Cs:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public Ct:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public Cu:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field Cv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 800
    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/G;-><init>(II)V

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/k;->Cq:Z

    .line 802
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 788
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/k;)V
    .locals 1

    .prologue
    .line 795
    invoke-direct {p0, p1}, Landroid/support/v7/widget/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-boolean v0, p1, Landroid/support/v7/widget/k;->Cq:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/k;->Cq:Z

    .line 797
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0, p1}, Landroid/support/v7/widget/G;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    return-void
.end method
