.class final Lcom/google/android/gms/drive/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/k;


# instance fields
.field private final bHX:Lcom/google/android/gms/common/api/Status;

.field private final bHY:Lcom/google/android/gms/drive/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ad;->bHX:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/ad;->bHY:Lcom/google/android/gms/drive/m;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ad;->bHX:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final LW()Lcom/google/android/gms/drive/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ad;->bHY:Lcom/google/android/gms/drive/m;

    return-object v0
.end method
