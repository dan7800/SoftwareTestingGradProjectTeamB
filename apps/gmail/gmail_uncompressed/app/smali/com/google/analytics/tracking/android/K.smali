.class final Lcom/google/analytics/tracking/android/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/M;


# instance fields
.field final synthetic aUX:Lcom/google/analytics/tracking/android/J;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/J;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/analytics/tracking/android/K;->aUX:Lcom/google/analytics/tracking/android/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bM(Z)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/analytics/tracking/android/K;->aUX:Lcom/google/analytics/tracking/android/J;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/J;->a(Lcom/google/analytics/tracking/android/J;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 71
    return-void
.end method
