.class public final Lcom/google/android/gms/internal/aC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aA;


# instance fields
.field private final bUo:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/aB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/aB;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aC;->bUo:Lcom/google/android/gms/common/api/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/n;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/r;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/aD;

    iget-object v2, p0, Lcom/google/android/gms/internal/aC;->bUo:Lcom/google/android/gms/common/api/h;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/aD;-><init>(Lcom/google/android/gms/internal/aC;Lcom/google/android/gms/common/api/h;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
