.class public final Lcom/google/android/gms/appdatasearch/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/appdatasearch/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

.field protected bwn:I

.field private final bwo:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/appdatasearch/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SearchResults;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/j;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/appdatasearch/SearchResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/j;->bwo:[Ljava/util/Map;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/appdatasearch/SearchResults;->bwh:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Map;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/appdatasearch/j;)[Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/j;->bwo:[Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/j;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/SearchResults;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/appdatasearch/j;->bwn:I

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/j;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->Jr()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/j;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more results."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/appdatasearch/i;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/j;->bwm:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget v2, p0, Lcom/google/android/gms/appdatasearch/j;->bwn:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/appdatasearch/i;-><init>(Lcom/google/android/gms/appdatasearch/SearchResults;ILcom/google/android/gms/appdatasearch/j;)V

    iget v1, p0, Lcom/google/android/gms/appdatasearch/j;->bwn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/appdatasearch/j;->bwn:I

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
