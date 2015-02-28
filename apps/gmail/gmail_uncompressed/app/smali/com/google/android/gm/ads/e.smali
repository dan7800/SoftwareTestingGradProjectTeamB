.class final Lcom/google/android/gm/ads/e;
.super Lcom/google/android/gm/provider/e;
.source "SourceFile"


# instance fields
.field final synthetic aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdSenderHeaderView;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/gm/ads/e;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-direct {p0}, Lcom/google/android/gm/provider/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gm/ads/e;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/e;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdSenderHeaderView;->a(Lcom/google/android/gm/ads/AdSenderHeaderView;)Lcom/google/android/gm/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ads/c;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/google/android/gm/ads/e;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/Advertisement;)V

    .line 203
    return-void
.end method
