.class public final Lcom/android/mail/browse/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final aoA:I

.field final aoB:I

.field final aoC:F

.field final aoD:I

.field final aoE:I

.field final aoF:I

.field final aoG:I

.field final aoH:F

.field final aoI:I

.field final aoJ:I

.field final aoK:I

.field final aoL:I

.field final aoM:F

.field final aoN:I

.field final aoO:I

.field final aoP:I

.field final aoQ:I

.field final aoR:I

.field final aoS:Landroid/graphics/Typeface;

.field final aoT:F

.field final aoU:I

.field final aoV:I

.field final aoW:I

.field final aoX:I

.field final aoY:I

.field final aoZ:I

.field final aou:I

.field final aov:I

.field final aow:I

.field final aox:I

.field final aoy:I

.field final aoz:I

.field final apa:I

.field final apb:F

.field final apc:I

.field final apd:I

.field final ape:I

.field final apf:I

.field final apg:I

.field final aph:I

.field final api:I

.field final apj:I

.field final apk:I

.field final apl:I

.field final apm:I

.field final apn:I

.field final apo:I

.field final app:I

.field final apq:I

.field final height:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/P;Lcom/android/mail/browse/Q;)V
    .locals 12

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const-string v0, "CIV coordinates constructor"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 249
    invoke-virtual {p3}, Lcom/android/mail/browse/Q;->qe()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 252
    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 254
    invoke-virtual {p3, v0}, Lcom/android/mail/browse/Q;->at(Landroid/view/View;)V

    :cond_0
    move-object v2, v0

    .line 258
    const v0, 0x7f0d0138

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->pZ()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const v1, 0x7f0d000d

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->pY()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 272
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const/4 v1, 0x0

    .line 277
    :goto_1
    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 278
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qa()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const v3, 0x7f0d0130

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 281
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qc()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qd()Z

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v3, :cond_5

    const v3, 0x7f0c00ec

    :goto_4
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v7, 0x7f0d012e

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/android/mail/utils/ag;->Bf()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-virtual {v7, v8, v3, v9, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 287
    :goto_5
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ad;->d(Landroid/view/View;I)V

    .line 288
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->getWidth()I

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 289
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 291
    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->measure(II)V

    .line 292
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 295
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const v7, 0x7f0b003e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/2addr v3, v7

    int-to-double v8, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/android/mail/browse/O;->aoN:I

    .line 297
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const v7, 0x7f0b003f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/2addr v3, v7

    int-to-double v8, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/android/mail/browse/O;->aoO:I

    .line 305
    if-eqz v1, :cond_7

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/mail/browse/O;->apo:I

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/mail/browse/O;->apn:I

    .line 308
    invoke-static {v1}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/android/mail/browse/O;->app:I

    .line 309
    invoke-static {v1}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apq:I

    .line 314
    :goto_6
    invoke-static {v2}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v3

    .line 316
    const v1, 0x7f0d0136

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 317
    const v1, 0x7f0c00f5

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 318
    invoke-static {v7}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v4

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/mail/browse/O;->aou:I

    .line 319
    invoke-static {v7}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aov:I

    .line 320
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aow:I

    .line 322
    const v1, 0x7f0d0131

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 323
    invoke-static {v1}, Lcom/android/mail/browse/O;->e(Landroid/widget/TextView;)I

    move-result v3

    .line 324
    invoke-static {v1}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aox:I

    .line 325
    invoke-static {v1}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/mail/browse/O;->aoy:I

    .line 326
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoz:I

    .line 327
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoA:I

    .line 328
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/mail/browse/O;->aoB:I

    .line 329
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoC:F

    .line 331
    const v1, 0x7f0d0129

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    invoke-static {v1}, Lcom/android/mail/browse/O;->e(Landroid/widget/TextView;)I

    move-result v4

    .line 333
    invoke-static {v1}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Lcom/android/mail/browse/O;->aoD:I

    .line 334
    invoke-static {v1}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    iput v4, p0, Lcom/android/mail/browse/O;->aoE:I

    .line 335
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoF:I

    .line 336
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoG:I

    .line 337
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoH:F

    .line 339
    const v1, 0x7f0d0137

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 340
    invoke-static {v1}, Lcom/android/mail/browse/O;->e(Landroid/widget/TextView;)I

    move-result v4

    .line 341
    invoke-static {v1}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Lcom/android/mail/browse/O;->aoI:I

    .line 342
    invoke-static {v1}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v7

    add-int/2addr v4, v7

    iput v4, p0, Lcom/android/mail/browse/O;->aoJ:I

    .line 343
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoK:I

    .line 344
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/mail/browse/O;->aoL:I

    .line 345
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoM:F

    .line 347
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->pZ()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    invoke-static {v0}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoP:I

    .line 349
    iget v1, p0, Lcom/android/mail/browse/O;->aoP:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/mail/browse/O;->aoQ:I

    .line 350
    invoke-static {v0}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoR:I

    .line 351
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/O;->aoS:Landroid/graphics/Typeface;

    .line 352
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->aoT:F

    .line 361
    :goto_7
    const v0, 0x7f0d0135

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qb()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 363
    invoke-static {v0}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apf:I

    .line 364
    invoke-static {v0}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apg:I

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aph:I

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->api:I

    .line 371
    :goto_8
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qa()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 372
    invoke-static {v5}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->apj:I

    .line 373
    invoke-static {v5}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->apk:I

    .line 378
    :goto_9
    invoke-virtual {p2}, Lcom/android/mail/browse/P;->qc()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 379
    invoke-static {v6}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->apl:I

    .line 380
    invoke-static {v6}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->apm:I

    .line 385
    :goto_a
    const v0, 0x7f0d0132

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoU:I

    .line 387
    iget v1, p0, Lcom/android/mail/browse/O;->aoU:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/mail/browse/O;->aoV:I

    .line 388
    invoke-static {v0}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->aoW:I

    .line 390
    const v0, 0x7f0d0133

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 391
    invoke-static {v0}, Lcom/android/mail/browse/O;->ar(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoX:I

    .line 392
    iget v1, p0, Lcom/android/mail/browse/O;->aoX:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/mail/browse/O;->aoY:I

    .line 393
    invoke-static {v0}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->aoZ:I

    .line 394
    invoke-static {v0}, Lcom/android/mail/utils/al;->aI(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apa:I

    .line 395
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apb:F

    .line 396
    iget v1, p0, Lcom/android/mail/browse/O;->aoZ:I

    invoke-static {v0}, Lcom/android/mail/browse/O;->e(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/browse/O;->apc:I

    .line 398
    const v0, 0x7f0d0134

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/android/mail/browse/O;->as(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/O;->apd:I

    .line 400
    invoke-static {v0}, Lcom/android/mail/utils/al;->aI(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/O;->ape:I

    .line 402
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/mail/browse/O;->height:I

    .line 403
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    .line 404
    return-void

    .line 259
    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 265
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 268
    :pswitch_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const/4 v1, 0x0

    .line 270
    goto/16 :goto_1

    .line 278
    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_2

    .line 281
    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_3

    .line 284
    :cond_5
    const v3, 0x7f0c00ed

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v7, v8, v3, v9, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 311
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mail/browse/O;->apn:I

    iput v1, p0, Lcom/android/mail/browse/O;->apo:I

    iput v1, p0, Lcom/android/mail/browse/O;->apq:I

    iput v1, p0, Lcom/android/mail/browse/O;->app:I

    goto/16 :goto_6

    .line 354
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->aoP:I

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->aoQ:I

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->aoR:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/O;->aoS:Landroid/graphics/Typeface;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->aoT:F

    goto/16 :goto_7

    .line 368
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->api:I

    iput v0, p0, Lcom/android/mail/browse/O;->aph:I

    iput v0, p0, Lcom/android/mail/browse/O;->apg:I

    iput v0, p0, Lcom/android/mail/browse/O;->apf:I

    goto/16 :goto_8

    .line 375
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->apk:I

    iput v0, p0, Lcom/android/mail/browse/O;->apj:I

    goto/16 :goto_9

    .line 382
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/browse/O;->apm:I

    iput v0, p0, Lcom/android/mail/browse/O;->apl:I

    goto/16 :goto_a

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/browse/P;Lcom/android/mail/browse/Q;)Lcom/android/mail/browse/O;
    .locals 2

    .prologue
    .line 478
    invoke-static {p1}, Lcom/android/mail/browse/P;->a(Lcom/android/mail/browse/P;)I

    move-result v1

    .line 479
    invoke-virtual {p2, v1}, Lcom/android/mail/browse/Q;->bZ(I)Lcom/android/mail/browse/O;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 486
    :goto_0
    return-object v0

    .line 484
    :cond_0
    new-instance v0, Lcom/android/mail/browse/O;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/browse/O;-><init>(Landroid/content/Context;Lcom/android/mail/browse/P;Lcom/android/mail/browse/Q;)V

    .line 485
    invoke-virtual {p2, v1, v0}, Lcom/android/mail/browse/Q;->a(ILcom/android/mail/browse/O;)V

    goto :goto_0
.end method

.method private static ar(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    :goto_0
    if-eqz p0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    move v0, v1

    goto :goto_0

    .line 445
    :cond_0
    return v0
.end method

.method private static as(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    :goto_0
    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    move v0, v1

    goto :goto_0

    .line 457
    :cond_0
    return v0
.end method

.method private static e(Landroid/widget/TextView;)I
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 433
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v0, v1, v0

    return v0
.end method
