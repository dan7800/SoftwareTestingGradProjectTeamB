.class public abstract Lcom/google/android/gms/common/data/h;
.super Ljava/lang/Object;


# instance fields
.field protected final bDT:Lcom/google/android/gms/common/data/DataHolder;

.field protected bEo:I

.field private bEp:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    iput-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/G;->cc(Z)V

    iput p2, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->ex(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final KP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/data/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/common/data/h;

    iget v1, p1, Lcom/google/android/gms/common/data/h;->bEo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fR(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataHolder;->fR(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final fS(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->h(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final fT(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->i(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected final getByteArray(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->g(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected getDouble(Ljava/lang/String;)D
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getFloat(Ljava/lang/String;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method protected getInteger(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/data/h;->bEp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/h;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
