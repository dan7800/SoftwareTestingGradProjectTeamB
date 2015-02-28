.class final Lcom/google/android/gm/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/M;


# instance fields
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pP()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->d(Lcom/google/android/gm/ads/AdTeaserView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->aZ(Landroid/content/Context;)V

    .line 234
    :cond_0
    return-void
.end method

.method public final pQ()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->d(Lcom/google/android/gm/ads/AdTeaserView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Lcom/google/android/gm/provider/Advertisement;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/gm/ads/i;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->e(Lcom/google/android/gm/ads/AdTeaserView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    return-void
.end method
