.class public final Lcom/google/android/gms/appdatasearch/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/appdatasearch/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

.field private bwn:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/n;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/appdatasearch/n;->bwn:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/appdatasearch/n;->bwn:I

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/n;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget-object v1, v1, Lcom/google/android/gms/appdatasearch/SuggestionResults;->bwy:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/appdatasearch/m;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/n;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget v2, p0, Lcom/google/android/gms/appdatasearch/n;->bwn:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/appdatasearch/n;->bwn:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/appdatasearch/m;-><init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;I)V

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
