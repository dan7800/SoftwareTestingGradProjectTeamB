.class public final Lcom/google/android/gm/provider/X;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/provider/U;",
        ">;"
    }
.end annotation


# instance fields
.field private aYR:Lcom/google/android/gm/provider/U;

.field private final bhd:Z

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/google/android/gm/provider/X;->mAccount:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/X;->bhd:Z

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gm/provider/U;

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gm/provider/X;->bhd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/U;->Fe()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/U;->Ff()V

    :cond_1
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gm/provider/X;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/X;->mAccount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gm/provider/X;->stopLoading()V

    .line 56
    return-void
.end method

.method protected final onStartLoading()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gm/provider/X;->forceLoad()V

    .line 61
    return-void
.end method

.method protected final onStopLoading()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/gm/provider/X;->bhd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/U;->Fe()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/X;->aYR:Lcom/google/android/gm/provider/U;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/X;->cancelLoad()Z

    .line 70
    return-void
.end method
