.class final Lcom/google/android/gm/ads/r;
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
    .line 99
    iput-object p1, p0, Lcom/google/android/gm/ads/r;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 102
    const-string v0, "AdToastBarOp"

    const-string v1, "Timeout; deleting ad"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    iget-object v0, p0, Lcom/google/android/gm/ads/r;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v0}, Lcom/google/android/gm/ads/AdToastBarOperation;->a(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/r;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->b(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/android/gm/ads/r;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->c(Lcom/google/android/gm/ads/AdToastBarOperation;)Landroid/content/Context;

    .line 107
    iget-object v1, p0, Lcom/google/android/gm/ads/r;->aZS:Lcom/google/android/gm/ads/AdToastBarOperation;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdToastBarOperation;->d(Lcom/google/android/gm/ads/AdToastBarOperation;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->b(Lcom/google/android/gm/provider/Advertisement;Z)V

    .line 108
    return-void
.end method
