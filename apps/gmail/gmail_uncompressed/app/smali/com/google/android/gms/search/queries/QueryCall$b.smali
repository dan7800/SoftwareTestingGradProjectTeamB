.class public Lcom/google/android/gms/search/queries/QueryCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/queries/g;


# instance fields
.field public Tt:Ljava/lang/String;

.field public bZQ:I

.field final btV:I

.field public ckA:[Ljava/lang/String;

.field public cku:Lcom/google/android/gms/appdatasearch/QuerySpecification;

.field public packageName:Ljava/lang/String;

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/queries/g;

    invoke-direct {v0}, Lcom/google/android/gms/search/queries/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/queries/QueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/google/android/gms/appdatasearch/QuerySpecification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->Tt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->ckA:[Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->start:I

    iput p6, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->bZQ:I

    iput-object p7, p0, Lcom/google/android/gms/search/queries/QueryCall$b;->cku:Lcom/google/android/gms/appdatasearch/QuerySpecification;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/QueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/g;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/QueryCall$b;->CREATOR:Lcom/google/android/gms/search/queries/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/queries/g;->a(Lcom/google/android/gms/search/queries/QueryCall$b;Landroid/os/Parcel;I)V

    return-void
.end method
