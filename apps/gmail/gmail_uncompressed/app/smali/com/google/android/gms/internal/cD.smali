.class final Lcom/google/android/gms/internal/cD;
.super Lcom/google/android/gms/people/w;


# instance fields
.field final synthetic bWJ:Ljava/lang/String;

.field final synthetic bWK:Ljava/lang/String;

.field final synthetic bWY:J

.field final synthetic bWZ:Z

.field final synthetic bXa:Z

.field final synthetic bXb:Lcom/google/android/gms/internal/cC;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cC;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/cD;->bXb:Lcom/google/android/gms/internal/cC;

    iput-object p2, p0, Lcom/google/android/gms/internal/cD;->bWJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cD;->bWK:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/cD;->bWY:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cD;->bWZ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cD;->bXa:Z

    invoke-direct {p0}, Lcom/google/android/gms/people/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 8

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/bO;

    iget-object v2, p0, Lcom/google/android/gms/internal/cD;->bWJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/cD;->bWK:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/cD;->bWY:J

    iget-boolean v6, p0, Lcom/google/android/gms/internal/cD;->bWZ:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/cD;->bXa:Z

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/bO;->b(Ljava/lang/String;Ljava/lang/String;JZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cD;->c(Lcom/google/android/gms/common/api/t;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCD:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method
