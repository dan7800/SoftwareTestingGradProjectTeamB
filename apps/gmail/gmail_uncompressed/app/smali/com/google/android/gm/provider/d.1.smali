.class final Lcom/google/android/gm/provider/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    invoke-direct {v0, p1}, Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    new-array v0, p1, [Lcom/google/android/gm/provider/Advertisement$AdvertisementOptions;

    return-object v0
.end method
