.class public final Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field ckO:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field ckP:Lcom/google/android/gms/wallet/OfferWalletObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/d;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->btV:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->ckO:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p3, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->ckP:Lcom/google/android/gms/wallet/OfferWalletObject;

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
