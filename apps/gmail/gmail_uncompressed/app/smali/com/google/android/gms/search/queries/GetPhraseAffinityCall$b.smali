.class public Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/queries/c;


# instance fields
.field final btV:I

.field public ckw:[Ljava/lang/String;

.field public ckx:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/queries/c;

    invoke-direct {v0}, Lcom/google/android/gms/search/queries/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->CREATOR:Lcom/google/android/gms/search/queries/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->btV:I

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->ckw:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->ckx:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->CREATOR:Lcom/google/android/gms/search/queries/c;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;->CREATOR:Lcom/google/android/gms/search/queries/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/queries/c;->a(Lcom/google/android/gms/search/queries/GetPhraseAffinityCall$b;Landroid/os/Parcel;I)V

    return-void
.end method
