.class final Lcom/android/mail/ui/ay;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->b(Lcom/android/mail/ui/aw;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/ui/aw;Z)Z

    .line 229
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->c(Lcom/android/mail/ui/aw;)V

    .line 230
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->e(Lcom/android/mail/ui/aw;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v1}, Lcom/android/mail/ui/aw;->d(Lcom/android/mail/ui/aw;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->e(Lcom/android/mail/ui/aw;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v1}, Lcom/android/mail/ui/aw;->d(Lcom/android/mail/ui/aw;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/android/mail/ui/aw;->yC()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ay;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->f(Lcom/android/mail/ui/aw;)Z

    .line 234
    return-void
.end method
