.class final Lcom/google/android/gm/ads/t;
.super Lcom/google/android/gm/provider/e;
.source "SourceFile"


# instance fields
.field final synthetic aZX:Lcom/google/android/gm/ads/s;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ads/s;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/gm/ads/t;->aZX:Lcom/google/android/gm/ads/s;

    invoke-direct {p0}, Lcom/google/android/gm/provider/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gm/ads/t;->aZX:Lcom/google/android/gm/ads/s;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/s;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/t;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->a(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/gm/ads/t;->aZp:Lcom/google/android/gm/provider/Advertisement;

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    .line 123
    iget-object v1, p0, Lcom/google/android/gm/ads/t;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->g(Lcom/google/android/gm/provider/Advertisement;)V

    .line 124
    return-void
.end method
