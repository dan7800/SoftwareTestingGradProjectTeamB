.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Landroid/net/Uri;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/e/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bn;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bm;Landroid/net/Uri;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
