.class final Lcom/google/android/gms/internal/ck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/d;


# instance fields
.field final synthetic bWE:Lcom/google/android/gms/common/api/Status;

.field final synthetic bWF:Lcom/google/android/gms/internal/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->bWF:Lcom/google/android/gms/internal/cj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ck;->bWE:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->bWE:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final Sb()Lcom/google/android/gms/people/model/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
