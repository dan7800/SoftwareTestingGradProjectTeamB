.class public Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/q;


# instance fields
.field final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/q;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->btV:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;->CREATOR:Lcom/google/android/gms/appdatasearch/q;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/q;->a(Lcom/google/android/gms/appdatasearch/RequestIndexingSpecification;Landroid/os/Parcel;)V

    return-void
.end method