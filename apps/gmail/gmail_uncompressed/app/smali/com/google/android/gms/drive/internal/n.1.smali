.class public final Lcom/google/android/gms/drive/internal/n;
.super Lcom/google/android/gms/internal/dm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dm",
        "<",
        "Lcom/google/android/gms/drive/internal/n;",
        ">;"
    }
.end annotation


# instance fields
.field public bHK:Ljava/lang/String;

.field public bHL:J

.field public bHM:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/n;->bZR:Lcom/google/android/gms/internal/dp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/n;->cac:I

    return-void
.end method


# virtual methods
.method protected final Ma()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/dm;->Ma()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->aa(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vx;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vx;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/vx;)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->Z(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->g(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vx;->a(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vx;->a(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/n;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/n;

    iget v1, p0, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/n;->bHL:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/n;->bHM:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/n;->a(Lcom/google/android/gms/internal/dm;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/n;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/n;->bHL:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/n;->bHM:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/n;->SN()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/n;->bHK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
