.class final Landroid/support/v4/d/f;
.super Landroid/print/PrintDocumentAdapter;
.source "SourceFile"


# instance fields
.field private fL:Landroid/print/PrintAttributes;

.field fM:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field fN:Landroid/graphics/Bitmap;

.field final synthetic fO:Ljava/lang/String;

.field final synthetic fP:Landroid/net/Uri;

.field final synthetic fQ:Landroid/support/v4/d/i;

.field final synthetic fR:I

.field final synthetic fS:Landroid/support/v4/d/e;


# direct methods
.method constructor <init>(Landroid/support/v4/d/e;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/d/i;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 303
    iput-object p1, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iput-object p2, p0, Landroid/support/v4/d/f;->fO:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/d/f;->fP:Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/d/f;->fQ:Landroid/support/v4/d/i;

    iput p5, p0, Landroid/support/v4/d/f;->fR:I

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 306
    iput-object v0, p0, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/d/f;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/support/v4/d/f;->aA()V

    return-void
.end method

.method private aA()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    invoke-static {v0}, Landroid/support/v4/d/e;->a(Landroid/support/v4/d/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iget-object v0, v0, Landroid/support/v4/d/e;->fJ:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iget-object v0, v0, Landroid/support/v4/d/e;->fJ:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 388
    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/d/e;->fJ:Landroid/graphics/BitmapFactory$Options;

    .line 390
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 396
    invoke-direct {p0}, Landroid/support/v4/d/f;->aA()V

    .line 397
    iget-object v0, p0, Landroid/support/v4/d/f;->fM:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 398
    iget-object v0, p0, Landroid/support/v4/d/f;->fQ:Landroid/support/v4/d/i;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/support/v4/d/f;->fQ:Landroid/support/v4/d/i;

    .line 401
    :cond_0
    return-void
.end method

.method public final onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 314
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 316
    iput-object p2, p0, Landroid/support/v4/d/f;->fL:Landroid/print/PrintAttributes;

    .line 382
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 321
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroid/support/v4/d/f;->fO:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 325
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    :goto_1
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 325
    goto :goto_1

    .line 330
    :cond_2
    new-instance v0, Landroid/support/v4/d/g;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/d/g;-><init>(Landroid/support/v4/d/f;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    iput-object v0, p0, Landroid/support/v4/d/f;->fM:Landroid/os/AsyncTask;

    .line 379
    iget-object v0, p0, Landroid/support/v4/d/f;->fM:Landroid/os/AsyncTask;

    new-array v1, v6, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 381
    iput-object p2, p0, Landroid/support/v4/d/f;->fL:Landroid/print/PrintAttributes;

    goto :goto_0
.end method

.method public final onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 407
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iget-object v0, v0, Landroid/support/v4/d/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/d/f;->fL:Landroid/print/PrintAttributes;

    invoke-direct {v1, v0, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 411
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v2

    .line 412
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iget-object v0, p0, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v0, p0, Landroid/support/v4/d/f;->fR:I

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v8, v5

    div-float/2addr v0, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v4, v7, v4

    div-float/2addr v4, v9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v5, v5

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    div-float/2addr v0, v9

    invoke-virtual {v6, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 419
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v0, v2

    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :goto_1
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 440
    if-eqz p2, :cond_0

    .line 442
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    :cond_0
    :goto_2
    return-void

    .line 415
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v8, v5

    div-float/2addr v0, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    const-string v2, "PrintHelperKitkat"

    const-string v3, "Error writing printed content"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 437
    :catchall_0
    move-exception v0

    .line 438
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 440
    if-eqz p2, :cond_2

    .line 442
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 445
    :cond_2
    :goto_3
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method
