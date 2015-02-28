.class public Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bLu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final btV:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/q;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->btV:I

    return v0
.end method

.method public final MN()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/E;->ad(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "fields"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;->bLu:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/q;->a(Lcom/google/android/gms/fitness/request/DataTypeCreateRequest;Landroid/os/Parcel;)V

    return-void
.end method
