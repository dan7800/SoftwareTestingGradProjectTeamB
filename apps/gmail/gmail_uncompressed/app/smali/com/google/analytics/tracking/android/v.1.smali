.class final Lcom/google/analytics/tracking/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/h;


# instance fields
.field final synthetic aSU:Lcom/google/analytics/tracking/android/u;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/u;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/analytics/tracking/android/v;->aSU:Lcom/google/analytics/tracking/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bH(Z)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->aSU:Lcom/google/analytics/tracking/android/u;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/v;->aSU:Lcom/google/analytics/tracking/android/u;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/u;->a(Lcom/google/analytics/tracking/android/u;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/u;->h(ZZ)V

    .line 58
    return-void
.end method
