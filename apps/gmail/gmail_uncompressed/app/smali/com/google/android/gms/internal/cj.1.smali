.class final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/people/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/v",
        "<",
        "Lcom/google/android/gms/people/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bWB:Ljava/lang/String;

.field final synthetic bWC:Lcom/google/android/gms/people/b;

.field final synthetic bWD:Lcom/google/android/gms/internal/ci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ci;Ljava/lang/String;Lcom/google/android/gms/people/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cj;->bWD:Lcom/google/android/gms/internal/ci;

    iput-object p2, p0, Lcom/google/android/gms/internal/cj;->bWB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cj;->bWC:Lcom/google/android/gms/people/b;

    invoke-direct {p0}, Lcom/google/android/gms/people/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ck;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ck;-><init>(Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bO;

    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->bWB:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->bWC:Lcom/google/android/gms/people/b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Lcom/google/android/gms/people/b;)V

    return-void
.end method
