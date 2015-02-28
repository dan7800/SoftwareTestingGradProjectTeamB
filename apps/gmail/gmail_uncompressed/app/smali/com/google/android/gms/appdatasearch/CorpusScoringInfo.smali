.class public Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/y;


# instance fields
.field final btV:I

.field public final btX:Lcom/google/android/gms/appdatasearch/CorpusId;

.field public final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/y;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/appdatasearch/CorpusId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->btX:Lcom/google/android/gms/appdatasearch/CorpusId;

    iput p3, p0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->weight:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/y;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/y;->a(Lcom/google/android/gms/appdatasearch/CorpusScoringInfo;Landroid/os/Parcel;I)V

    return-void
.end method
