.class final Lcom/google/android/gms/drive/internal/ab;
.super Lcom/google/android/gms/drive/internal/ae;


# instance fields
.field final synthetic bHV:Lcom/google/android/gms/drive/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/aa;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ab;->bHV:Lcom/google/android/gms/drive/internal/aa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/ae;-><init>(Lcom/google/android/gms/drive/internal/aa;B)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/f;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/drive/internal/W;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/W;->Mb()Lcom/google/android/gms/drive/internal/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/ab;->bHV:Lcom/google/android/gms/drive/internal/aa;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/aa;->bGk:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/ac;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/ac;-><init>(Lcom/google/android/gms/common/api/m;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/c;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/f;)V

    return-void
.end method
