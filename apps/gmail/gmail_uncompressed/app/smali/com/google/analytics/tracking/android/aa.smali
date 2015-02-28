.class final Lcom/google/analytics/tracking/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/k;


# instance fields
.field final synthetic aVq:Lcom/google/analytics/tracking/android/Z;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Z;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/analytics/tracking/android/aa;->aVq:Lcom/google/analytics/tracking/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
