.class public Lcom/google/android/gms/drive/internal/ListParentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/ListParentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bHs:Lcom/google/android/gms/drive/DriveId;

.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->bHs:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/l;->a(Lcom/google/android/gms/drive/internal/ListParentsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
