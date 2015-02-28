.class public final Lcom/android/email/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private LA:Ljava/lang/Thread;

.field private LB:Z

.field private final Lx:Landroid/os/PowerManager$WakeLock;

.field private final Ly:Landroid/net/ConnectivityManager;

.field private Lz:Z

.field private final fK:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/c;->fK:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/c;->Lz:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/email/c;->LB:Z

    .line 71
    iput-object p1, p0, Lcom/android/email/c;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/email/c;->mName:Ljava/lang/String;

    .line 73
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/email/c;->Ly:Landroid/net/ConnectivityManager;

    .line 75
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    .line 77
    iget-object v0, p0, Lcom/android/email/c;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method private static a(Landroid/net/ConnectivityManager;)I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static gB()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 157
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    invoke-static {v0}, Lcom/android/email/c;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final gC()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/c;->Lz:Z

    .line 86
    iget-object v0, p0, Lcom/android/email/c;->LA:Ljava/lang/Thread;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 90
    :cond_0
    return-void
.end method

.method public final gD()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/c;->Ly:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gE()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/email/c;->Ly:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/c;->a(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public final gF()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 170
    iget-boolean v1, p0, Lcom/android/email/c;->LB:Z

    if-nez v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ConnectivityManager not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/c;->LA:Ljava/lang/Thread;

    .line 176
    iget-object v1, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 178
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/email/c;->Lz:Z

    if-nez v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/android/email/c;->Ly:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_3

    .line 182
    if-eqz v0, :cond_1

    .line 183
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "EmailConnectivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/c;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Connectivity wait ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_2
    iput-object v3, p0, Lcom/android/email/c;->LA:Ljava/lang/Thread;

    .line 215
    :goto_1
    return-void

    .line 189
    :cond_3
    if-nez v0, :cond_5

    .line 190
    :try_start_1
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 191
    const-string v0, "EmailConnectivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/c;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Connectivity waiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 193
    :cond_4
    const/4 v0, 0x1

    .line 196
    :cond_5
    iget-object v1, p0, Lcom/android/email/c;->fK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    iget-object v2, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    iget-object v2, p0, Lcom/android/email/c;->fK:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    iget-object v1, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_6
    iput-object v3, p0, Lcom/android/email/c;->LA:Ljava/lang/Thread;

    throw v0

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    iget-object v0, p0, Lcom/android/email/c;->Lx:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 214
    :cond_8
    iput-object v3, p0, Lcom/android/email/c;->LA:Ljava/lang/Thread;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 125
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 127
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/email/c;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/android/email/c;->fK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    goto :goto_0
.end method

.method public final unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/email/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iput-boolean v1, p0, Lcom/android/email/c;->LB:Z

    .line 115
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/c;->LB:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/c;->LB:Z

    throw v0
.end method
