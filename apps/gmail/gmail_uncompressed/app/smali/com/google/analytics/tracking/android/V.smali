.class final Lcom/google/analytics/tracking/android/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/analytics/tracking/android/S;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/google/analytics/tracking/android/ak;->dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
