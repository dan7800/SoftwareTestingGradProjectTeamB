.class final Lcom/google/android/gm/ads/d;
.super Lcom/google/android/gm/provider/e;
.source "SourceFile"


# instance fields
.field final synthetic aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/AdSenderHeaderView;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/gm/ads/d;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-direct {p0}, Lcom/google/android/gm/provider/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gm/ads/d;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdSenderHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/d;->aZw:Lcom/google/android/gm/ads/AdSenderHeaderView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdSenderHeaderView;->a(Lcom/google/android/gm/ads/AdSenderHeaderView;)Lcom/google/android/gm/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ads/c;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/google/android/gm/ads/d;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iget-object v2, p0, Lcom/google/android/gm/ads/d;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iget-boolean v2, v2, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;Z)V

    .line 171
    return-void
.end method
