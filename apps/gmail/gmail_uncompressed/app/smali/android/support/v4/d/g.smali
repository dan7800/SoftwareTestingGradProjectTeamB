.class final Landroid/support/v4/d/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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


# instance fields
.field final synthetic fT:Landroid/os/CancellationSignal;

.field final synthetic fU:Landroid/print/PrintAttributes;

.field final synthetic fV:Landroid/print/PrintAttributes;

.field final synthetic fW:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic fX:Landroid/support/v4/d/f;


# direct methods
.method constructor <init>(Landroid/support/v4/d/f;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    iput-object p2, p0, Landroid/support/v4/d/g;->fT:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/d/g;->fU:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/d/g;->fV:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroid/support/v4/d/g;->fW:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs aB()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    iget-object v0, v0, Landroid/support/v4/d/f;->fS:Landroid/support/v4/d/e;

    iget-object v1, p0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    iget-object v1, v1, Landroid/support/v4/d/f;->fP:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/d/e;->a(Landroid/support/v4/d/e;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Landroid/support/v4/d/g;->aB()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v4/d/g;->fW:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 330
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    iput-object p1, v1, Landroid/support/v4/d/f;->fN:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    iget-object v2, v2, Landroid/support/v4/d/f;->fO:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/d/g;->fU:Landroid/print/PrintAttributes;

    iget-object v3, p0, Landroid/support/v4/d/g;->fV:Landroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/d/g;->fW:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/d/g;->fW:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/d/g;->fT:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/support/v4/d/h;

    invoke-direct {v1, p0}, Landroid/support/v4/d/h;-><init>(Landroid/support/v4/d/g;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 343
    return-void
.end method
