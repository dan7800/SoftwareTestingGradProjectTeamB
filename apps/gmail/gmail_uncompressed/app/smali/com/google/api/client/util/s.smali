.class public final Lcom/google/api/client/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field czi:I

.field czj:D

.field czk:D

.field czl:I

.field czn:I

.field czo:Lcom/google/api/client/util/C;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/google/api/client/util/s;->czi:I

    .line 315
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/api/client/util/s;->czj:D

    .line 318
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/google/api/client/util/s;->czk:D

    .line 324
    const v0, 0xea60

    iput v0, p0, Lcom/google/api/client/util/s;->czl:I

    .line 331
    const v0, 0xdbba0

    iput v0, p0, Lcom/google/api/client/util/s;->czn:I

    .line 334
    sget-object v0, Lcom/google/api/client/util/C;->czE:Lcom/google/api/client/util/C;

    iput-object v0, p0, Lcom/google/api/client/util/s;->czo:Lcom/google/api/client/util/C;

    .line 337
    return-void
.end method


# virtual methods
.method public final Yu()Lcom/google/api/client/util/r;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/google/api/client/util/r;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/r;-><init>(Lcom/google/api/client/util/s;)V

    return-object v0
.end method
