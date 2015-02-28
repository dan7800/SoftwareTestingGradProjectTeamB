.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/g;


# instance fields
.field private final btV:I

.field private cfo:F

.field private cfp:Z

.field private cfq:Lcom/google/android/gms/maps/model/a;

.field private cfr:Lcom/google/android/gms/maps/model/LatLng;

.field private cfs:F

.field private cft:F

.field private cfu:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private cfv:F

.field private cfw:F

.field private cfx:F

.field private cfy:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfp:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfw:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfx:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfy:F

    iput v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->btV:I

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfp:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfw:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfx:F

    iput v1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfy:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->btV:I

    new-instance v0, Lcom/google/android/gms/maps/model/a;

    invoke-static {p2}, Lcom/google/android/gms/c/b;->w(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/c/a;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfq:Lcom/google/android/gms/maps/model/a;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfr:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfs:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cft:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfu:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfv:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfo:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfp:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfw:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfx:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfy:F

    return-void
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->btV:I

    return v0
.end method

.method public final Ur()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfo:F

    return v0
.end method

.method final Us()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfq:Lcom/google/android/gms/maps/model/a;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/a;->Um()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final Ut()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfr:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final Uu()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfu:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final Uv()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfw:F

    return v0
.end method

.method public final Uw()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfx:F

    return v0
.end method

.method public final Ux()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfy:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBearing()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfv:F

    return v0
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cft:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfs:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfp:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/maps/a/b;->Ul()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ae(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->btV:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Us()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfr:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfs:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cft:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfu:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfv:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfo:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfp:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfw:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfx:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->cfy:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
