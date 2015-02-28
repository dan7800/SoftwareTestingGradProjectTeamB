.class final Lcom/google/android/gm/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZX:Lcom/google/android/gm/ads/s;

.field private eM:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ads/s;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ads/s;B)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/gm/ads/u;-><init>(Lcom/google/android/gm/ads/s;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/s;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->j(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/google/android/gm/ads/u;->eM:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-virtual {v1}, Lcom/google/android/gm/ads/s;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/u;->eM:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gm/ay;->g(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/u;->eM:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->b(Lcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ads/u;->aZX:Lcom/google/android/gm/ads/s;

    invoke-static {v1}, Lcom/google/android/gm/ads/s;->b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ads/u;->eM:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/gm/ads/u;->eM:Landroid/net/Uri;

    .line 295
    return-void
.end method
