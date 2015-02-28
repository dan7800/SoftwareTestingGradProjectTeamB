.class final Lcom/android/emailcommon/service/K;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aaT:Lcom/android/emailcommon/service/J;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/J;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->a(Lcom/android/emailcommon/service/H;)Lcom/android/emailcommon/service/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/L;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->d(Lcom/android/emailcommon/service/H;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->e(Lcom/android/emailcommon/service/H;)Z

    .line 137
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 141
    :try_start_2
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 142
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->b(Lcom/android/emailcommon/service/H;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException when trying to unbind from service"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->b(Lcom/android/emailcommon/service/H;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException thrown running mTask!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    :try_start_4
    iget-object v0, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v0, v0, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v0}, Lcom/android/emailcommon/service/H;->d(Lcom/android/emailcommon/service/H;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 125
    :catch_2
    move-exception v0

    .line 132
    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->b(Lcom/android/emailcommon/service/H;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RuntimeException when trying to unbind from service"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 124
    :try_start_5
    iget-object v1, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v1, v1, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v1}, Lcom/android/emailcommon/service/H;->d(Lcom/android/emailcommon/service/H;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v2, v2, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v2}, Lcom/android/emailcommon/service/H;->c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 134
    :goto_1
    throw v0

    .line 125
    :catch_3
    move-exception v1

    .line 132
    iget-object v2, p0, Lcom/android/emailcommon/service/K;->aaT:Lcom/android/emailcommon/service/J;

    iget-object v2, v2, Lcom/android/emailcommon/service/J;->aaS:Lcom/android/emailcommon/service/H;

    invoke-static {v2}, Lcom/android/emailcommon/service/H;->b(Lcom/android/emailcommon/service/H;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuntimeException when trying to unbind from service"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/emailcommon/service/K;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
