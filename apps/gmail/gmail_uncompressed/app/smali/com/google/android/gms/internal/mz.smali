.class public Lcom/google/android/gms/internal/mz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bUN:Lcom/google/android/gms/internal/aJ;

.field public final bUO:Landroid/app/PendingIntent;

.field private final btV:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aR;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aR;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mz;->btV:I

    iput p2, p0, Lcom/google/android/gms/internal/mz;->type:I

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/mz;->bUO:Landroid/app/PendingIntent;

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/aK;->C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/aJ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    goto :goto_0
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mz;->btV:I

    return v0
.end method

.method final Rp()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aJ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mz;

    iget v2, p0, Lcom/google/android/gms/internal/mz;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/mz;->type:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    iget-object v3, p1, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/mz;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mz;->bUN:Lcom/google/android/gms/internal/aJ;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aR;->a(Lcom/google/android/gms/internal/mz;Landroid/os/Parcel;I)V

    return-void
.end method
