.class public final Lcom/google/android/gms/common/internal/j;
.super Lcom/google/android/gms/common/internal/z;


# instance fields
.field private bFc:Lcom/google/android/gms/common/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/z;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j;->bFc:Lcom/google/android/gms/common/internal/f;

    return-void
.end method


# virtual methods
.method public final b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j;->bFc:Lcom/google/android/gms/common/internal/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j;->bFc:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/f;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j;->bFc:Lcom/google/android/gms/common/internal/f;

    return-void
.end method
