.class final Lcom/google/android/gms/internal/cx;
.super Lcom/google/android/gms/people/w;


# instance fields
.field final synthetic bWS:Ljava/lang/String;

.field final synthetic bWT:I

.field final synthetic bWU:Lcom/google/android/gms/internal/cw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cw;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cx;->bWU:Lcom/google/android/gms/internal/cw;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx;->bWS:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cx;->bWT:I

    invoke-direct {p0}, Lcom/google/android/gms/people/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->bWS:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/cx;->bWT:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;I)V

    return-void
.end method
