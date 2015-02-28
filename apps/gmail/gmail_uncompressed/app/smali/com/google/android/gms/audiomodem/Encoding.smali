.class public Lcom/google/android/gms/audiomodem/Encoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/Encoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final bwX:I

.field private final bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

.field private final bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/d;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/Encoding;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/audiomodem/DsssEncoding;Lcom/google/android/gms/audiomodem/DtmfEncoding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/Encoding;->btV:I

    iput p2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    iput-object p3, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

    iput-object p4, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;

    return-void
.end method


# virtual methods
.method public final JI()Lcom/google/android/gms/audiomodem/DsssEncoding;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

    return-object v0
.end method

.method public final JJ()Lcom/google/android/gms/audiomodem/DtmfEncoding;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;

    return-object v0
.end method

.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->btV:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/audiomodem/Encoding;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/audiomodem/Encoding;

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->btV:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/Encoding;->btV:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    iget v3, p1, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

    iget-object v3, p1, Lcom/google/android/gms/audiomodem/Encoding;->bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;

    iget-object v3, p1, Lcom/google/android/gms/audiomodem/Encoding;->bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->btV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    iget v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwY:Lcom/google/android/gms/audiomodem/DsssEncoding;

    invoke-virtual {v0}, Lcom/google/android/gms/audiomodem/DsssEncoding;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwX:I

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/audiomodem/Encoding;->bwZ:Lcom/google/android/gms/audiomodem/DtmfEncoding;

    invoke-virtual {v1}, Lcom/google/android/gms/audiomodem/DtmfEncoding;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/d;->a(Lcom/google/android/gms/audiomodem/Encoding;Landroid/os/Parcel;I)V

    return-void
.end method
