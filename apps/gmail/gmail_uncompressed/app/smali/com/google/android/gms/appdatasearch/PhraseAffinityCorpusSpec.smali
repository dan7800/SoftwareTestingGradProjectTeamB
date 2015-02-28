.class public Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/P;


# instance fields
.field final btV:I

.field public final btX:Lcom/google/android/gms/appdatasearch/CorpusId;

.field final bvb:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/P;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/P;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/P;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/CorpusId;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->btX:Lcom/google/android/gms/appdatasearch/CorpusId;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->bvb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/P;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;->CREATOR:Lcom/google/android/gms/appdatasearch/P;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/P;->a(Lcom/google/android/gms/appdatasearch/PhraseAffinityCorpusSpec;Landroid/os/Parcel;I)V

    return-void
.end method
