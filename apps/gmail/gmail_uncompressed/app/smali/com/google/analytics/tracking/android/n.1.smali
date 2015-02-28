.class final Lcom/google/analytics/tracking/android/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/k;


# instance fields
.field final synthetic aSD:Lcom/google/analytics/tracking/android/m;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/m;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/analytics/tracking/android/n;->aSD:Lcom/google/analytics/tracking/android/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
