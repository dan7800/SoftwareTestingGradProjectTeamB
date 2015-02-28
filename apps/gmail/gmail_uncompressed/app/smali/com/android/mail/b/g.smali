.class public final Lcom/android/mail/b/g;
.super Lcom/android/mail/b/a;
.source "SourceFile"


# static fields
.field private static akD:I

.field private static akE:I

.field private static final akF:Landroid/graphics/Paint;

.field private static final akG:Landroid/graphics/Rect;

.field private static final akH:[C

.field private static akp:Landroid/graphics/Bitmap;


# instance fields
.field private akC:Lcom/android/mail/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/mail/b/g;->akG:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/mail/b/g;->akH:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/mail/b/a;-><init>(Landroid/content/res/Resources;)V

    .line 47
    sget v0, Lcom/android/mail/b/g;->akD:I

    if-nez v0, :cond_0

    .line 48
    const v0, 0x7f0c00cd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mail/b/g;->akD:I

    .line 49
    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mail/b/g;->akE:I

    .line 50
    const v0, 0x7f020076

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/b/g;->akp:Landroid/graphics/Bitmap;

    .line 52
    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    const-string v1, "sans-serif-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 54
    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/mail/b/g;->aki:Lcom/android/mail/b/h;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mail/b/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/android/mail/b/g;->aki:Lcom/android/mail/b/h;

    invoke-virtual {v0}, Lcom/android/mail/b/h;->hQ()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/mail/b/g;->akC:Lcom/android/mail/b/e;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/mail/b/f;

    iget-object v6, p0, Lcom/android/mail/b/g;->lR:Landroid/content/res/Resources;

    invoke-direct {v4, v6}, Lcom/android/mail/b/f;-><init>(Landroid/content/res/Resources;)V

    iput-object v4, p0, Lcom/android/mail/b/g;->akC:Lcom/android/mail/b/e;

    :cond_0
    iget-object v4, p0, Lcom/android/mail/b/g;->akC:Lcom/android/mail/b/e;

    invoke-interface {v4, v0}, Lcom/android/mail/b/e;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/mail/b/g;->akl:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    invoke-static {p1, v5, v0}, Lcom/android/mail/b/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mail/b/g;->aki:Lcom/android/mail/b/h;

    invoke-virtual {v0}, Lcom/android/mail/b/h;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-gt v0, v1, :cond_1

    const/16 v0, 0x5a

    if-le v1, v0, :cond_3

    :cond_1
    const/16 v0, 0x61

    if-gt v0, v1, :cond_2

    const/16 v0, 0x7a

    if-le v1, v0, :cond_3

    :cond_2
    const/16 v0, 0x30

    if-gt v0, v1, :cond_5

    const/16 v0, 0x39

    if-gt v1, v0, :cond_5

    :cond_3
    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/mail/b/g;->akH:[C

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    sget v1, Lcom/android/mail/b/g;->akD:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/mail/b/g;->akH:[C

    sget-object v4, Lcom/android/mail/b/g;->akG:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    sget v1, Lcom/android/mail/b/g;->akE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/mail/b/g;->akH:[C

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sget-object v5, Lcom/android/mail/b/g;->akG:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    int-to-float v5, v0

    sget-object v6, Lcom/android/mail/b/g;->akF:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 82
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v2

    .line 81
    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/mail/b/g;->akp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/mail/b/g;->akp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/mail/b/g;->akp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mail/b/g;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public final a(Lcom/android/mail/b/e;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mail/b/g;->akC:Lcom/android/mail/b/e;

    .line 64
    return-void
.end method
