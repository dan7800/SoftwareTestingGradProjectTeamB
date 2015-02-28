.class public abstract Lcom/android/emailcommon/service/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aK:Ljava/lang/String;

.field private aaN:Lcom/android/emailcommon/service/L;

.field private final aaO:Landroid/content/ServiceConnection;

.field private aaP:I

.field private aaQ:Z

.field private aaR:Z

.field private ky:J

.field private final mContext:Landroid/content/Context;

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/H;->mName:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/emailcommon/service/J;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/J;-><init>(Lcom/android/emailcommon/service/H;B)V

    iput-object v0, p0, Lcom/android/emailcommon/service/H;->aaO:Landroid/content/ServiceConnection;

    .line 58
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/H;->aaP:I

    .line 60
    iput-boolean v1, p0, Lcom/android/emailcommon/service/H;->aaQ:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/emailcommon/service/H;->aaR:Z

    .line 91
    iput-object p1, p0, Lcom/android/emailcommon/service/H;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/emailcommon/service/H;->mIntent:Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/H;->aK:Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/android/emailcommon/service/H;->aaP:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/H;->aaP:I

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/emailcommon/service/H;)Lcom/android/emailcommon/service/L;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->aaN:Lcom/android/emailcommon/service/L;

    return-object v0
.end method

.method static synthetic b(Lcom/android/emailcommon/service/H;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->aK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/emailcommon/service/H;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->aaO:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic d(Lcom/android/emailcommon/service/H;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/emailcommon/service/H;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/H;->aaR:Z

    return v0
.end method


# virtual methods
.method protected final a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-boolean v0, p0, Lcom/android/emailcommon/service/H;->aaQ:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call setTask twice on the same ServiceProxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-boolean v3, p0, Lcom/android/emailcommon/service/H;->aaQ:Z

    .line 175
    iput-object p2, p0, Lcom/android/emailcommon/service/H;->mName:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/emailcommon/service/H;->aaN:Lcom/android/emailcommon/service/L;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/H;->ky:J

    .line 181
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/H;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/H;->aaO:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public abstract b(Landroid/os/IBinder;)V
.end method

.method public final lZ()Lcom/android/emailcommon/service/H;
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/emailcommon/service/H;->aaP:I

    .line 163
    return-object p0
.end method

.method protected final ma()V
    .locals 6

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This cannot be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/service/H;->aaO:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 201
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/H;->aaO:Landroid/content/ServiceConnection;

    iget v2, p0, Lcom/android/emailcommon/service/H;->aaP:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final mb()Z
    .locals 2

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/I;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/I;-><init>(Lcom/android/emailcommon/service/H;)V

    const-string v1, "test"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/H;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
