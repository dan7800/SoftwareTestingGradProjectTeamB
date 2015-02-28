.class abstract Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/people/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/v",
        "<",
        "Lcom/google/android/gms/people/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/people/v;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cv;-><init>(Lcom/google/android/gms/internal/cu;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
