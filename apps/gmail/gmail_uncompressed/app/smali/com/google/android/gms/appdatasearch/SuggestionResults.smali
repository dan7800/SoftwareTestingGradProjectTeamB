.class public Lcom/google/android/gms/appdatasearch/SuggestionResults;
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
        "Lcom/google/android/gms/appdatasearch/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/w;


# instance fields
.field final btV:I

.field final bwy:[Ljava/lang/String;

.field final bwz:[Ljava/lang/String;

.field final mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/w;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->btV:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwy:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwz:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Jq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    const/4 v0, 0x0

    return v0
.end method

.method public final eo(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwy:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final ep(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwz:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwy:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwz:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final hasError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/appdatasearch/m;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/appdatasearch/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/n;-><init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/SuggestionResults;->CREATOR:Lcom/google/android/gms/appdatasearch/w;

    invoke-static {p0, p1}, Lcom/google/android/gms/appdatasearch/w;->a(Lcom/google/android/gms/appdatasearch/SuggestionResults;Landroid/os/Parcel;)V

    return-void
.end method
