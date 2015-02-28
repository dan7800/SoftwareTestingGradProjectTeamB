.class public Lcom/google/analytics/tracking/android/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/aj;


# static fields
.field private static aUW:Lcom/google/analytics/tracking/android/J;


# instance fields
.field private aSm:Z

.field private volatile aTB:Ljava/lang/String;

.field private aUQ:Lcom/google/analytics/tracking/android/i;

.field private aUR:Lcom/google/analytics/tracking/android/ah;

.field private aUS:Lcom/google/analytics/tracking/android/a;

.field private volatile aUT:Ljava/lang/Boolean;

.field private final aUU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/ah;",
            ">;"
        }
    .end annotation
.end field

.field private aUV:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUU:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/analytics/tracking/android/E;->aQ(Landroid/content/Context;)Lcom/google/analytics/tracking/android/E;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/J;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/i;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUU:Ljava/util/Map;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/analytics/tracking/android/J;->aUQ:Lcom/google/analytics/tracking/android/i;

    .line 65
    new-instance v0, Lcom/google/analytics/tracking/android/a;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/a;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUS:Lcom/google/analytics/tracking/android/a;

    .line 66
    iget-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUQ:Lcom/google/analytics/tracking/android/i;

    new-instance v1, Lcom/google/analytics/tracking/android/K;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/K;-><init>(Lcom/google/analytics/tracking/android/J;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/i;->a(Lcom/google/analytics/tracking/android/M;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUQ:Lcom/google/analytics/tracking/android/i;

    new-instance v1, Lcom/google/analytics/tracking/android/L;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/L;-><init>(Lcom/google/analytics/tracking/android/J;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/i;->a(Lcom/google/analytics/tracking/android/j;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/J;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/J;->aUT:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/J;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/J;->aTB:Ljava/lang/String;

    return-object p1
.end method

.method public static aS(Landroid/content/Context;)Lcom/google/analytics/tracking/android/J;
    .locals 2

    .prologue
    .line 90
    const-class v1, Lcom/google/analytics/tracking/android/J;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/J;->aUW:Lcom/google/analytics/tracking/android/J;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/analytics/tracking/android/J;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/J;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/J;->aUW:Lcom/google/analytics/tracking/android/J;

    .line 94
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/J;->aUW:Lcom/google/analytics/tracking/android/J;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final bL(Z)V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->aUy:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->a(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 146
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/J;->aSm:Z

    .line 147
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Q;->bL(Z)V

    .line 148
    return-void
.end method

.method public final cS(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ah;
    .locals 3

    .prologue
    .line 166
    monitor-enter p0

    .line 167
    if-nez p1, :cond_0

    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUU:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ah;

    .line 172
    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/google/analytics/tracking/android/ah;

    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/ah;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/aj;)V

    .line 174
    iget-object v1, p0, Lcom/google/analytics/tracking/android/J;->aUU:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/google/analytics/tracking/android/J;->aUR:Lcom/google/analytics/tracking/android/ah;

    if-nez v1, :cond_1

    .line 176
    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUR:Lcom/google/analytics/tracking/android/ah;

    .line 179
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->aUA:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->a(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    if-nez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_0
    :try_start_1
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ak;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/J;->aUS:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/a;->Bv()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/J;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/J;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "usage"

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAUsage;->BZ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->BX()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage;->BY()Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUQ:Lcom/google/analytics/tracking/android/i;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/i;->d(Ljava/util/Map;)V

    .line 232
    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/J;->aUV:Ljava/lang/String;

    .line 233
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
