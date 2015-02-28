.class public final Lcom/google/android/gm/ads/c;
.super Lcom/android/mail/browse/V;
.source "SourceFile"


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private aZp:Lcom/google/android/gm/provider/Advertisement;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Lcom/google/android/gm/provider/Advertisement;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/mail/browse/V;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/gm/ads/c;->Nc:Lcom/android/mail/providers/Account;

    .line 38
    iput-object p2, p0, Lcom/google/android/gm/ads/c;->aZp:Lcom/google/android/gm/provider/Advertisement;

    .line 39
    return-void
.end method


# virtual methods
.method public final Dg()Lcom/google/android/gm/provider/Advertisement;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/gm/ads/c;->aZp:Lcom/google/android/gm/provider/Advertisement;

    return-object v0
.end method

.method public final a(Lcom/google/android/gm/provider/Advertisement;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gm/ads/c;->aZp:Lcom/google/android/gm/provider/Advertisement;

    .line 81
    return-void
.end method

.method public final c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f040034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x6

    return v0
.end method

.method public final i(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-virtual {p1, p0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->a(Lcom/google/android/gm/ads/c;)V

    .line 54
    return-void
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/ads/c;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public final qn()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final qt()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public final qu()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
