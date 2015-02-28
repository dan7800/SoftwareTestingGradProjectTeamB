.class final Lcom/google/android/gms/internal/bR;
.super Lcom/google/android/gms/common/internal/h;

# interfaces
.implements Lcom/google/android/gms/people/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/bI;",
        ">.com/google/android/gms/common/internal/h<",
        "Lcom/google/android/gms/common/api/m",
        "<",
        "Lcom/google/android/gms/people/d;",
        ">;>;",
        "Lcom/google/android/gms/people/d;"
    }
.end annotation


# instance fields
.field private final bHX:Lcom/google/android/gms/common/api/Status;

.field final synthetic bWh:Lcom/google/android/gms/internal/bO;

.field private final bWj:Lcom/google/android/gms/people/model/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/d;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/people/model/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/bR;->bWh:Lcom/google/android/gms/internal/bO;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bR;->bHX:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/bR;->bWj:Lcom/google/android/gms/people/model/a;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bR;->bHX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final Lf()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bR;->release()V

    return-void
.end method

.method public final Sb()Lcom/google/android/gms/people/model/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bR;->bWj:Lcom/google/android/gms/people/model/a;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/bR;->bWj:Lcom/google/android/gms/people/model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bR;->bWj:Lcom/google/android/gms/people/model/a;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/a;->close()V

    :cond_0
    return-void
.end method
