.class public abstract Lcom/android/mail/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/b/k;


# instance fields
.field private GD:Lcom/android/a/a;

.field private akh:Lcom/android/mail/b/j;

.field protected aki:Lcom/android/mail/b/h;

.field protected akj:Lcom/android/a/i;

.field protected final akk:F

.field protected final akl:Landroid/graphics/Paint;

.field protected final akm:Landroid/graphics/Paint;

.field private akn:I

.field private ako:I

.field protected final lR:Landroid/content/res/Resources;

.field protected final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/mail/b/a;->lR:Landroid/content/res/Resources;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 70
    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/mail/b/a;->akk:F

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/mail/b/a;->akk:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/mail/b/a;->mMatrix:Landroid/graphics/Matrix;

    .line 79
    return-void
.end method

.method protected static a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    return-void
.end method

.method private a(Lcom/android/mail/b/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    invoke-virtual {v1, p1}, Lcom/android/mail/b/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    invoke-virtual {v1}, Lcom/android/a/i;->releaseReference()V

    .line 177
    iput-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/mail/b/a;->akh:Lcom/android/mail/b/j;

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/mail/b/a;->akh:Lcom/android/mail/b/j;

    iget-object v2, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    invoke-virtual {v1, v2, p0}, Lcom/android/mail/b/j;->b(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V

    .line 184
    :cond_3
    iput-object p1, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    .line 186
    if-nez p1, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/android/mail/b/a;->invalidateSelf()V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/android/mail/b/a;->GD:Lcom/android/a/a;

    if-eqz v1, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/mail/b/a;->GD:Lcom/android/a/a;

    invoke-interface {v0, p1}, Lcom/android/a/a;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/i;

    .line 196
    :cond_5
    if-eqz v0, :cond_6

    .line 197
    invoke-direct {p0, v0}, Lcom/android/mail/b/a;->b(Lcom/android/a/i;)V

    goto :goto_0

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/b/a;->akh:Lcom/android/mail/b/j;

    iget-object v1, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    invoke-virtual {v0, v1, p0}, Lcom/android/mail/b/j;->a(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V

    goto :goto_0
.end method

.method private b(Lcom/android/a/i;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    if-eq v0, p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    invoke-virtual {v0}, Lcom/android/a/i;->releaseReference()V

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    .line 216
    invoke-virtual {p0}, Lcom/android/mail/b/a;->invalidateSelf()V

    .line 217
    return-void
.end method


# virtual methods
.method public final L(II)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/android/mail/b/a;->akn:I

    .line 159
    iput p2, p0, Lcom/android/mail/b/a;->ako:I

    .line 160
    return-void
.end method

.method protected final a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 112
    invoke-virtual {p0}, Lcom/android/mail/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 116
    iget-object v2, p0, Lcom/android/mail/b/a;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 121
    int-to-float v4, p2

    div-float/2addr v2, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 122
    iget-object v3, p0, Lcom/android/mail/b/a;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    iget-object v2, p0, Lcom/android/mail/b/a;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 127
    iget-object v2, p0, Lcom/android/mail/b/a;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v2, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    iget-object v1, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-static {p4, v0, v1}, Lcom/android/mail/b/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/android/mail/b/a;->akk:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/mail/b/a;->akm:Landroid/graphics/Paint;

    invoke-virtual {p4, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method public final a(Lcom/android/a/a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mail/b/a;->GD:Lcom/android/a/a;

    .line 83
    return-void
.end method

.method public final a(Lcom/android/mail/b/j;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mail/b/a;->akh:Lcom/android/mail/b/j;

    .line 87
    return-void
.end method

.method public final b(Lcom/android/a/g;Lcom/android/a/i;)V
    .locals 1

    .prologue
    .line 221
    check-cast p1, Lcom/android/mail/b/h;

    .line 223
    iget-object v0, p0, Lcom/android/mail/b/a;->akh:Lcom/android/mail/b/j;

    invoke-virtual {v0, p1, p0}, Lcom/android/mail/b/j;->b(Lcom/android/mail/b/h;Lcom/android/mail/b/k;)V

    .line 224
    iget-object v0, p0, Lcom/android/mail/b/a;->aki:Lcom/android/mail/b/h;

    invoke-virtual {p1, v0}, Lcom/android/mail/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0, p2}, Lcom/android/mail/b/a;->b(Lcom/android/a/i;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/android/a/i;->releaseReference()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/mail/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/android/mail/b/a;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    iget-object v0, v0, Lcom/android/a/i;->GM:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    iget-object v0, v0, Lcom/android/a/i;->GM:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    invoke-virtual {v1}, Lcom/android/a/i;->fY()I

    move-result v1

    iget-object v2, p0, Lcom/android/mail/b/a;->akj:Lcom/android/a/i;

    invoke-virtual {v2}, Lcom/android/a/i;->fZ()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mail/b/a;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mail/b/a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public final ot()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/mail/b/a;->akn:I

    return v0
.end method

.method public final ou()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/mail/b/a;->ako:I

    return v0
.end method

.method public final ov()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/b/a;->a(Lcom/android/mail/b/h;)V

    .line 164
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/mail/b/a;->akl:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 243
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/android/mail/b/h;

    invoke-direct {v0, p1, p2}, Lcom/android/mail/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/mail/b/a;->a(Lcom/android/mail/b/h;)V

    .line 168
    return-void
.end method
