.class final Lcom/google/analytics/tracking/android/B;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/analytics/tracking/android/B;->aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;B)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/B;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->b(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->aTj:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->c(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    .line 351
    :cond_0
    return-void
.end method
