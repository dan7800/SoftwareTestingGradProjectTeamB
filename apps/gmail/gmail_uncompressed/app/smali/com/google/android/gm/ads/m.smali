.class final Lcom/google/android/gm/ads/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/gm/ads/m;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/gm/ads/m;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->g(Lcom/google/android/gm/ads/AdTeaserView;)V

    .line 416
    return-void
.end method
