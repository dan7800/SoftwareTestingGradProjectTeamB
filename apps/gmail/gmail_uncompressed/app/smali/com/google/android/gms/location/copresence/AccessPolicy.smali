.class public Lcom/google/android/gms/location/copresence/AccessPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/AccessPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final caD:Lcom/google/android/gms/common/people/data/Audience;


# instance fields
.field private final btV:I

.field private final caE:I

.field private final caF:J

.field private final caG:Lcom/google/android/gms/location/copresence/AccessLock;

.field private final caH:Lcom/google/android/gms/common/people/data/Audience;

.field private final caI:I

.field private final caJ:I

.field private final caK:Lcom/google/android/gms/location/copresence/AclResourceId;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/copresence/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/AccessPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/people/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/a;-><init>()V

    const-string v1, "public"

    const-string v2, "Public"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/people/data/AudienceMember;->al(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/people/data/a;->D(Ljava/util/Collection;)Lcom/google/android/gms/common/people/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/a;->Lq()Lcom/google/android/gms/common/people/data/Audience;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caD:Lcom/google/android/gms/common/people/data/Audience;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JLcom/google/android/gms/location/copresence/AccessLock;Lcom/google/android/gms/common/people/data/Audience;IILcom/google/android/gms/location/copresence/AclResourceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->btV:I

    iput p2, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caE:I

    iput-object p3, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caF:J

    iput-object p6, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caG:Lcom/google/android/gms/location/copresence/AccessLock;

    iput-object p7, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caH:Lcom/google/android/gms/common/people/data/Audience;

    iput p8, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caI:I

    iput p9, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caJ:I

    iput-object p10, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caK:Lcom/google/android/gms/location/copresence/AclResourceId;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->btV:I

    return v0
.end method

.method final SS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caE:I

    return v0
.end method

.method public final ST()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caF:J

    return-wide v0
.end method

.method public final SU()Lcom/google/android/gms/location/copresence/AccessLock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caG:Lcom/google/android/gms/location/copresence/AccessLock;

    return-object v0
.end method

.method public final SV()Lcom/google/android/gms/common/people/data/Audience;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caH:Lcom/google/android/gms/common/people/data/Audience;

    return-object v0
.end method

.method public final SW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caI:I

    return v0
.end method

.method public final SX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caJ:I

    return v0
.end method

.method public final SY()Lcom/google/android/gms/location/copresence/AclResourceId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->caK:Lcom/google/android/gms/location/copresence/AclResourceId;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AccessPolicy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/e;->a(Lcom/google/android/gms/location/copresence/AccessPolicy;Landroid/os/Parcel;I)V

    return-void
.end method
