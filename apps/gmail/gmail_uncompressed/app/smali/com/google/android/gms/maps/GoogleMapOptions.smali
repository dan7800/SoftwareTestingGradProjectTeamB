.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/a;


# instance fields
.field private final btV:I

.field private ceM:Ljava/lang/Boolean;

.field private ceN:Ljava/lang/Boolean;

.field private ceO:I

.field private ceP:Lcom/google/android/gms/maps/model/CameraPosition;

.field private ceQ:Ljava/lang/Boolean;

.field private ceR:Ljava/lang/Boolean;

.field private ceS:Ljava/lang/Boolean;

.field private ceT:Ljava/lang/Boolean;

.field private ceU:Ljava/lang/Boolean;

.field private ceV:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceO:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->btV:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceO:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->btV:I

    invoke-static {p2}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceM:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceN:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceO:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceP:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceQ:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceR:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceS:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceT:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceU:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/a/a;->b(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceV:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->btV:I

    return v0
.end method

.method final TU()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceM:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final TV()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceN:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final TW()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceQ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final TX()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceR:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final TY()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceS:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final TZ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceT:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final Ua()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceU:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final Ub()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceV:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final Uc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceO:I

    return v0
.end method

.method public final Ud()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceP:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/maps/a/b;->Ul()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ae(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->btV:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceM:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceN:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceO:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceP:Lcom/google/android/gms/maps/model/CameraPosition;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceQ:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceR:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceS:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceT:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceU:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ceV:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/a;->a(Ljava/lang/Boolean;)B

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IB)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
