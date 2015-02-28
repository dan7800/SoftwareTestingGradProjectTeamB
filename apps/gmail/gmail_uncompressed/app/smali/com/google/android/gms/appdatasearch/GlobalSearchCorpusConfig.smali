.class public Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/K;


# instance fields
.field final btV:I

.field public final buC:[I

.field public final buD:[Lcom/google/android/gms/appdatasearch/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/K;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/K;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/K;

    return-void
.end method

.method constructor <init>(I[I[Lcom/google/android/gms/appdatasearch/Feature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->buC:[I

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->buD:[Lcom/google/android/gms/appdatasearch/Feature;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/K;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;->CREATOR:Lcom/google/android/gms/appdatasearch/K;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/K;->a(Lcom/google/android/gms/appdatasearch/GlobalSearchCorpusConfig;Landroid/os/Parcel;I)V

    return-void
.end method
