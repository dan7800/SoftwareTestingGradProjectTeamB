.class final Lcom/google/android/gm/ads/h;
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
    .line 217
    iput-object p1, p0, Lcom/google/android/gm/ads/h;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gm/ads/h;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/h;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/google/android/gm/ads/h;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    .line 223
    iget-object v1, p0, Lcom/google/android/gm/ads/h;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/Advertisement;)V

    .line 224
    return-void
.end method
