.class final Lcom/google/android/gms/internal/cA;
.super Lcom/google/android/gms/people/w;


# instance fields
.field final synthetic bWJ:Ljava/lang/String;

.field final synthetic bWK:Ljava/lang/String;

.field final synthetic bWV:Lcom/google/android/gms/people/p;

.field final synthetic bWW:I

.field final synthetic bWX:Lcom/google/android/gms/internal/cz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/people/p;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/cA;->bWX:Lcom/google/android/gms/internal/cz;

    iput-object p2, p0, Lcom/google/android/gms/internal/cA;->bWV:Lcom/google/android/gms/people/p;

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->bWJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/cA;->bWK:Ljava/lang/String;

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/cA;->bWW:I

    invoke-direct {p0}, Lcom/google/android/gms/people/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cA;->bWV:Lcom/google/android/gms/people/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/cA;->bWJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cA;->bWK:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/cA;->bWW:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/people/y;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cA;->c(Lcom/google/android/gms/common/api/t;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCD:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method
