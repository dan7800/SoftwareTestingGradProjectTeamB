.class public final Lcom/google/android/gms/internal/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)Lcom/google/android/gms/common/api/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cx;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/cw;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
