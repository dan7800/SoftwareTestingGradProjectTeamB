.class final Lcom/google/android/gms/internal/bT;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field final synthetic bWh:Lcom/google/android/gms/internal/bO;

.field private final bWl:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/d;",
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
            "Lcom/google/android/gms/people/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/bT;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bT;->bWl:Lcom/google/android/gms/common/api/m;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    const-string v0, "PeopleService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PeopleClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Autocomplete callback: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nholder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bZ;->as(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/bO;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bT;->bWh:Lcom/google/android/gms/internal/bO;

    new-instance v3, Lcom/google/android/gms/internal/bR;

    iget-object v4, p0, Lcom/google/android/gms/internal/bT;->bWh:Lcom/google/android/gms/internal/bO;

    iget-object v5, p0, Lcom/google/android/gms/internal/bT;->bWl:Lcom/google/android/gms/common/api/m;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/google/android/gms/internal/bR;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/a;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/bO;->b(Lcom/google/android/gms/common/internal/h;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/people/model/a;

    invoke-direct {v0, p3}, Lcom/google/android/gms/people/model/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method
