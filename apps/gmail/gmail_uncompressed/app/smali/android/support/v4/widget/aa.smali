.class final Landroid/support/v4/widget/aa;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic nA:I

.field final synthetic nB:I

.field final synthetic nz:Landroid/support/v4/widget/W;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/W;II)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Landroid/support/v4/widget/aa;->nz:Landroid/support/v4/widget/W;

    iput p2, p0, Landroid/support/v4/widget/aa;->nA:I

    iput p3, p0, Landroid/support/v4/widget/aa;->nB:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/aa;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->b(Landroid/support/v4/widget/W;)Landroid/support/v4/widget/z;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/widget/aa;->nA:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/aa;->nB:I

    iget v3, p0, Landroid/support/v4/widget/aa;->nA:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/z;->setAlpha(I)V

    .line 438
    return-void
.end method
