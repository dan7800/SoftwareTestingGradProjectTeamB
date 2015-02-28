.class public final Lcom/google/android/gms/location/copresence/b;
.super Ljava/lang/Object;


# instance fields
.field private cbg:Z

.field private cbh:Z

.field private cbi:I

.field private cbj:Z

.field private cbk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/copresence/b;->cbi:I

    return-void
.end method


# virtual methods
.method public final Tk()Lcom/google/android/gms/location/copresence/b;
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/b;->cbk:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Cannot call setNoOptInRequired() in conjunction with setLowPower()."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/location/copresence/b;->cbg:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Tl()Lcom/google/android/gms/location/copresence/b;
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/location/copresence/b;->cbk:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Cannot call setNoOptInRequired() in conjunction with setWakeUpOthers()."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/location/copresence/b;->cbh:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Tm()Lcom/google/android/gms/location/copresence/a;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mt;

    iget-boolean v1, p0, Lcom/google/android/gms/location/copresence/b;->cbg:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/location/copresence/b;->cbh:Z

    iget v3, p0, Lcom/google/android/gms/location/copresence/b;->cbi:I

    iget-boolean v4, p0, Lcom/google/android/gms/location/copresence/b;->cbj:Z

    iget-boolean v5, p0, Lcom/google/android/gms/location/copresence/b;->cbk:Z

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mt;-><init>(ZZIZZ)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
