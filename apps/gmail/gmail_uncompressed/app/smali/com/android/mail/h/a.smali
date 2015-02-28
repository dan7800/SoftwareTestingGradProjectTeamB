.class public final Lcom/android/mail/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final akC:Lcom/android/mail/b/e;

.field private final aro:Landroid/graphics/Canvas;

.field private final axC:Landroid/graphics/Bitmap;

.field private final axD:[Landroid/graphics/Bitmap;

.field private final axE:[Landroid/graphics/Bitmap;

.field private final axF:Landroid/graphics/Typeface;

.field private final axG:Landroid/graphics/Rect;

.field private final axH:I

.field private final axI:I

.field private final axJ:I

.field private final axK:Landroid/text/TextPaint;

.field private final axL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/h/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/mail/b/f;

    invoke-direct {v0, p1}, Lcom/android/mail/b/f;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, v0}, Lcom/android/mail/h/a;-><init>(Landroid/content/res/Resources;Lcom/android/mail/b/e;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/mail/b/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    .line 55
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/mail/h/a;->aro:Landroid/graphics/Canvas;

    .line 56
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/android/mail/h/a;->axL:[C

    .line 66
    const v0, 0x7f0c00cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/h/a;->axH:I

    .line 67
    const v0, 0x7f0c00cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/h/a;->axI:I

    .line 68
    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/h/a;->axJ:I

    .line 69
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/h/a;->axF:Landroid/graphics/Typeface;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mail/h/a;->axG:Landroid/graphics/Rect;

    .line 71
    iget-object v0, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/mail/h/a;->axF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 72
    iget-object v0, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/mail/h/a;->axJ:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v0, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 75
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mail/h/a;->axD:[Landroid/graphics/Bitmap;

    .line 77
    const v0, 0x7f020076

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/h/a;->axC:Landroid/graphics/Bitmap;

    .line 78
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mail/h/a;->axE:[Landroid/graphics/Bitmap;

    .line 80
    iput-object p2, p0, Lcom/android/mail/h/a;->akC:Lcom/android/mail/b/e;

    .line 81
    return-void
.end method

.method private a(Lcom/android/mail/ui/cj;Z)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    iget v3, p1, Lcom/android/mail/ui/cj;->width:I

    if-lez v3, :cond_0

    iget v3, p1, Lcom/android/mail/ui/cj;->height:I

    if-gtz v3, :cond_2

    .line 124
    :cond_0
    sget-object v3, Lcom/android/mail/h/a;->TAG:Ljava/lang/String;

    const-string v4, "LetterTileProvider width(%d) or height(%d) is 0."

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/mail/ui/cj;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    iget v0, p1, Lcom/android/mail/ui/cj;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    const/4 v1, 0x0

    .line 152
    :cond_1
    :goto_0
    return-object v1

    .line 129
    :cond_2
    iget v3, p1, Lcom/android/mail/ui/cj;->aKN:F

    .line 130
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_5

    move v2, v0

    .line 138
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/android/mail/h/a;->axE:[Landroid/graphics/Bitmap;

    .line 140
    :goto_2
    aget-object v1, v0, v2

    .line 143
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p1, Lcom/android/mail/ui/cj;->width:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p1, Lcom/android/mail/ui/cj;->height:I

    if-eq v3, v4, :cond_1

    .line 145
    :cond_4
    if-eqz p2, :cond_7

    .line 146
    iget-object v1, p0, Lcom/android/mail/h/a;->axC:Landroid/graphics/Bitmap;

    iget v3, p1, Lcom/android/mail/ui/cj;->width:I

    iget v4, p1, Lcom/android/mail/ui/cj;->height:I

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/c;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    :goto_3
    aput-object v1, v0, v2

    goto :goto_0

    .line 132
    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v3, v0

    if-nez v0, :cond_3

    move v2, v1

    .line 133
    goto :goto_1

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/mail/h/a;->axD:[Landroid/graphics/Bitmap;

    goto :goto_2

    .line 148
    :cond_7
    iget v1, p1, Lcom/android/mail/ui/cj;->width:I

    iget v3, p1, Lcom/android/mail/ui/cj;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/cj;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 86
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 89
    invoke-direct {p0, p1, v2}, Lcom/android/mail/h/a;->a(Lcom/android/mail/ui/cj;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 90
    if-nez v7, :cond_1

    .line 91
    sget-object v0, Lcom/android/mail/h/a;->TAG:Ljava/lang/String;

    const-string v4, "LetterTileProvider width(%d) or height(%d) is 0 for name %s and address %s."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/mail/ui/cj;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p1, Lcom/android/mail/ui/cj;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object p2, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 113
    :goto_1
    return-object v0

    :cond_0
    move-object v0, p3

    .line 85
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/mail/h/a;->aro:Landroid/graphics/Canvas;

    .line 97
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v4, p0, Lcom/android/mail/h/a;->akC:Lcom/android/mail/b/e;

    invoke-interface {v4, p3}, Lcom/android/mail/b/e;->bd(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 102
    const/16 v4, 0x41

    if-gt v4, v5, :cond_2

    const/16 v4, 0x5a

    if-le v5, v4, :cond_4

    :cond_2
    const/16 v4, 0x61

    if-gt v4, v5, :cond_3

    const/16 v4, 0x7a

    if-le v5, v4, :cond_4

    :cond_3
    const/16 v4, 0x30

    if-gt v4, v5, :cond_5

    const/16 v4, 0x39

    if-gt v5, v4, :cond_5

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_8

    .line 103
    iget-object v1, p0, Lcom/android/mail/h/a;->axL:[C

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v1, v2

    .line 104
    iget-object v4, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    iget v1, p1, Lcom/android/mail/ui/cj;->aKO:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    iget v1, p1, Lcom/android/mail/ui/cj;->aKO:F

    :goto_3
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 106
    iget-object v1, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/android/mail/h/a;->axL:[C

    iget-object v5, p0, Lcom/android/mail/h/a;->axG:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 107
    iget-object v1, p0, Lcom/android/mail/h/a;->axL:[C

    iget v4, p1, Lcom/android/mail/ui/cj;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p1, Lcom/android/mail/ui/cj;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    iget-object v6, p0, Lcom/android/mail/h/a;->axG:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/mail/h/a;->axG:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/mail/h/a;->axK:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_4
    move-object v0, v7

    .line 113
    goto :goto_1

    :cond_5
    move v4, v2

    .line 102
    goto :goto_2

    .line 104
    :cond_6
    iget v1, p1, Lcom/android/mail/ui/cj;->aKN:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/mail/h/a;->axH:I

    :goto_5
    int-to-float v1, v1

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/android/mail/h/a;->axI:I

    goto :goto_5

    .line 110
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/android/mail/h/a;->a(Lcom/android/mail/ui/cj;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method
