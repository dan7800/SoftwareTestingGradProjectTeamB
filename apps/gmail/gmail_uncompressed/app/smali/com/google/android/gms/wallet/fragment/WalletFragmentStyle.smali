.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final btV:I

.field cmg:Landroid/os/Bundle;

.field cmh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/fragment/c;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->btV:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->cmg:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->cmg:Landroid/os/Bundle;

    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->cmh:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/fragment/c;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;Landroid/os/Parcel;)V

    return-void
.end method
