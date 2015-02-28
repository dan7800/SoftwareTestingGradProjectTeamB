.class public final Lcom/google/android/gms/drive/internal/U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LU()Lcom/google/android/gms/drive/n;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/n;

    invoke-direct {v0}, Lcom/google/android/gms/drive/n;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/h;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/internal/X;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/X;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method
