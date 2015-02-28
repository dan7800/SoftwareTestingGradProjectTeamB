.class final Lcom/google/analytics/tracking/android/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aTG:Lcom/google/analytics/tracking/android/E;

.field final synthetic aTH:Lcom/google/analytics/tracking/android/M;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/E;Lcom/google/analytics/tracking/android/M;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/analytics/tracking/android/H;->aTG:Lcom/google/analytics/tracking/android/E;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/H;->aTH:Lcom/google/analytics/tracking/android/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/analytics/tracking/android/H;->aTH:Lcom/google/analytics/tracking/android/M;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/H;->aTG:Lcom/google/analytics/tracking/android/E;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/E;->b(Lcom/google/analytics/tracking/android/E;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/M;->bM(Z)V

    .line 310
    return-void
.end method
