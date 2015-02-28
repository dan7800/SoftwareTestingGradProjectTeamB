.class public Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/corpora/g;


# instance fields
.field final btV:I

.field public btW:Ljava/lang/String;

.field public ckj:J

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/corpora/g;

    invoke-direct {v0}, Lcom/google/android/gms/search/corpora/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->btW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->ckj:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/g;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/g;

    invoke-static {p0, p1}, Lcom/google/android/gms/search/corpora/g;->a(Lcom/google/android/gms/search/corpora/RequestIndexingCall$b;Landroid/os/Parcel;)V

    return-void
.end method
