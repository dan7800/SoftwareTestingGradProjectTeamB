.class public final Lcom/android/ex/photo/c/a;
.super Landroid/support/v4/content/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/photo/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/a",
        "<",
        "Lcom/android/ex/photo/c/c;",
        ">;",
        "Lcom/android/ex/photo/c/b;"
    }
.end annotation


# instance fields
.field private aiv:Ljava/lang/String;

.field private fN:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/ex/photo/c/a;->aiv:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private a(Lcom/android/ex/photo/c/c;)V
    .locals 3

    .prologue
    .line 77
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/ex/photo/c/c;->afe:Landroid/graphics/Bitmap;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->isReset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcom/android/ex/photo/c/a;->d(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    .line 87
    iput-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/content/a;->deliverResult(Ljava/lang/Object;)V

    .line 98
    :cond_3
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {v1}, Lcom/android/ex/photo/c/a;->d(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private static d(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_0
    return-void
.end method

.method private og()Lcom/android/ex/photo/c/c;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/android/ex/photo/c/c;

    invoke-direct {v0}, Lcom/android/ex/photo/c/c;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/ex/photo/c/a;->aiv:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/android/ex/photo/c/a;->aiv:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget v3, Lcom/android/ex/photo/k;->agJ:I

    invoke-static {v1, v2, v3}, Lcom/android/ex/photo/util/ImageUtils;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/android/ex/photo/c/c;

    move-result-object v0

    .line 58
    iget-object v1, v0, Lcom/android/ex/photo/c/c;->afe:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Lcom/android/ex/photo/c/c;->afe:Landroid/graphics/Bitmap;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/ex/photo/c/c;->status:I

    goto :goto_0
.end method


# virtual methods
.method public final aV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ex/photo/c/a;->aiv:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/android/ex/photo/c/c;

    invoke-direct {p0, p1}, Lcom/android/ex/photo/c/a;->a(Lcom/android/ex/photo/c/c;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/ex/photo/c/a;->og()Lcom/android/ex/photo/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onCanceled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/android/ex/photo/c/c;

    invoke-super {p0, p1}, Landroid/support/v4/content/a;->onCanceled(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/ex/photo/c/c;->afe:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/ex/photo/c/a;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected final onReset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/a;->onReset()V

    .line 154
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->cancelLoad()Z

    .line 158
    iget-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/ex/photo/c/a;->d(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    .line 162
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/ex/photo/c/c;

    invoke-direct {v0}, Lcom/android/ex/photo/c/c;-><init>()V

    .line 112
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/ex/photo/c/c;->status:I

    .line 113
    iget-object v1, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/ex/photo/c/c;->afe:Landroid/graphics/Bitmap;

    .line 114
    invoke-direct {p0, v0}, Lcom/android/ex/photo/c/a;->a(Lcom/android/ex/photo/c/c;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/c/a;->fN:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->forceLoad()V

    .line 122
    :cond_2
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/ex/photo/c/a;->cancelLoad()Z

    .line 130
    return-void
.end method
