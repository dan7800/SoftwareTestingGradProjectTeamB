.class final Lcom/android/email/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic LM:Lcom/android/email/d;


# direct methods
.method constructor <init>(Lcom/android/email/d;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    invoke-static {v0}, Lcom/android/email/d;->a(Lcom/android/email/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-static {v1, v2, v3}, Lcom/android/email/d;->a(Lcom/android/email/d;J)V

    .line 197
    iget-object v1, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    invoke-static {v1}, Lcom/android/email/d;->b(Lcom/android/email/d;)Landroid/database/ContentObserver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lcom/android/email/d;->gK()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Observing account changes for notifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    iget-object v1, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    new-instance v2, Lcom/android/email/h;

    invoke-static {}, Lcom/android/email/d;->gL()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    invoke-static {v4}, Lcom/android/email/d;->a(Lcom/android/email/d;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/h;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/android/email/d;->a(Lcom/android/email/d;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 200
    sget-object v1, Lcom/android/emailcommon/provider/Account;->Xx:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/e;->LM:Lcom/android/email/d;

    invoke-static {v3}, Lcom/android/email/d;->b(Lcom/android/email/d;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    :cond_0
    return-void
.end method
