.class public Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/t;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/corpora/d;


# instance fields
.field final btV:I

.field public buu:Lcom/google/android/gms/common/api/Status;

.field public ckg:Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/corpora/d;

    invoke-direct {v0}, Lcom/google/android/gms/search/corpora/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->btV:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->buu:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->ckg:Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;

    return-void
.end method


# virtual methods
.method public final Jk()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->buu:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;->CREATOR:Lcom/google/android/gms/search/corpora/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/corpora/d;->a(Lcom/google/android/gms/search/corpora/GetCorpusInfoCall$Response;Landroid/os/Parcel;I)V

    return-void
.end method