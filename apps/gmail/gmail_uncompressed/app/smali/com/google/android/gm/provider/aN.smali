.class final Lcom/google/android/gm/provider/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/br;


# instance fields
.field private bkp:I

.field private bkq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8197
    iput v0, p0, Lcom/google/android/gm/provider/aN;->bkp:I

    .line 8198
    iput v0, p0, Lcom/google/android/gm/provider/aN;->bkq:I

    .line 8199
    return-void
.end method


# virtual methods
.method public final GV()V
    .locals 1

    .prologue
    .line 8203
    iget v0, p0, Lcom/google/android/gm/provider/aN;->bkp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/aN;->bkp:I

    .line 8204
    return-void
.end method

.method public final GW()V
    .locals 1

    .prologue
    .line 8208
    iget v0, p0, Lcom/google/android/gm/provider/aN;->bkq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/aN;->bkq:I

    .line 8209
    return-void
.end method

.method public final GX()Z
    .locals 1

    .prologue
    .line 8212
    iget v0, p0, Lcom/google/android/gm/provider/aN;->bkp:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/aN;->bkq:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final GY()I
    .locals 1

    .prologue
    .line 8216
    iget v0, p0, Lcom/google/android/gm/provider/aN;->bkq:I

    return v0
.end method
