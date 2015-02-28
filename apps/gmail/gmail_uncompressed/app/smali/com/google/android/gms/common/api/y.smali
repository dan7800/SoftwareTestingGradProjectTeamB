.class final Lcom/google/android/gms/common/api/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/C;


# instance fields
.field final synthetic bDd:Lcom/google/android/gms/common/api/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/y;->bDd:Lcom/google/android/gms/common/api/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/E",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/y;->bDd:Lcom/google/android/gms/common/api/x;

    iget-object v0, v0, Lcom/google/android/gms/common/api/x;->bDa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
