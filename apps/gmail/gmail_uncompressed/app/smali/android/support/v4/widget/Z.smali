.class final Landroid/support/v4/widget/Z;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic nz:Landroid/support/v4/widget/W;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/W;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Landroid/support/v4/widget/Z;->nz:Landroid/support/v4/widget/W;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v4/widget/Z;->nz:Landroid/support/v4/widget/W;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/widget/W;->a(Landroid/support/v4/widget/W;F)V

    .line 410
    return-void
.end method
