.class public final Lcom/google/android/gm/ads/b;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field public final aZl:Lcom/google/android/gm/provider/Advertisement;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gm/ads/b;->aZl:Lcom/google/android/gm/provider/Advertisement;

    .line 20
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f040033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ads/AdHeaderView;

    .line 31
    iget-object v1, p0, Lcom/google/android/gm/ads/b;->aZl:Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bcf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ads/AdHeaderView;->dD(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x5

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
