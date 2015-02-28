.class public final Lcom/google/android/gm/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aKh:Z

.field public final aYm:Lcom/google/android/gm/provider/T;

.field final synthetic aYv:Lcom/google/android/gm/U;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/U;Lcom/google/android/gm/provider/T;Z)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/gm/V;->aYv:Lcom/google/android/gm/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    .line 130
    iput-boolean p3, p0, Lcom/google/android/gm/V;->aKh:Z

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/U;Lcom/google/android/gm/provider/T;ZB)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/V;-><init>(Lcom/google/android/gm/U;Lcom/google/android/gm/provider/T;Z)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/gm/V;->aKh:Z

    if-eqz v0, :cond_0

    const-string v0, "Add "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/V;->aYm:Lcom/google/android/gm/provider/T;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Remove "

    goto :goto_0
.end method
