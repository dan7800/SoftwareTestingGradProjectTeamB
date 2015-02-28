.class public final Lcom/google/analytics/tracking/android/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aSg:Lcom/google/analytics/tracking/android/m;


# instance fields
.field private aQB:Ljava/util/Timer;

.field private aSA:Lcom/google/analytics/tracking/android/k;

.field private aSB:Ljava/util/TimerTask;

.field private aSC:Z

.field private aSh:Z

.field private aSi:Ljava/lang/String;

.field private aSj:Ljava/lang/String;

.field private aSk:Ljava/lang/String;

.field private aSl:I

.field private aSm:Z

.field private aSn:Ljava/lang/Double;

.field private aSo:Z

.field private aSp:Z

.field private aSq:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private aSr:Z

.field private aSs:I

.field private aSt:J

.field private aSu:J

.field private final aSv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aSw:Lcom/google/analytics/tracking/android/ah;

.field private aSx:Lcom/google/analytics/tracking/android/X;

.field private aSy:Lcom/google/analytics/tracking/android/J;

.field private aSz:Lcom/google/analytics/tracking/android/ad;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSh:Z

    .line 149
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->aSl:I

    .line 176
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSr:Z

    .line 181
    iput v1, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSv:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    .line 217
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSC:Z

    .line 96
    new-instance v0, Lcom/google/analytics/tracking/android/n;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/n;-><init>(Lcom/google/analytics/tracking/android/m;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSA:Lcom/google/analytics/tracking/android/k;

    .line 102
    return-void
.end method

.method public static BE()Lcom/google/analytics/tracking/android/m;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/analytics/tracking/android/m;->aSg:Lcom/google/analytics/tracking/android/m;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/m;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/m;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/m;->aSg:Lcom/google/analytics/tracking/android/m;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/m;->aSg:Lcom/google/analytics/tracking/android/m;

    return-object v0
.end method

.method public static BF()Lcom/google/analytics/tracking/android/ah;
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BE()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/m;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BE()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    return-object v0
.end method

.method private declared-synchronized BG()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aQB:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aQB:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aQB:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/m;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSC:Z

    return v0
.end method


# virtual methods
.method public final e(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/m;->setContext(Landroid/content/Context;)V

    .line 345
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSh:Z

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/m;->BG()V

    .line 353
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSC:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    if-nez v0, :cond_3

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/m;->aSt:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/m;->aSt:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSA:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/k;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/m;->aSu:J

    iget-wide v6, p0, Lcom/google/analytics/tracking/android/m;->aSt:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ah;->BH()V

    .line 355
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSr:Z

    .line 360
    :cond_3
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSC:Z

    .line 361
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    .line 362
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSr:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSv:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSv:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/ah;->ba(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/X;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    :cond_6
    iget-object v3, p0, Lcom/google/analytics/tracking/android/m;->aSv:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/m;->setContext(Landroid/content/Context;)V

    .line 376
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSh:Z

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    .line 382
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    .line 384
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSA:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/k;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/m;->aSu:J

    .line 386
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->aSs:I

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/m;->BG()V

    .line 390
    new-instance v0, Lcom/google/analytics/tracking/android/p;

    invoke-direct {v0, p0, v2}, Lcom/google/analytics/tracking/android/p;-><init>(Lcom/google/analytics/tracking/android/m;B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSB:Ljava/util/TimerTask;

    .line 391
    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aQB:Ljava/util/Timer;

    .line 392
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aQB:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSB:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 304
    if-nez p1, :cond_1

    .line 305
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/u;->BI()Lcom/google/analytics/tracking/android/u;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/google/analytics/tracking/android/Y;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/analytics/tracking/android/Y;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/J;->aS(Landroid/content/Context;)Lcom/google/analytics/tracking/android/J;

    move-result-object v3

    if-nez p1, :cond_2

    const-string v4, "Context cannot be null"

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/google/analytics/tracking/android/m;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/tracking/android/m;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/google/analytics/tracking/android/m;->aSy:Lcom/google/analytics/tracking/android/J;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSz:Lcom/google/analytics/tracking/android/ad;

    iput-object v2, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_trackingId"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSi:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_api_key"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSi:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "EasyTracker requested, but missing required ga_trackingId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cW(Ljava/lang/String;)I

    new-instance v0, Lcom/google/analytics/tracking/android/o;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/o;-><init>(Lcom/google/analytics/tracking/android/m;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSh:Z

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_appName"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_appVersion"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSk:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_debug"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSm:Z

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_sampleFrequency"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->df(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSn:Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSn:Ljava/lang/Double;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v3, "ga_sampleRate"

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Lcom/google/analytics/tracking/android/X;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSn:Ljava/lang/Double;

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_dispatchPeriod"

    const/16 v3, 0x708

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/X;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/m;->aSl:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_sessionTimeout"

    const/16 v3, 0x1e

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/X;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/m;->aSt:J

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_autoActivityTracking"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v2, "ga_auto_activity_tracking"

    invoke-interface {v1, v2}, Lcom/google/analytics/tracking/android/X;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSr:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v1, "ga_anonymizeIp"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/X;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSo:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSx:Lcom/google/analytics/tracking/android/X;

    const-string v1, "ga_reportUncaughtExceptions"

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/X;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSp:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSy:Lcom/google/analytics/tracking/android/J;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/J;->cS(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting appName to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Q;->cX(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->cO(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSk:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->cP(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSo:Z

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ah;->bI(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSn:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/analytics/tracking/android/ah;->b(D)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSy:Lcom/google/analytics/tracking/android/J;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->aSm:Z

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/J;->bL(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSz:Lcom/google/analytics/tracking/android/ad;

    iget v1, p0, Lcom/google/analytics/tracking/android/m;->aSl:I

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ad;->dw(I)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->aSp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->aSq:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/analytics/tracking/android/r;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->aSw:Lcom/google/analytics/tracking/android/ah;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->aSz:Lcom/google/analytics/tracking/android/ad;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/analytics/tracking/android/m;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/r;-><init>(Lcom/google/analytics/tracking/android/ah;Lcom/google/analytics/tracking/android/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    :cond_8
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
