.class public Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/Q;


# instance fields
.field final btV:I

.field final bvc:[Lcom/google/android/gms/appdatasearch/CorpusId;

.field final bvd:[I

.field final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/Q;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/Q;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/Q;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Lcom/google/android/gms/appdatasearch/CorpusId;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->bvc:[Lcom/google/android/gms/appdatasearch/CorpusId;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->bvd:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/Q;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;->CREATOR:Lcom/google/android/gms/appdatasearch/Q;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/Q;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinityResponse;Landroid/os/Parcel;I)V

    return-void
.end method
