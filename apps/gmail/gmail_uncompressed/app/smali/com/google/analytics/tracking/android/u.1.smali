.class public final Lcom/google/analytics/tracking/android/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/ad;


# static fields
.field private static final aSJ:Ljava/lang/Object;

.field private static aST:Lcom/google/analytics/tracking/android/u;


# instance fields
.field private aSK:Landroid/content/Context;

.field private aSL:Lcom/google/analytics/tracking/android/g;

.field private volatile aSM:Lcom/google/analytics/tracking/android/i;

.field private aSN:I

.field private aSO:Z

.field private aSP:Z

.field private aSQ:Lcom/google/analytics/tracking/android/h;

.field private aSR:Lcom/google/analytics/tracking/android/t;

.field private aSS:Z

.field private connected:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    .line 45
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/u;->aSO:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/u;->connected:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/u;->aSP:Z

    .line 54
    new-instance v0, Lcom/google/analytics/tracking/android/v;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/v;-><init>(Lcom/google/analytics/tracking/android/u;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSQ:Lcom/google/analytics/tracking/android/h;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    .line 80
    return-void
.end method

.method public static BI()Lcom/google/analytics/tracking/android/u;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/analytics/tracking/android/u;->aST:Lcom/google/analytics/tracking/android/u;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/analytics/tracking/android/u;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/u;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/u;->aST:Lcom/google/analytics/tracking/android/u;

    .line 76
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/u;->aST:Lcom/google/analytics/tracking/android/u;

    return-object v0
.end method

.method static synthetic BK()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/u;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->connected:Z

    return v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/u;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    return v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/u;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    return v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/u;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized BB()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSM:Lcom/google/analytics/tracking/android/i;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->aUF:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->a(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 184
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSM:Lcom/google/analytics/tracking/android/i;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/i;->BB()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized BJ()Lcom/google/analytics/tracking/android/g;
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSL:Lcom/google/analytics/tracking/android/g;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/Z;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->aSQ:Lcom/google/analytics/tracking/android/h;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/Z;-><init>(Lcom/google/analytics/tracking/android/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSL:Lcom/google/analytics/tracking/android/g;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/w;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/w;-><init>(Lcom/google/analytics/tracking/android/u;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSR:Lcom/google/analytics/tracking/android/t;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSP:Z

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Lcom/google/analytics/tracking/android/t;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/t;-><init>(Lcom/google/analytics/tracking/android/ad;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSR:Lcom/google/analytics/tracking/android/t;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->aSR:Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSL:Lcom/google/analytics/tracking/android/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSK:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->aSM:Lcom/google/analytics/tracking/android/i;

    if-nez v0, :cond_0

    .line 138
    iput-object p2, p0, Lcom/google/analytics/tracking/android/u;->aSM:Lcom/google/analytics/tracking/android/i;

    .line 139
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSO:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/i;->BB()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bJ(Z)V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/u;->h(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dw(I)V
    .locals 4

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 190
    const-string v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    .line 191
    iput p1, p0, Lcom/google/analytics/tracking/android/u;->aSN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->aUG:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->a(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 197
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->connected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    if-lez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_2
    iput p1, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    .line 201
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->connected:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h(ZZ)V
    .locals 4

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/u;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    if-lez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 215
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    if-lez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/u;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/u;->aSJ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/u;->aSN:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cY(Ljava/lang/String;)I

    .line 221
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/u;->aSS:Z

    .line 222
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/u;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
