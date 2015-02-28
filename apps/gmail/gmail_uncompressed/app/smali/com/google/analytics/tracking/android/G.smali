.class final Lcom/google/analytics/tracking/android/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aTG:Lcom/google/analytics/tracking/android/E;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/E;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/analytics/tracking/android/G;->aTG:Lcom/google/analytics/tracking/android/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/analytics/tracking/android/G;->aTG:Lcom/google/analytics/tracking/android/E;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/E;->g(Lcom/google/analytics/tracking/android/E;)Lcom/google/analytics/tracking/android/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ae;->BB()V

    .line 270
    return-void
.end method
