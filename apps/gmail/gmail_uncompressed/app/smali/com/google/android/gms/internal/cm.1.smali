.class public final Lcom/google/android/gms/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/g;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/people/g;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/people/h;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/people/g;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object p2, Lcom/google/android/gms/people/g;->cgx:Lcom/google/android/gms/people/g;

    goto :goto_0
.end method
