.class public Lcom/google/android/gms/fitness/request/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bBR:Landroid/app/PendingIntent;

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/z;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/z;->btV:I

    return v0
.end method

.method public final NA()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/z;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/z;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/E;->ad(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "pendingIntent"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/z;->bBR:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/a;->a(Lcom/google/android/gms/fitness/request/z;Landroid/os/Parcel;I)V

    return-void
.end method
