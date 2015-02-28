.class final Lcom/google/android/gms/internal/cn;
.super Lcom/google/android/gms/people/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/v",
        "<",
        "Lcom/google/android/gms/people/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bWG:Lcom/google/android/gms/people/g;

.field final synthetic bWH:Lcom/google/android/gms/internal/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/people/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cn;->bWH:Lcom/google/android/gms/internal/cm;

    iput-object p2, p0, Lcom/google/android/gms/internal/cn;->bWG:Lcom/google/android/gms/people/g;

    invoke-direct {p0}, Lcom/google/android/gms/people/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/co;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/co;-><init>(Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cn;->bWG:Lcom/google/android/gms/people/g;

    invoke-virtual {v0}, Lcom/google/android/gms/people/g;->UM()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cn;->bWG:Lcom/google/android/gms/people/g;

    invoke-virtual {v1}, Lcom/google/android/gms/people/g;->UO()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;ZI)V

    return-void
.end method
