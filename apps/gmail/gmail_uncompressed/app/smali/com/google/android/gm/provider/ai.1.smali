.class public final Lcom/google/android/gm/provider/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aLM:Ljava/lang/String;

.field private final aXZ:Ljava/lang/String;

.field private final mu:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/google/android/gm/provider/ai;->aXZ:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/google/android/gm/provider/ai;->aLM:Ljava/lang/String;

    .line 237
    const/high16 v0, -0x1000000

    or-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gm/provider/ai;->mu:I

    .line 238
    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/android/gm/provider/ai;->mu:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gm/provider/ai;->aXZ:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gm/provider/ai;->aLM:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/gm/provider/ai;->aXZ:Ljava/lang/String;

    return-object v0
.end method
