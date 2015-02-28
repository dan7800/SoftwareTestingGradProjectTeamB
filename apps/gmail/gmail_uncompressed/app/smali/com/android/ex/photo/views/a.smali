.class final Lcom/android/ex/photo/views/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Lz:Z

.field private final ajs:Lcom/android/ex/photo/views/PhotoView;

.field private ajt:F

.field private aju:F

.field private ajv:F

.field private ajw:J

.field private ajx:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0

    .prologue
    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lcom/android/ex/photo/views/a;->ajs:Lcom/android/ex/photo/views/PhotoView;

    .line 1433
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/android/ex/photo/views/a;->Lz:Z

    if-eqz v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget v0, p0, Lcom/android/ex/photo/views/a;->aju:F

    iget v1, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1468
    iget-wide v0, p0, Lcom/android/ex/photo/views/a;->ajw:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/android/ex/photo/views/a;->ajw:J

    sub-long v0, v2, v0

    .line 1469
    :goto_1
    iget v4, p0, Lcom/android/ex/photo/views/a;->ajv:F

    long-to-float v0, v0

    mul-float/2addr v0, v4

    .line 1470
    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    iget v4, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    add-float/2addr v1, v0

    iget v4, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    iget v4, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    add-float/2addr v1, v0

    iget v4, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    .line 1474
    :cond_3
    iget v0, p0, Lcom/android/ex/photo/views/a;->ajt:F

    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    sub-float/2addr v0, v1

    .line 1476
    :cond_4
    iget-object v1, p0, Lcom/android/ex/photo/views/a;->ajs:Lcom/android/ex/photo/views/PhotoView;

    invoke-static {v1, v0}, Lcom/android/ex/photo/views/PhotoView;->a(Lcom/android/ex/photo/views/PhotoView;F)V

    .line 1477
    iget v1, p0, Lcom/android/ex/photo/views/a;->aju:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/ex/photo/views/a;->aju:F

    .line 1478
    iget v0, p0, Lcom/android/ex/photo/views/a;->aju:F

    iget v1, p0, Lcom/android/ex/photo/views/a;->ajt:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1479
    invoke-virtual {p0}, Lcom/android/ex/photo/views/a;->stop()V

    .line 1481
    :cond_5
    iput-wide v2, p0, Lcom/android/ex/photo/views/a;->ajw:J

    .line 1484
    :cond_6
    iget-boolean v0, p0, Lcom/android/ex/photo/views/a;->Lz:Z

    if-nez v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/ex/photo/views/a;->ajs:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1468
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/photo/views/a;->ajx:Z

    .line 1457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/a;->Lz:Z

    .line 1458
    return-void
.end method
