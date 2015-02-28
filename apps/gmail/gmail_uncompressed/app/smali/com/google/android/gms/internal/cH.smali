.class public final Lcom/google/android/gms/internal/cH;
.super Ljava/lang/Object;


# instance fields
.field private final bXf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/cI;",
            ">;"
        }
    .end annotation
.end field

.field private bXg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cH;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/cH;->bXg:I

    return-void
.end method


# virtual methods
.method public final Sc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/cI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/cI;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/cI;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qq;B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/cH;->bXg:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cH;->bXf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
