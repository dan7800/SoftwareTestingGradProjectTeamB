.class public final Lcom/google/analytics/tracking/android/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aVc:Z


# direct methods
.method public static bL(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    .line 32
    return-void
.end method

.method public static cV(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cW(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 76
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static cX(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 101
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static cY(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->cX(Ljava/lang/String;)I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cZ(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 137
    sget-boolean v0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static da(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 151
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static db(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Q;->da(Ljava/lang/String;)I

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/google/analytics/tracking/android/Q;->aVc:Z

    return v0
.end method
