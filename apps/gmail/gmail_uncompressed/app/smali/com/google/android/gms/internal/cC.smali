.class public final Lcom/google/android/gms/internal/cC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/A;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/r;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Lcom/google/android/gms/internal/cD;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/cD;-><init>(Lcom/google/android/gms/internal/cC;Ljava/lang/String;Ljava/lang/String;JZZ)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
