.class final Lcom/google/android/gms/internal/dp;
.super Ljava/lang/Object;


# static fields
.field private static final bZU:Lcom/google/android/gms/internal/dq;


# instance fields
.field private bZV:Z

.field private bZW:[I

.field private bZX:[Lcom/google/android/gms/internal/dq;

.field private gO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dp;->bZU:Lcom/google/android/gms/internal/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dp;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/dp;->bZV:Z

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/google/android/gms/internal/dp;->t(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/dp;->bZW:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/dq;

    iput-object v0, p0, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    iput v2, p0, Lcom/google/android/gms/internal/dp;->gO:I

    return-void
.end method

.method private gc()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/dp;->gO:I

    iget-object v4, p0, Lcom/google/android/gms/internal/dp;->bZW:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/dp;->bZU:Lcom/google/android/gms/internal/dq;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/dp;->bZV:Z

    iput v0, p0, Lcom/google/android/gms/internal/dp;->gO:I

    return-void
.end method

.method private static t(I)I
    .locals 3

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x28

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xc

    if-gt v1, v2, :cond_0

    const/16 v0, 0x34

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final eM(I)Lcom/google/android/gms/internal/dq;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dp;->bZV:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;->gc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/dp;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/dp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dp;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dp;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/dp;->bZW:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/dp;->bZW:[I

    iget v5, p0, Lcom/google/android/gms/internal/dp;->gO:I

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget v6, v3, v2

    aget v7, v4, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    iget-object v4, p1, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    iget v5, p0, Lcom/google/android/gms/internal/dp;->gO:I

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/dq;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v1

    :goto_4
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dp;->bZV:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;->gc()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/dp;->gO:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/dp;->bZW:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/dp;->bZX:[Lcom/google/android/gms/internal/dq;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dq;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dp;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dp;->bZV:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;->gc()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/dp;->gO:I

    return v0
.end method
