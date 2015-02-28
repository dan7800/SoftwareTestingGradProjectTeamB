.class public Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/e;


# instance fields
.field final btV:I

.field public ckn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/e;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->CREATOR:Lcom/google/android/gms/search/global/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->btV:I

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->btV:I

    iput-boolean p2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->ckn:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->CREATOR:Lcom/google/android/gms/search/global/e;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;->CREATOR:Lcom/google/android/gms/search/global/e;

    invoke-static {p0, p1}, Lcom/google/android/gms/search/global/e;->a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Request;Landroid/os/Parcel;)V

    return-void
.end method
