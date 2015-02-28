.class public final Lcom/google/android/gms/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/b;


# instance fields
.field public final bRp:J

.field public final bRq:I

.field public final bRr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bRs:Z

.field public final bRt:I

.field public final bRu:Z

.field public final bRv:Ljava/lang/String;

.field public final bRw:Lcom/google/android/gms/internal/bo;

.field public final bRx:Landroid/location/Location;

.field public final bRy:Ljava/lang/String;

.field public final bRz:Landroid/os/Bundle;

.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ba;->CREATOR:Lcom/google/android/gms/internal/b;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/bo;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bo;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ba;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ba;->bRp:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ba;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/ba;->bRq:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ba;->bRr:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ba;->bRs:Z

    iput p8, p0, Lcom/google/android/gms/internal/ba;->bRt:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ba;->bRu:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ba;->bRv:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/ba;->bRw:Lcom/google/android/gms/internal/bo;

    iput-object p12, p0, Lcom/google/android/gms/internal/ba;->bRx:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/ba;->bRy:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/ba;->bRz:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/b;->a(Lcom/google/android/gms/internal/ba;Landroid/os/Parcel;I)V

    return-void
.end method
