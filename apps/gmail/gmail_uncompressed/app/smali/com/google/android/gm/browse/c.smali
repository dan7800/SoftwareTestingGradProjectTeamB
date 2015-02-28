.class final Lcom/google/android/gm/browse/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic baa:Lcom/google/android/gm/browse/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/browse/a;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/browse/a;B)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/google/android/gm/browse/c;-><init>(Lcom/google/android/gm/browse/a;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_0

    .line 286
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    new-instance v0, Lcom/google/android/gm/browse/d;

    iget-object v1, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-virtual {v1}, Lcom/google/android/gm/browse/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v2}, Lcom/google/android/gm/browse/a;->b(Lcom/google/android/gm/browse/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v3}, Lcom/google/android/gm/browse/a;->c(Lcom/google/android/gm/browse/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-static {v4}, Lcom/google/android/gm/browse/a;->d(Lcom/google/android/gm/browse/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/browse/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 277
    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gm/browse/c;->baa:Lcom/google/android/gm/browse/a;

    invoke-virtual {v0}, Lcom/google/android/gm/browse/a;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    return-void
.end method
