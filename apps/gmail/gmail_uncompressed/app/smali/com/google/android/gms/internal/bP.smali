.class final Lcom/google/android/gms/internal/bP;
.super Lcom/google/android/gms/common/internal/h;

# interfaces
.implements Lcom/google/android/gms/people/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/bI;",
        ">.com/google/android/gms/common/internal/h<",
        "Lcom/google/android/gms/common/api/m",
        "<",
        "Lcom/google/android/gms/people/h;",
        ">;>;",
        "Lcom/google/android/gms/people/h;"
    }
.end annotation


# instance fields
.field private final bHX:Lcom/google/android/gms/common/api/Status;

.field private final bWg:Lcom/google/android/gms/people/model/e;

.field final synthetic bWh:Lcom/google/android/gms/internal/bO;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/h;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/people/model/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/bP;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bP;->bHX:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/bP;->bWg:Lcom/google/android/gms/people/model/e;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->bHX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final Lf()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bP;->release()V

    return-void
.end method

.method public final Sa()Lcom/google/android/gms/people/model/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->bWg:Lcom/google/android/gms/people/model/e;

    return-object v0
.end method

.method protected final synthetic ac(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/m;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/m;->Y(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->bWg:Lcom/google/android/gms/people/model/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->bWg:Lcom/google/android/gms/people/model/e;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/e;->close()V

    :cond_0
    return-void
.end method
