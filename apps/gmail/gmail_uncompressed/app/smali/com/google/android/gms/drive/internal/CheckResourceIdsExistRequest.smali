.class public Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bHc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/K;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/K;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->bHc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->btV:I

    return v0
.end method

.method public final LY()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->bHc:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/drive/internal/K;->a(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Landroid/os/Parcel;)V

    return-void
.end method
