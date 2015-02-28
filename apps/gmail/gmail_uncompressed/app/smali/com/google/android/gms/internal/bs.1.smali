.class abstract Lcom/google/android/gms/internal/bs;
.super Lcom/google/android/gms/common/api/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/t;",
        ">",
        "Lcom/google/android/gms/common/api/l",
        "<TR;",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/e/a;->bBI:Lcom/google/android/gms/common/api/h;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/bj;)V
.end method

.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bt;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bj;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/bs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bj;)V

    return-void
.end method
