.class final Lcom/google/android/gms/drive/internal/ac;
.super Lcom/google/android/gms/drive/internal/J;


# instance fields
.field private final bHW:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/drive/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/drive/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/J;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ac;->bHW:Lcom/google/android/gms/common/api/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ac;->bHW:Lcom/google/android/gms/common/api/m;

    new-instance v1, Lcom/google/android/gms/drive/internal/ad;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/R;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->LZ()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/R;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/m;->Y(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ac;->bHW:Lcom/google/android/gms/common/api/m;

    new-instance v1, Lcom/google/android/gms/drive/internal/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/m;->Y(Ljava/lang/Object;)V

    return-void
.end method
