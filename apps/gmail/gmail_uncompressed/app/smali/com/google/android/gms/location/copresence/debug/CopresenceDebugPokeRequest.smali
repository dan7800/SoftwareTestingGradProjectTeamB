.class public Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/copresence/debug/a;

.field public static cbl:I

.field public static cbm:I


# instance fields
.field public final bUN:Lcom/google/android/gms/internal/aJ;

.field private final btV:I

.field private cbn:I

.field private cbo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/debug/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/debug/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->CREATOR:Lcom/google/android/gms/location/copresence/debug/a;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbl:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbm:I

    return-void
.end method

.method constructor <init>(II[BLandroid/os/IBinder;)V
    .locals 1

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;-><init>(II[BLcom/google/android/gms/internal/aJ;)V

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/internal/aK;->C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/aJ;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(II[BLcom/google/android/gms/internal/aJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->btV:I

    iput p2, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbn:I

    iput-object p3, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbo:[B

    iput-object p4, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->bUN:Lcom/google/android/gms/internal/aJ;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->btV:I

    return v0
.end method

.method final Rp()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->bUN:Lcom/google/android/gms/internal/aJ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->bUN:Lcom/google/android/gms/internal/aJ;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aJ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final Tn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbn:I

    return v0
.end method

.method public final To()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;->cbo:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/location/copresence/debug/a;->a(Lcom/google/android/gms/location/copresence/debug/CopresenceDebugPokeRequest;Landroid/os/Parcel;)V

    return-void
.end method
