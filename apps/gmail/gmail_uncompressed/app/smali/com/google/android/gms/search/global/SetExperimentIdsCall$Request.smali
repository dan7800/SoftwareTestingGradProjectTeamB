.class public Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/i;


# instance fields
.field final btV:I

.field public ckp:[B

.field public ckq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/i;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->btV:I

    return-void
.end method

.method constructor <init>(I[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->ckp:[B

    iput-boolean p3, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->ckq:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    invoke-static {p0, p1}, Lcom/google/android/gms/search/global/i;->a(Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;Landroid/os/Parcel;)V

    return-void
.end method
