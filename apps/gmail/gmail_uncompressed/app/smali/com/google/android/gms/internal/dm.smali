.class public abstract Lcom/google/android/gms/internal/dm;
.super Lcom/google/android/gms/internal/dt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/dm",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/dt;"
    }
.end annotation


# instance fields
.field protected bZR:Lcom/google/android/gms/internal/dp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dt;-><init>()V

    return-void
.end method


# virtual methods
.method protected Ma()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/dp;->eM(I)Lcom/google/android/gms/internal/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->Ma()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method protected final SN()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/vx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dp;->eM(I)Lcom/google/android/gms/internal/dq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/vx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/dm;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    iget-object v1, p1, Lcom/google/android/gms/internal/dm;->bZR:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dp;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
