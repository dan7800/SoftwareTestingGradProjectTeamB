.class public Lcom/google/android/gms/search/queries/GlobalQueryCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/queries/e;


# instance fields
.field public Tt:Ljava/lang/String;

.field public bZQ:I

.field final btV:I

.field public ckz:Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/queries/e;

    invoke-direct {v0}, Lcom/google/android/gms/search/queries/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IILcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->Tt:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->start:I

    iput p4, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->bZQ:I

    iput-object p5, p0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->ckz:Lcom/google/android/gms/appdatasearch/GlobalSearchQuerySpecification;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/e;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GlobalQueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/queries/e;->a(Lcom/google/android/gms/search/queries/GlobalQueryCall$b;Landroid/os/Parcel;I)V

    return-void
.end method
