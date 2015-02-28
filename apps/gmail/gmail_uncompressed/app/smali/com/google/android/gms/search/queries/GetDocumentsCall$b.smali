.class public Lcom/google/android/gms/search/queries/GetDocumentsCall$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/queries/a;


# instance fields
.field final btV:I

.field public btW:Ljava/lang/String;

.field public ckt:[Ljava/lang/String;

.field public cku:Lcom/google/android/gms/appdatasearch/QuerySpecification;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/queries/a;

    invoke-direct {v0}, Lcom/google/android/gms/search/queries/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->CREATOR:Lcom/google/android/gms/search/queries/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->btV:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/appdatasearch/QuerySpecification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->btW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->ckt:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->cku:Lcom/google/android/gms/appdatasearch/QuerySpecification;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->CREATOR:Lcom/google/android/gms/search/queries/a;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/queries/GetDocumentsCall$b;->CREATOR:Lcom/google/android/gms/search/queries/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/queries/a;->a(Lcom/google/android/gms/search/queries/GetDocumentsCall$b;Landroid/os/Parcel;I)V

    return-void
.end method
