.class final Lcom/google/analytics/tracking/android/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aTG:Lcom/google/analytics/tracking/android/E;

.field final synthetic aTI:Lcom/google/analytics/tracking/android/j;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/E;Lcom/google/analytics/tracking/android/j;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/analytics/tracking/android/I;->aTG:Lcom/google/analytics/tracking/android/E;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/I;->aTI:Lcom/google/analytics/tracking/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/analytics/tracking/android/I;->aTI:Lcom/google/analytics/tracking/android/j;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/I;->aTG:Lcom/google/analytics/tracking/android/E;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/E;->a(Lcom/google/analytics/tracking/android/E;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/j;->cN(Ljava/lang/String;)V

    .line 322
    return-void
.end method
