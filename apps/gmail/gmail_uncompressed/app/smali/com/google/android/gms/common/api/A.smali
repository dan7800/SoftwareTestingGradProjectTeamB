.class final Lcom/google/android/gms/common/api/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/p;


# instance fields
.field final synthetic bDd:Lcom/google/android/gms/common/api/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/A;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final KE()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/A;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->g(Lcom/google/android/gms/common/api/x;)Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/A;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/x;->isConnected()Z

    move-result v0

    return v0
.end method
