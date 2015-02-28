.class public Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/d;


# instance fields
.field final btV:I

.field public buA:Ljava/lang/String;

.field public buB:Ljava/lang/String;

.field public buy:I

.field public buz:Ljava/lang/String;

.field public ckm:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

.field public enabled:Z

.field public iconId:I

.field public labelId:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/d;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->labelId:I

    iput p4, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->buy:I

    iput p5, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->iconId:I

    iput-object p6, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->buz:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->buA:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->buB:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->ckm:[Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$CorpusInfo;

    iput-boolean p10, p0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->enabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;->CREATOR:Lcom/google/android/gms/search/global/d;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/d;->a(Lcom/google/android/gms/search/global/GetGlobalSearchSourcesCall$GlobalSearchSource;Landroid/os/Parcel;I)V

    return-void
.end method
