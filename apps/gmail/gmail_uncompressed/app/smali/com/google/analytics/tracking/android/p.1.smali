.class final Lcom/google/analytics/tracking/android/p;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic aSD:Lcom/google/analytics/tracking/android/m;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/m;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/analytics/tracking/android/p;->aSD:Lcom/google/analytics/tracking/android/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/m;B)V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/p;-><init>(Lcom/google/analytics/tracking/android/m;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/analytics/tracking/android/p;->aSD:Lcom/google/analytics/tracking/android/m;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/m;->a(Lcom/google/analytics/tracking/android/m;)Z

    .line 659
    return-void
.end method
