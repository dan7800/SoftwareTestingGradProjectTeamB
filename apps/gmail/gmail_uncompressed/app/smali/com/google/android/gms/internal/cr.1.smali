.class final Lcom/google/android/gms/internal/cr;
.super Lcom/google/android/gms/internal/cu;


# instance fields
.field final synthetic bWJ:Ljava/lang/String;

.field final synthetic bWK:Ljava/lang/String;

.field final synthetic bWL:I

.field final synthetic bWM:I

.field final synthetic bWN:Lcom/google/android/gms/internal/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->bWN:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr;->bWJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cr;->bWK:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/cr;->bWL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cr;->bWM:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cu;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/bO;

    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->bWJ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/cr;->bWK:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/cr;->bWL:I

    iget v5, p0, Lcom/google/android/gms/internal/cr;->bWM:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/common/internal/v;)V

    return-void
.end method
