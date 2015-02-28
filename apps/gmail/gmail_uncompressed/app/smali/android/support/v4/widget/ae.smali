.class final Landroid/support/v4/widget/ae;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic nz:Landroid/support/v4/widget/W;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/W;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Landroid/support/v4/widget/ae;->nz:Landroid/support/v4/widget/W;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Landroid/support/v4/widget/ae;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0}, Landroid/support/v4/widget/W;->l(Landroid/support/v4/widget/W;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/ae;->nz:Landroid/support/v4/widget/W;

    invoke-static {v1}, Landroid/support/v4/widget/W;->l(Landroid/support/v4/widget/W;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 884
    iget-object v1, p0, Landroid/support/v4/widget/ae;->nz:Landroid/support/v4/widget/W;

    invoke-static {v1, v0}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;F)V

    .line 885
    iget-object v0, p0, Landroid/support/v4/widget/ae;->nz:Landroid/support/v4/widget/W;

    invoke-static {v0, p1}, Landroid/support/v4/widget/W;->b(Landroid/support/v4/widget/W;F)V

    .line 886
    return-void
.end method
