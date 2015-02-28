.class final Lcom/google/android/gms/internal/aD;
.super Lcom/google/android/gms/internal/aE;


# instance fields
.field final synthetic bUp:Ljava/lang/Integer;

.field final synthetic bUq:Ljava/lang/Long;

.field final synthetic bUr:Ljava/lang/Integer;

.field final synthetic bUs:Ljava/lang/Integer;

.field final synthetic bUt:Landroid/os/Bundle;

.field final synthetic bUu:Lcom/google/android/gms/internal/aC;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aC;Lcom/google/android/gms/common/api/h;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aD;->bUu:Lcom/google/android/gms/internal/aC;

    iput-object p3, p0, Lcom/google/android/gms/internal/aD;->bUp:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/aD;->bUq:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/aD;->bUr:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/internal/aD;->bUs:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/internal/aD;->bUt:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/aE;-><init>(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/aB;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUp:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "latency_micros"

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->bUp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUq:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "latency_bps"

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->bUq:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUr:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, "latitude_e6"

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->bUr:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUs:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, "longitude_e6"

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->bUs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUt:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUt:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->bUt:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/aB;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aD;->c(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method
