.class public Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/f;


# instance fields
.field final btV:I

.field public buu:Lcom/google/android/gms/common/api/Status;

.field public cko:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/f;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->CREATOR:Lcom/google/android/gms/search/global/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->btV:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->buu:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->cko:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->buu:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->CREATOR:Lcom/google/android/gms/search/global/f;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;->CREATOR:Lcom/google/android/gms/search/global/f;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/f;->a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$Response;Landroid/os/Parcel;I)V

    return-void
.end method
