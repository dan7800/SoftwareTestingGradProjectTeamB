.class public final Lcom/google/android/gms/appdatasearch/m;
.super Ljava/lang/Object;


# instance fields
.field final synthetic bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

.field private final bwl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/m;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/appdatasearch/m;->bwl:I

    return-void
.end method


# virtual methods
.method public final Js()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/m;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget v1, p0, Lcom/google/android/gms/appdatasearch/m;->bwl:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->ep(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/m;->bwA:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget v1, p0, Lcom/google/android/gms/appdatasearch/m;->bwl:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->eo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
