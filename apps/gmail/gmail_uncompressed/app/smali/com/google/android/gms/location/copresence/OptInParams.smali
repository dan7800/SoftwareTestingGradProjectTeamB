.class public Lcom/google/android/gms/location/copresence/OptInParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/OptInParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final buh:Ljava/lang/String;

.field private final caT:I

.field private final caU:I

.field private final caV:I

.field private final caW:I

.field private final caX:Ljava/lang/String;

.field private final caY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/OptInParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/OptInParams;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/location/copresence/OptInParams;->buh:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caT:I

    iput p4, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caU:I

    iput p5, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caV:I

    iput p6, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caW:I

    iput-object p7, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caX:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->btV:I

    return v0
.end method

.method public final Tc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caT:I

    return v0
.end method

.method public final Td()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caU:I

    return v0
.end method

.method public final Te()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caV:I

    return v0
.end method

.method public final Tf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caW:I

    return v0
.end method

.method public final Tg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caX:Ljava/lang/String;

    return-object v0
.end method

.method public final Th()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->caY:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/OptInParams;->buh:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/location/copresence/l;->a(Lcom/google/android/gms/location/copresence/OptInParams;Landroid/os/Parcel;)V

    return-void
.end method
