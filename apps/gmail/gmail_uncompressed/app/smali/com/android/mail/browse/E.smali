.class final Lcom/android/mail/browse/E;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/browse/F;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic amq:Lcom/android/mail/browse/u;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 582
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/u;B)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/android/mail/browse/E;-><init>(Lcom/android/mail/browse/u;)V

    return-void
.end method

.method private static b(Lcom/android/mail/browse/F;)V
    .locals 0

    .prologue
    .line 624
    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/mail/browse/F;->close()V

    .line 627
    :cond_0
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->b(Lcom/android/mail/browse/u;)Lcom/android/mail/browse/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/browse/F;->getCount()I

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 580
    check-cast p1, Lcom/android/mail/browse/F;

    invoke-static {p1}, Lcom/android/mail/browse/E;->b(Lcom/android/mail/browse/F;)V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    check-cast p1, Lcom/android/mail/browse/F;

    iget-object v2, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v2}, Lcom/android/mail/browse/u;->c(Lcom/android/mail/browse/u;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v3, "ConvCursor"

    const-string v4, "Received notify ui callback and sending a notification is enabled? %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v7}, Lcom/android/mail/browse/u;->d(Lcom/android/mail/browse/u;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v7}, Lcom/android/mail/browse/u;->e(Lcom/android/mail/browse/u;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/mail/browse/E;->b(Lcom/android/mail/browse/F;)V

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0, p1}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;Lcom/android/mail/browse/F;)Lcom/android/mail/browse/F;

    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->f(Lcom/android/mail/browse/u;)Z

    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->e(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->d(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/browse/E;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->g(Lcom/android/mail/browse/u;)V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
