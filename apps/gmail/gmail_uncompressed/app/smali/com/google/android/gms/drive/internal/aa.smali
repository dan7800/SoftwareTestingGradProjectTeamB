.class public Lcom/google/android/gms/drive/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/j;


# instance fields
.field protected final bGk:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/aa;->bGk:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/drive/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/ab;-><init>(Lcom/google/android/gms/drive/internal/aa;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
