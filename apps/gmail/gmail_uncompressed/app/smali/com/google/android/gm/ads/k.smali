.class final Lcom/google/android/gm/ads/k;
.super Lcom/google/android/gm/provider/e;
.source "SourceFile"


# instance fields
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/gm/ads/k;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Lcom/google/android/gm/provider/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gm/ads/k;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/k;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/google/android/gm/ads/k;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->f(Lcom/google/android/gm/provider/Advertisement;)V

    .line 273
    return-void
.end method
