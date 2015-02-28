.class public Lcom/google/android/gms/location/places/UserAddedPlace;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/UserAddedPlace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bKo:Ljava/lang/String;

.field private final bVf:Lcom/google/android/gms/maps/model/LatLng;

.field private final bVo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field final btV:I

.field private final bxx:Ljava/lang/String;

.field private final ceh:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserAddedPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bVf:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bKo:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bVo:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bxx:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->ceh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final RB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bxx:Ljava/lang/String;

    return-object v0
.end method

.method public final Rw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bVo:Ljava/util/List;

    return-object v0
.end method

.method public final Rx()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bVf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final TA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->ceh:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->bKo:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserAddedPlace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/k;->a(Lcom/google/android/gms/location/places/UserAddedPlace;Landroid/os/Parcel;I)V

    return-void
.end method
