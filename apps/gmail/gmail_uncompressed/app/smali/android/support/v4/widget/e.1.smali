.class final Landroid/support/v4/widget/e;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# instance fields
.field private kH:I

.field private kI:Landroid/graphics/RadialGradient;

.field private kJ:Landroid/graphics/Paint;

.field private kK:I

.field final synthetic kL:Landroid/support/v4/widget/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/d;II)V
    .locals 7

    .prologue
    .line 128
    iput-object p1, p0, Landroid/support/v4/widget/e;->kL:Landroid/support/v4/widget/d;

    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/e;->kJ:Landroid/graphics/Paint;

    .line 131
    iput p2, p0, Landroid/support/v4/widget/e;->kH:I

    .line 132
    iput p3, p0, Landroid/support/v4/widget/e;->kK:I

    .line 133
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Landroid/support/v4/widget/e;->kK:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/e;->kK:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/e;->kH:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v4/widget/e;->kI:Landroid/graphics/RadialGradient;

    .line 137
    iget-object v0, p0, Landroid/support/v4/widget/e;->kJ:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/widget/e;->kI:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    return-void

    .line 133
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/widget/e;->kL:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->getWidth()I

    move-result v0

    .line 143
    iget-object v1, p0, Landroid/support/v4/widget/e;->kL:Landroid/support/v4/widget/d;

    invoke-virtual {v1}, Landroid/support/v4/widget/d;->getHeight()I

    move-result v1

    .line 144
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/e;->kK:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/support/v4/widget/e;->kH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/e;->kJ:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/e;->kK:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    return-void
.end method
