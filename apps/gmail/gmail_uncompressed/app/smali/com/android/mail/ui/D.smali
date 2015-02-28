.class final Lcom/android/mail/ui/D;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final aEC:Lcom/android/mail/ui/a;

.field final mHandler:Landroid/os/Handler;


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/mail/ui/D;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/ui/E;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/E;-><init>(Lcom/android/mail/ui/D;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3245
    return-void
.end method
