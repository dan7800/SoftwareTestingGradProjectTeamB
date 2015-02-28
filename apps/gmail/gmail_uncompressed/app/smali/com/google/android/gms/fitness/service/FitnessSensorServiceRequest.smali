.class public Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bKy:Lcom/google/android/gms/fitness/data/DataSource;

.field private final bMN:Lcom/google/android/gms/fitness/data/j;

.field private final bNb:J

.field private final bNc:J

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/service/a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/service/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Landroid/os/IBinder;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p3}, Lcom/google/android/gms/fitness/data/k;->x(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bMN:Lcom/google/android/gms/fitness/data/j;

    iput-wide p4, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNb:J

    iput-wide p6, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNc:J

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->btV:I

    return v0
.end method

.method public final MA()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public final MV()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNb:J

    return-wide v0
.end method

.method final NF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bMN:Lcom/google/android/gms/fitness/data/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final NN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNc:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNb:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNc:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNc:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bNc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FitnessSensorServiceRequest{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->bKy:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/service/a;->a(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
