.class final Lcom/google/android/gm/ads/j;
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
    .line 245
    iput-object p1, p0, Lcom/google/android/gm/ads/j;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gm/ads/j;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-virtual {v0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/j;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v1}, Lcom/google/android/gm/ads/AdTeaserView;->b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 252
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bdS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ads/j;->aZO:Lcom/google/android/gm/ads/AdTeaserView;

    invoke-static {v2}, Lcom/google/android/gm/ads/AdTeaserView;->c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/provider/MailEngine;->d([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v3, Lcom/google/android/gm/provider/Advertisement;

    invoke-direct {v3, v2}, Lcom/google/android/gm/provider/Advertisement;-><init>(Landroid/database/Cursor;)V

    .line 257
    iget-boolean v0, v3, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/Advertisement;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    if-eqz v2, :cond_1

    .line 261
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    return-void

    .line 257
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 261
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
