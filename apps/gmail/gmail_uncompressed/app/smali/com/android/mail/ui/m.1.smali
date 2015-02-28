.class final Lcom/android/mail/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field private aEi:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 1

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/mail/ui/m;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/m;->aEi:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1251
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mail/ui/m;->aEa:Lcom/android/mail/ui/a;

    iget-object v1, v1, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mail/MailLogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/mail/MailLogService;->op()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/mail/ui/m;->aEi:Z

    if-eq v2, v1, :cond_0

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Starting MailLogService"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/mail/ui/m;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    iput-boolean v1, p0, Lcom/android/mail/ui/m;->aEi:Z

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/m;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1253
    return-void

    .line 1251
    :cond_1
    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Stopping MailLogService"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/mail/ui/m;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
