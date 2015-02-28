.class final Lcom/google/android/gm/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final De()V
    .locals 3

    .prologue
    .line 487
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "PlayLogger.onLoggerFailedConnection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 488
    return-void
.end method

.method public final Df()V
    .locals 3

    .prologue
    .line 492
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "PlayLogger.onLoggerConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 493
    return-void
.end method

.method public final c(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 482
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "PlayLogger.onLoggerFailedWithRes. intent=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 483
    return-void
.end method
