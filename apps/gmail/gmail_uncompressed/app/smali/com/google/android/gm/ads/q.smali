.class final Lcom/google/android/gm/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZS:Lcom/google/android/gm/ads/AdToastBarOperation;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdToastBarOperation;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdToastBarOperation;->a(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->b(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->c(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->d(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    .line 78
    iget-object v1, p0, Lcom/google/android/gm/ads/q;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->d(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->g(Lcom/google/android/gm/provider/Advertisement;)V

    .line 79
    return-void
.end method
