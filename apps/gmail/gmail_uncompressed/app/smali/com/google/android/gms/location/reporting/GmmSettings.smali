.class public Lcom/google/android/gms/location/reporting/GmmSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/b;


# instance fields
.field private final btV:I

.field private final bvG:Landroid/accounts/Account;

.field private final cet:J

.field private final ceu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/b;

    return-void
.end method

.method public constructor <init>(IJLandroid/accounts/Account;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    iput-wide p2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    iput-object p4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    iput-boolean p5, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    return v0
.end method

.method public final TG()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    return-wide v0
.end method

.method public final TH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/b;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/GmmSettings;

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    iget-object v1, p1, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    iget-wide v4, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final mr()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmmSettings{mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->btV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValueReadMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->cet:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->bvG:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/gms/internal/aZ;->e(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReportingSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/GmmSettings;->ceu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/GmmSettings;->CREATOR:Lcom/google/android/gms/location/reporting/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/b;->a(Lcom/google/android/gms/location/reporting/GmmSettings;Landroid/os/Parcel;I)V

    return-void
.end method
