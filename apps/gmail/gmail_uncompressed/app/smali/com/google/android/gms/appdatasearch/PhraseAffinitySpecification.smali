.class public Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/R;


# instance fields
.field final btV:I

.field final bve:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/R;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/R;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/R;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->bve:[Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/R;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/R;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/R;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinitySpecification;Landroid/os/Parcel;I)V

    return-void
.end method
