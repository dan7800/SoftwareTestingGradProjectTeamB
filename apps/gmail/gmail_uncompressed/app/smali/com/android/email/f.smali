.class final Lcom/android/email/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    .line 237
    invoke-static {}, Lcom/android/email/d;->gK()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delayed notification processing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 238
    invoke-static {}, Lcom/android/email/d;->gM()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 239
    :try_start_0
    invoke-static {}, Lcom/android/email/d;->gN()Z

    .line 240
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 241
    invoke-static {}, Lcom/android/email/d;->gO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {}, Lcom/android/email/d;->gP()Z

    .line 243
    invoke-static {v0}, Lcom/android/email/d;->p(Landroid/content/Context;)V

    .line 245
    :cond_0
    invoke-static {}, Lcom/android/email/d;->gQ()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/email/d;->b(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 248
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/email/d;->gQ()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 249
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v0, 0x1

    return v0
.end method
