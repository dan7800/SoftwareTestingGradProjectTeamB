.class final Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/h;


# instance fields
.field final synthetic bWE:Lcom/google/android/gms/common/api/Status;

.field final synthetic bWI:Lcom/google/android/gms/internal/cn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/co;->bWI:Lcom/google/android/gms/internal/cn;

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->bWE:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->bWE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final Sa()Lcom/google/android/gms/people/model/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
