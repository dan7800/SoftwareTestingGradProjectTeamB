.class public Lcom/google/android/gms/appdatasearch/QuerySpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/S;


# instance fields
.field final btV:I

.field public final buH:I

.field public final buI:I

.field public final buJ:I

.field public final bvf:Z

.field public final bvg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bvh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Section;",
            ">;"
        }
    .end annotation
.end field

.field public final bvi:Z

.field public final bvj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/S;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/S;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/S;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;Ljava/util/List;ZIIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appdatasearch/Section;",
            ">;ZIIZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->btV:I

    iput-boolean p2, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->bvf:Z

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->bvg:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->bvh:Ljava/util/List;

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->bvi:Z

    iput p6, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->buH:I

    iput p7, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->buI:I

    iput-boolean p8, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->bvj:Z

    iput p9, p0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->buJ:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/S;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/QuerySpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/S;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/S;->a(Lcom/google/android/gms/appdatasearch/QuerySpecification;Landroid/os/Parcel;)V

    return-void
.end method
