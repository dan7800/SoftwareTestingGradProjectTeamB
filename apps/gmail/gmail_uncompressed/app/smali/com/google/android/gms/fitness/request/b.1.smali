.class public Lcom/google/android/gms/fitness/request/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bML:Ljava/lang/String;

.field private final bMM:Lcom/google/android/gms/fitness/data/BleDevice;

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/b;->bML:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/b;->bMM:Lcom/google/android/gms/fitness/data/BleDevice;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/b;->btV:I

    return v0
.end method

.method public final Ny()Lcom/google/android/gms/fitness/data/BleDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/b;->bMM:Lcom/google/android/gms/fitness/data/BleDevice;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/b;->bML:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ClaimBleDeviceRequest{%s %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/b;->bML:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/b;->bMM:Lcom/google/android/gms/fitness/data/BleDevice;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/i;->a(Lcom/google/android/gms/fitness/request/b;Landroid/os/Parcel;I)V

    return-void
.end method
