.class final Lcom/android/mail/browse/N;
.super Lcom/android/mail/ui/bz;
.source "SourceFile"


# instance fields
.field private final aos:Landroid/support/v4/e/a;

.field private aot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/e/a;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bz;-><init>(Landroid/content/Context;)V

    .line 246
    iput-object p2, p0, Lcom/android/mail/browse/N;->aos:Landroid/support/v4/e/a;

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/N;Lcom/android/mail/browse/O;)I
    .locals 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    iget v1, p1, Lcom/android/mail/browse/O;->aoO:I

    iget v2, p1, Lcom/android/mail/browse/O;->aoN:I

    iget-object v3, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v3, v3, Lcom/android/mail/ui/bA;->aJg:I

    iget-object v4, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v4, v4, Lcom/android/mail/ui/bA;->aJf:I

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->ap()I

    move-result v5

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/mail/browse/N;->a(Ljava/util/Set;IIIIILandroid/graphics/Paint;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/N;->e([I)I

    move-result v0

    return v0
.end method

.method private e([I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    .line 292
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 293
    add-int/2addr v1, v3

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v2, v2, Lcom/android/mail/ui/bA;->aJg:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/android/mail/browse/O;Z)V
    .locals 18

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mail/browse/N;->aot:I

    if-nez v1, :cond_1

    .line 338
    :cond_0
    return-void

    .line 304
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/mail/browse/O;->aoO:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/mail/browse/O;->aoN:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v4, v4, Lcom/android/mail/ui/bA;->aJg:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v5, v5, Lcom/android/mail/ui/bA;->aJf:I

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->ap()I

    move-result v6

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/android/mail/browse/N;->a(Ljava/util/Set;IIIIILandroid/graphics/Paint;)[I

    move-result-object v14

    .line 310
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/mail/browse/O;->aoQ:I

    .line 311
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/mail/browse/O;->aoR:I

    .line 313
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/mail/browse/O;->aoT:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 314
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mail/browse/O;->aoS:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 317
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 318
    array-length v0, v14

    move/from16 v16, v0

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mail/browse/N;->e([I)I

    move-result v3

    .line 320
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v5, v4, v2

    .line 321
    if-eqz p3, :cond_3

    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/mail/browse/O;->aoI:I

    add-int/2addr v1, v3

    .line 323
    :goto_0
    const/4 v2, 0x0

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v12, v2

    move v13, v1

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 325
    add-int/lit8 v2, v16, -0x1

    if-gt v12, v2, :cond_0

    .line 326
    if-eqz p3, :cond_4

    aget v2, v14, v12

    sub-int v2, v13, v2

    .line 330
    :goto_2
    int-to-float v2, v2

    int-to-float v3, v15

    aget v4, v14, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mail/browse/N;->aos:Landroid/support/v4/e/a;

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->pN()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v6, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget v7, v9, Lcom/android/mail/ui/bA;->aJb:I

    invoke-virtual {v1, v7}, Lcom/android/mail/providers/Folder;->bx(I)I

    move-result v7

    iget v8, v9, Lcom/android/mail/ui/bA;->aJc:I

    invoke-virtual {v1, v8}, Lcom/android/mail/providers/Folder;->cz(I)I

    move-result v8

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v11}, Lcom/android/mail/ui/bz;->a(Landroid/graphics/Canvas;FFIILjava/lang/String;IILcom/android/mail/ui/bA;Landroid/support/v4/e/a;Landroid/graphics/Paint;)V

    .line 334
    add-int/lit8 v1, v12, 0x1

    aget v2, v14, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    iget v3, v3, Lcom/android/mail/ui/bA;->aJg:I

    add-int/2addr v2, v3

    .line 336
    if-eqz p3, :cond_2

    neg-int v2, v2

    :cond_2
    add-int/2addr v2, v13

    move v12, v1

    move v13, v2

    .line 337
    goto :goto_1

    .line 321
    :cond_3
    sub-int/2addr v1, v3

    goto :goto_0

    :cond_4
    move v2, v13

    .line 326
    goto :goto_2
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/bz;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V

    .line 265
    iget-object v0, p0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/N;->aot:I

    .line 266
    return-void
.end method

.method protected final pR()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/mail/ui/bz;->pR()V

    .line 252
    iget-object v0, p0, Lcom/android/mail/browse/N;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c0080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJe:I

    .line 255
    iget-object v1, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJf:I

    .line 257
    iget-object v1, p0, Lcom/android/mail/browse/N;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c0081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Lcom/android/mail/ui/bA;->aJh:I

    .line 259
    return-void
.end method

.method public final pS()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/mail/browse/N;->aot:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pT()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/android/mail/browse/N;->mContext:Landroid/content/Context;

    const v2, 0x7f090129

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v0, p0, Lcom/android/mail/browse/N;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 345
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/android/mail/ui/bz;->reset()V

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/N;->aot:I

    .line 272
    return-void
.end method
