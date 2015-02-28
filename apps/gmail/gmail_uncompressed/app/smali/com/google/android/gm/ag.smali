.class public final Lcom/google/android/gm/ag;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/al;",
        ">;"
    }
.end annotation


# instance fields
.field private aYI:Lcom/google/android/gm/aw;

.field private final mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/aw;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/gm/ag;->mAccount:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/google/android/gm/ag;->aYI:Lcom/google/android/gm/aw;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gm/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ah;->aW(Landroid/content/Context;)Lcom/google/android/gm/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ag;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ag;->aYI:Lcom/google/android/gm/aw;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gm/ah;->a(Ljava/lang/String;ILcom/google/android/gm/aw;)Lcom/google/android/gm/al;

    move-result-object v0

    return-object v0
.end method

.method protected final onReset()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gm/ag;->stopLoading()V

    .line 33
    return-void
.end method

.method protected final onStartLoading()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gm/ag;->forceLoad()V

    .line 38
    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/ag;->cancelLoad()Z

    .line 43
    return-void
.end method
