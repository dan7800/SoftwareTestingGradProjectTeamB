.class public Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/corpora/a;


# instance fields
.field final btV:I

.field public btW:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/corpora/a;

    invoke-direct {v0}, Lcom/google/android/gms/search/corpora/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->btW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/a;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;->CREATOR:Lcom/google/android/gms/search/corpora/a;

    invoke-static {p0, p1}, Lcom/google/android/gms/search/corpora/a;->a(Lcom/google/android/gms/search/corpora/ClearCorpusCall$b;Landroid/os/Parcel;)V

    return-void
.end method
