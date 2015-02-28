.class final Lcom/google/analytics/tracking/android/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/j;


# instance fields
.field final synthetic aUX:Lcom/google/analytics/tracking/android/J;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/J;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/analytics/tracking/android/L;->aUX:Lcom/google/analytics/tracking/android/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cN(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/L;->aUX:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0, p1}, Lcom/google/analytics/tracking/android/J;->a(Lcom/google/analytics/tracking/android/J;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    return-void
.end method
