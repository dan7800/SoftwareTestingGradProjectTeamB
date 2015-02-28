.class final Lcom/google/android/gms/internal/cs;
.super Lcom/google/android/gms/internal/cu;


# instance fields
.field final synthetic bWJ:Ljava/lang/String;

.field final synthetic bWK:Ljava/lang/String;

.field final synthetic bWN:Lcom/google/android/gms/internal/cq;

.field final synthetic bWO:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->bWN:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cs;->bWJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cs;->bWK:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/cs;->bWO:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cu;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->bWJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->bWK:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/cs;->bWO:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/common/internal/v;)V

    return-void
.end method
