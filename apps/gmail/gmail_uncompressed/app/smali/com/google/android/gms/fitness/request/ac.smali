.class public Lcom/google/android/gms/fitness/request/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bMH:Lcom/google/android/gms/fitness/request/s;

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/d;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ac;->btV:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/u;->y(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ac;->bMH:Lcom/google/android/gms/fitness/request/s;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/ac;->btV:I

    return v0
.end method

.method public final Nv()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ac;->bMH:Lcom/google/android/gms/fitness/request/s;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/s;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/request/d;->a(Lcom/google/android/gms/fitness/request/ac;Landroid/os/Parcel;)V

    return-void
.end method
