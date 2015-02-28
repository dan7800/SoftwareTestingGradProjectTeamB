.class final Lcom/google/android/gm/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final aYl:Ljava/lang/String;

.field final aYm:Lcom/google/android/gm/provider/T;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/T;)V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/android/gm/O;->aYm:Lcom/google/android/gm/provider/T;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/O;->aYl:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/android/gm/O;->aYl:Ljava/lang/String;

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/O;->aYm:Lcom/google/android/gm/provider/T;

    .line 336
    return-void
.end method


# virtual methods
.method public final CS()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/gm/O;->aYl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final CT()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/android/gm/O;->CS()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
