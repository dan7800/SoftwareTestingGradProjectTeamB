.class public Lcom/google/android/gm/ui/g;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private final Fx:I

.field private GN:I

.field private final La:F

.field private final aea:Landroid/graphics/Rect;

.field private final alm:Landroid/text/TextPaint;

.field private final bpH:Landroid/graphics/Paint$FontMetricsInt;

.field private final bpI:I

.field private final bpJ:I

.field private final bpK:I

.field private final bpL:I

.field private bpM:Ljava/lang/CharSequence;

.field private final bpN:I

.field final synthetic bpO:Lcom/google/android/gm/ui/e;

.field private final mu:I

.field private final vh:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ui/e;)V
    .locals 4

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 235
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/g;->aea:Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    .line 255
    invoke-static {p1}, Lcom/google/android/gm/ui/e;->a(Lcom/google/android/gm/ui/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    const v0, 0x7f0c0156

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/g;->bpI:I

    .line 258
    const v0, 0x7f0c0157

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    .line 259
    const v0, 0x7f0c0158

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/g;->Fx:I

    .line 260
    const v0, 0x7f0c0155

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/g;->La:F

    .line 262
    const v0, -0xa0a0b

    iput v0, p0, Lcom/google/android/gm/ui/g;->mu:I

    .line 263
    const v0, -0xddddde

    iput v0, p0, Lcom/google/android/gm/ui/g;->bpL:I

    .line 264
    const v0, -0xeeaa34

    iput v0, p0, Lcom/google/android/gm/ui/g;->bpK:I

    .line 266
    invoke-direct {p0}, Lcom/google/android/gm/ui/g;->Ip()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v2}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v2}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon_11_image_list.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const v0, 0x7f0200ac

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/g;->bpN:I

    .line 268
    return-void

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v2}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v2}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon_11_video_list.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const v0, 0x7f0200b6

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gm/ui/e;->Io()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/android/gm/ui/e;->Io()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_6
    const v0, 0x7f0200b5

    goto :goto_0
.end method

.method private Ip()Ljava/lang/String;
    .locals 5

    .prologue
    .line 292
    const-string v1, ""

    .line 294
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v0}, Lcom/google/android/gm/ui/e;->c(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v0}, Lcom/google/android/gm/ui/e;->c(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v0}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v0}, Lcom/google/android/gm/ui/e;->b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 298
    if-eqz v2, :cond_2

    .line 299
    sget-object v0, Lcom/google/android/gm/ui/e;->bpE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/gm/ui/g;->La:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public final Iq()Lcom/google/android/gm/ui/e;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p9

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ui/g;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)V

    .line 344
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v3, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v4, p0, Lcom/google/android/gm/ui/g;->bpI:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 345
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p0, Lcom/google/android/gm/ui/g;->bpI:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 347
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, p7

    .line 348
    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpH:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, p7

    .line 350
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 352
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->aea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/google/android/gm/ui/g;->GN:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v1, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->aea:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 355
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/gm/ui/g;->bpL:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 356
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 358
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->aea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 360
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/gm/ui/g;->mu:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 361
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    iget-object v3, p0, Lcom/google/android/gm/ui/g;->aea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 364
    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 365
    iget-object v2, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    add-int/2addr v3, v5

    iget v4, p0, Lcom/google/android/gm/ui/g;->bpI:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/google/android/gm/ui/g;->bpI:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/google/android/gm/ui/g;->bpN:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->vh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/gm/ui/g;->bpK:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 370
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/gm/ui/g;->La:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 371
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 372
    iget-object v2, p0, Lcom/google/android/gm/ui/g;->bpM:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpM:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/google/android/gm/ui/g;->bpI:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/google/android/gm/ui/g;->bpN:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/google/android/gm/ui/g;->bpI:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    int-to-float v6, p7

    iget-object v7, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 374
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .prologue
    .line 321
    invoke-direct {p0, p5, p1}, Lcom/google/android/gm/ui/g;->a(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)V

    .line 322
    if-eqz p5, :cond_0

    .line 323
    iget v0, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    div-int/lit8 v0, v0, 0x2

    .line 324
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Lcom/google/android/gm/ui/g;->bpI:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 325
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, p0, Lcom/google/android/gm/ui/g;->bpI:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 326
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 327
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 330
    :cond_0
    iget v0, p0, Lcom/google/android/gm/ui/g;->Fx:I

    .line 331
    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpO:Lcom/google/android/gm/ui/e;

    invoke-static {v1}, Lcom/google/android/gm/ui/e;->d(Lcom/google/android/gm/ui/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/g;->bpM:Ljava/lang/CharSequence;

    .line 332
    iget-object v0, p0, Lcom/google/android/gm/ui/g;->alm:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/gm/ui/g;->bpM:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ui/g;->bpM:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/gm/ui/g;->bpI:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gm/ui/g;->bpN:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gm/ui/g;->bpI:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gm/ui/g;->bpJ:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gm/ui/g;->GN:I

    .line 336
    iget v0, p0, Lcom/google/android/gm/ui/g;->GN:I

    return v0
.end method
