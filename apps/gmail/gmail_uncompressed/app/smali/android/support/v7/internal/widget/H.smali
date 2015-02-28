.class public final Landroid/support/v7/internal/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bk;


# instance fields
.field final synthetic AG:Landroid/support/v7/internal/widget/D;

.field private yt:Z

.field private yu:I


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/D;)V
    .locals 1

    .prologue
    .line 578
    iput-object p1, p0, Landroid/support/v7/internal/widget/H;->AG:Landroid/support/v7/internal/widget/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/H;->yt:Z

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/H;->AG:Landroid/support/v7/internal/widget/D;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    .line 592
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/H;->yt:Z

    .line 593
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/H;->yt:Z

    if-eqz v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/H;->AG:Landroid/support/v7/internal/widget/D;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/widget/D;->ys:Landroid/support/v4/view/aV;

    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/H;->AG:Landroid/support/v7/internal/widget/D;

    iget v1, p0, Landroid/support/v7/internal/widget/H;->yu:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/D;->setVisibility(I)V

    goto :goto_0
.end method

.method public final C(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/H;->yt:Z

    .line 606
    return-void
.end method
