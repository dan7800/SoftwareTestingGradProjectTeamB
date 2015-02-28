.class public Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/L;


# instance fields
.field final btV:I

.field final buE:[Lcom/google/android/gms/appdatasearch/CorpusId;

.field public final buF:I

.field final buG:[Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;

.field public final buH:I

.field public final buI:I

.field public final buJ:I

.field private final transient buK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transient buL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/appdatasearch/CorpusId;",
            "Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/L;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/L;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/L;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/CorpusId;I[Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;III)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buE:[Lcom/google/android/gms/appdatasearch/CorpusId;

    iput p3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buF:I

    iput p5, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buH:I

    iput p6, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buI:I

    iput p7, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buJ:I

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buG:[Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_4

    :cond_0
    iput-object v5, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buK:Ljava/util/Map;

    :cond_1
    if-eqz p4, :cond_2

    array-length v0, p4

    if-nez v0, :cond_7

    :cond_2
    iput-object v5, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buL:Ljava/util/Map;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buK:Ljava/util/Map;

    move v1, v2

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buK:Ljava/util/Map;

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/google/android/gms/appdatasearch/CorpusId;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buK:Ljava/util/Map;

    aget-object v4, p2, v1

    iget-object v4, v4, Lcom/google/android/gms/appdatasearch/CorpusId;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/google/android/gms/appdatasearch/CorpusId;->btW:Ljava/lang/String;

    if-eqz v3, :cond_6

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/google/android/gms/appdatasearch/CorpusId;->btW:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buL:Ljava/util/Map;

    :goto_1
    array-length v0, p4

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->buL:Ljava/util/Map;

    aget-object v1, p4, v2

    iget-object v1, v1, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->btX:Lcom/google/android/gms/appdatasearch/CorpusId;

    aget-object v3, p4, v2

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/L;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/L;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/L;->a(Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;Landroid/os/Parcel;I)V

    return-void
.end method
