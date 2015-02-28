.class final Lcom/google/android/gms/internal/bY;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field final synthetic bWh:Lcom/google/android/gms/internal/bO;

.field private final bWl:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/bY;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bY;->bWl:Lcom/google/android/gms/common/api/m;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    const-string v0, "PeopleService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Avatar callback: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bZ;->as(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/bO;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bY;->bWh:Lcom/google/android/gms/internal/bO;

    new-instance v2, Lcom/google/android/gms/internal/bQ;

    iget-object v3, p0, Lcom/google/android/gms/internal/bY;->bWh:Lcom/google/android/gms/internal/bO;

    iget-object v4, p0, Lcom/google/android/gms/internal/bY;->bWl:Lcom/google/android/gms/common/api/m;

    invoke-direct {v2, v3, v4, v0, p3}, Lcom/google/android/gms/internal/bQ;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bO;->b(Lcom/google/android/gms/common/internal/h;)V

    return-void
.end method
