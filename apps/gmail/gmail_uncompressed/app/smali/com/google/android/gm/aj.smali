.class final Lcom/google/android/gm/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aYN:Lcom/google/android/gm/ah;

.field final synthetic aYO:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ah;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/gm/aj;->aYN:Lcom/google/android/gm/ah;

    iput-object p2, p0, Lcom/google/android/gm/aj;->aYO:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/android/gm/aj;->aYO:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 107
    iget-object v4, p0, Lcom/google/android/gm/aj;->aYN:Lcom/google/android/gm/ah;

    invoke-virtual {v4, v3}, Lcom/google/android/gm/ah;->dB(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method
