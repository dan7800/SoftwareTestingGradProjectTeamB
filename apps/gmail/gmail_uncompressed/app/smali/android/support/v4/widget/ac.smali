.class final Landroid/support/v4/widget/ac;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic nz:Landroid/support/v4/widget/W;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/W;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->j(Landroid/support/v4/widget/W;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->k(Landroid/support/v4/widget/W;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    iget v1, v1, Landroid/support/v4/widget/W;->nk:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 852
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    iget v1, v1, Landroid/support/v4/widget/W;->ni:I

    iget-object v2, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    iget v2, v2, Landroid/support/v4/widget/W;->ni:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 853
    iget-object v1, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    invoke-static {v1}, Landroid/support/v4/widget/W;->e(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 854
    iget-object v1, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;IZ)V

    .line 855
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->k(Landroid/support/v4/widget/W;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method
