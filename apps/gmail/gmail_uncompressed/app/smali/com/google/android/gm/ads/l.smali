.class final Lcom/google/android/gm/ads/l;
.super Lcom/google/android/gm/provider/e;
.source "SourceFile"


# instance fields
.field final synthetic aZO:Lcom/google/android/gm/ads/AdTeaserView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/gm/ads/l;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Lcom/google/android/gm/provider/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/ads/l;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdTeaserView;->f(Lcom/google/android/gm/ads/AdTeaserView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/gm/ads/l;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/l;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/google/android/gm/ads/l;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iget v1, v1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    if-nez v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/google/android/gm/ads/l;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iput v2, v1, Lcom/google/android/gm/provider/Advertisement;->bco:I

    .line 352
    iget-object v1, p0, Lcom/google/android/gm/ads/l;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->e(Lcom/google/android/gm/provider/Advertisement;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/ads/l;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v0, v2}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/google/android/gm/ads/AdTeaserView;Z)Z

    .line 361
    :cond_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/ads/l;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;I)V

    goto :goto_0
.end method
