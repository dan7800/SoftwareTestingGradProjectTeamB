.class public Lcom/google/android/gms/audiomodem/DtmfEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DtmfEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final bwK:I

.field private final bwL:Z

.field private final bwP:F

.field private final bwU:I

.field private final bwV:I

.field private final bwW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/c;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->btV:I

    iput p2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwK:I

    iput-boolean p3, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwL:Z

    iput p4, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwP:F

    iput p5, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwU:I

    iput p6, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwV:I

    iput p7, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwW:I

    return-void
.end method


# virtual methods
.method public final JA()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwP:F

    return v0
.end method

.method public final JF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwU:I

    return v0
.end method

.method public final JG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwV:I

    return v0
.end method

.method public final JH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwW:I

    return v0
.end method

.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->btV:I

    return v0
.end method

.method public final Jv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwK:I

    return v0
.end method

.method public final Jw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwL:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->btV:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->btV:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwK:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwK:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwL:Z

    iget-boolean v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwL:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwP:F

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwP:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwU:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwU:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwV:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwV:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwW:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwW:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->btV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwP:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/audiomodem/DtmfEncoding;->bwW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/audiomodem/c;->a(Lcom/google/android/gms/audiomodem/DtmfEncoding;Landroid/os/Parcel;)V

    return-void
.end method
