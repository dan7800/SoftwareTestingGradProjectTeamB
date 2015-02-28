.class final Lcom/google/android/gm/S;
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
        "Lcom/google/android/gm/al;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aYj:Lcom/google/android/gm/K;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/K;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/android/gm/S;->aYj:Lcom/google/android/gm/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/K;B)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/google/android/gm/S;-><init>(Lcom/google/android/gm/K;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Lcom/google/android/gm/ag;

    iget-object v1, p0, Lcom/google/android/gm/S;->aYj:Lcom/google/android/gm/K;

    invoke-static {v1}, Lcom/google/android/gm/K;->a(Lcom/google/android/gm/K;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/S;->aYj:Lcom/google/android/gm/K;

    invoke-static {v2}, Lcom/google/android/gm/K;->e(Lcom/google/android/gm/K;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/S;->aYj:Lcom/google/android/gm/K;

    invoke-static {v3}, Lcom/google/android/gm/K;->f(Lcom/google/android/gm/K;)Lcom/google/android/gm/aw;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/aw;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 615
    check-cast p2, Lcom/google/android/gm/al;

    iget-object v0, p0, Lcom/google/android/gm/S;->aYj:Lcom/google/android/gm/K;

    invoke-static {v0}, Lcom/google/android/gm/K;->g(Lcom/google/android/gm/K;)Lcom/google/android/gm/P;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/P;->a(Lcom/google/android/gm/al;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/al;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    return-void
.end method
