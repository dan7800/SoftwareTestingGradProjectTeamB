.class public Lcom/google/android/gms/location/copresence/AclResourceId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/AclResourceId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final btV:I

.field private final bzz:Ljava/lang/String;

.field private final caL:Ljava/lang/String;

.field private final caM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/AclResourceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->bzz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->btV:I

    return v0
.end method

.method public final SZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caL:Ljava/lang/String;

    return-object v0
.end method

.method public final Ta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caM:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->bzz:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AclResourceId{application = %s, id = %s, part = %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->bzz:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/location/copresence/AclResourceId;->caM:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/location/copresence/g;->a(Lcom/google/android/gms/location/copresence/AclResourceId;Landroid/os/Parcel;)V

    return-void
.end method
