.class public final Lcom/google/android/gms/internal/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/b;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/people/d;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/cj;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/cj;-><init>(Lcom/google/android/gms/internal/ci;Ljava/lang/String;Lcom/google/android/gms/people/b;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
