.class public Lcom/android/email/provider/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static TI:Lcom/android/email/provider/D;


# instance fields
.field private TJ:Z

.field private final TK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/D;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/provider/D;->TI:Lcom/android/email/provider/D;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/D;->TJ:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/android/email/provider/D;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/provider/D;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/email/provider/D;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/android/email/provider/E;

    invoke-direct {v0, p0}, Lcom/android/email/provider/E;-><init>(Lcom/android/email/provider/D;)V

    invoke-static {v0}, Lcom/android/mail/utils/aa;->a(Lcom/android/mail/utils/ab;)V

    .line 63
    return-void
.end method

.method public static K(Landroid/content/Context;)Lcom/android/email/provider/D;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lcom/android/email/provider/D;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/android/email/provider/D;->TI:Lcom/android/email/provider/D;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/email/provider/D;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/provider/D;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/provider/D;->TI:Lcom/android/email/provider/D;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/android/email/provider/D;->TI:Lcom/android/email/provider/D;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/android/email/provider/D;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/android/email/provider/D;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/email/provider/D;->TJ:Z

    return p1
.end method

.method static synthetic b(Lcom/android/email/provider/D;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/email/provider/D;->TJ:Z

    return v0
.end method

.method static synthetic c(Lcom/android/email/provider/D;)Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/email/provider/D;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/email/provider/D;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/email/provider/D;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/email/provider/D;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(JLcom/android/email/provider/F;)V
    .locals 7

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/D;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/provider/G;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/email/provider/G;-><init>(Lcom/android/email/provider/D;JLcom/android/email/provider/F;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final x(J)V
    .locals 7

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/email/provider/D;->TAG:Ljava/lang/String;

    const-string v2, "RefreshStatusMonitor: setSyncStarted: mailboxId=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    iget-object v0, p0, Lcom/android/email/provider/D;->TK:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
