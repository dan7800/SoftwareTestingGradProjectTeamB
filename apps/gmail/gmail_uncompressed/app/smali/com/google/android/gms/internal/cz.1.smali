.class public final Lcom/google/android/gms/internal/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/p;)Lcom/google/android/gms/common/api/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/people/p;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/cA;

    const/16 v5, 0x20

    move-object v1, p0

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cA;-><init>(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/people/p;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/p;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/people/p;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cB;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/cB;-><init>(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/people/p;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
