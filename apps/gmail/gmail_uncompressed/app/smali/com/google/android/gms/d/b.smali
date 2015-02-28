.class final Lcom/google/android/gms/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/gms/internal/aF;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Herrevad"

    const-string v1, "failed to connect to network quality service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/d/a;->UI()Z

    :cond_1
    return-void
.end method
