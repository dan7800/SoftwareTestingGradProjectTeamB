.class public Lcom/google/android/gms/fitness/request/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bBR:Landroid/app/PendingIntent;

.field private final bMN:Lcom/google/android/gms/fitness/data/j;

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/B;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/B;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/p;->btV:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/p;->bMN:Lcom/google/android/gms/fitness/data/j;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/p;->bBR:Landroid/app/PendingIntent;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/k;->x(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/p;->btV:I

    return v0
.end method

.method public final NA()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/p;->bBR:Landroid/app/PendingIntent;

    return-object v0
.end method

.method final NF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/p;->bMN:Lcom/google/android/gms/fitness/data/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/p;->bMN:Lcom/google/android/gms/fitness/data/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorUnregistrationRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/p;->bMN:Lcom/google/android/gms/fitness/data/j;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/B;->a(Lcom/google/android/gms/fitness/request/p;Landroid/os/Parcel;I)V

    return-void
.end method
