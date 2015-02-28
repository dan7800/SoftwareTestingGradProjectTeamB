.class public Lcom/google/android/gms/audiomodem/DsssEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DsssEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final bwK:I

.field private final bwL:Z

.field private final bwM:Z

.field private final bwN:I

.field private final bwO:I

.field private final bwP:F

.field private final bwQ:I

.field private final bwR:F

.field private final bwS:I

.field private final bwT:I

.field private final bwU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/b;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DsssEncoding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZZIIFIFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->btV:I

    iput p2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwK:I

    iput-boolean p3, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwL:Z

    iput-boolean p4, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwM:Z

    iput p5, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwN:I

    iput p6, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwO:I

    iput p7, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwP:F

    iput p8, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwQ:I

    iput p9, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwR:F

    iput p10, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwS:I

    iput p11, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwT:I

    iput p12, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwU:I

    return-void
.end method


# virtual methods
.method public final JA()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwP:F

    return v0
.end method

.method public final JB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwQ:I

    return v0
.end method

.method public final JC()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwR:F

    return v0
.end method

.method public final JD()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwS:I

    return v0
.end method

.method public final JE()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwT:I

    return v0
.end method

.method public final JF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwU:I

    return v0
.end method

.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->btV:I

    return v0
.end method

.method public final Jv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwK:I

    return v0
.end method

.method public final Jw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwL:Z

    return v0
.end method

.method public final Jx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwM:Z

    return v0
.end method

.method public final Jy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwN:I

    return v0
.end method

.method public final Jz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwO:I

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
    instance-of v2, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/audiomodem/DsssEncoding;

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->btV:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->btV:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwK:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwK:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwL:Z

    iget-boolean v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwL:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwM:Z

    iget-boolean v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwM:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwN:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwN:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwO:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwO:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwP:F

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwP:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwQ:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwQ:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwR:F

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwR:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwS:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwS:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwT:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwT:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwU:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwU:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->btV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwK:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwM:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwP:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwR:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/audiomodem/DsssEncoding;->bwU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/audiomodem/b;->a(Lcom/google/android/gms/audiomodem/DsssEncoding;Landroid/os/Parcel;)V

    return-void
.end method
