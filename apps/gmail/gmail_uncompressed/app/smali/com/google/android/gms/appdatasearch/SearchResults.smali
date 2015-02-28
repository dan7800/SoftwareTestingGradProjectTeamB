.class public Lcom/google/android/gms/appdatasearch/SearchResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/appdatasearch/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/s;


# instance fields
.field final btV:I

.field final bwa:[I

.field final bwb:[B

.field final bwc:[Landroid/os/Bundle;

.field final bwd:[Landroid/os/Bundle;

.field final bwe:[Landroid/os/Bundle;

.field final bwf:I

.field final bwg:[I

.field final bwh:[Ljava/lang/String;

.field final bwi:[B

.field final bwj:[D

.field final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/s;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[I[B[Landroid/os/Bundle;[Landroid/os/Bundle;[Landroid/os/Bundle;I[I[Ljava/lang/String;[B[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwa:[I

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwb:[B

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwc:[Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwd:[Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwe:[Landroid/os/Bundle;

    iput p8, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwf:I

    iput-object p9, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwg:[I

    iput-object p10, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwh:[Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwi:[B

    iput-object p12, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwj:[D

    return-void
.end method


# virtual methods
.method public final Jq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final Jr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->bwf:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    const/4 v0, 0x0

    return v0
.end method

.method public final hasError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/j;-><init>(Lcom/google/android/gms/appdatasearch/SearchResults;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/SearchResults;->CREATOR:Lcom/google/android/gms/appdatasearch/s;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/s;->a(Lcom/google/android/gms/appdatasearch/SearchResults;Landroid/os/Parcel;I)V

    return-void
.end method
