.class abstract Lcom/google/android/gms/drive/internal/ae;
.super Lcom/google/android/gms/drive/internal/V;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/V",
        "<",
        "Lcom/google/android/gms/drive/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bHV:Lcom/google/android/gms/drive/internal/aa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/drive/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/ae;->bHV:Lcom/google/android/gms/drive/internal/aa;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/V;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/drive/internal/aa;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/ae;-><init>(Lcom/google/android/gms/drive/internal/aa;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/internal/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/ad;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/m;)V

    return-object v0
.end method
