.class final Lcom/google/analytics/tracking/android/D;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/analytics/tracking/android/D;->aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;B)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/D;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/analytics/tracking/android/D;->aTh:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->d(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    .line 358
    return-void
.end method
