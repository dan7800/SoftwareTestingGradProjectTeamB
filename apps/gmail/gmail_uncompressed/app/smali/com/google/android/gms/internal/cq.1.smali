.class public final Lcom/google/android/gms/internal/cq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/k;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ct;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cq;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cr;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cs;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/cq;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
