.class public final Lcom/android/mail/utils/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aPD:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/mail/utils/B;",
            ">;"
        }
    .end annotation
.end field

.field private final art:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mail/utils/A;->art:F

    .line 47
    return-void
.end method


# virtual methods
.method public final AT()Ljava/lang/Float;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move-object v0, v3

    .line 97
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    iget v1, v0, Lcom/android/mail/utils/B;->pos:I

    .line 84
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    iget-wide v4, v0, Lcom/android/mail/utils/B;->aPE:J

    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    iget-wide v6, v0, Lcom/android/mail/utils/B;->aPE:J

    sub-long/2addr v4, v6

    .line 86
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move-object v0, v3

    .line 88
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    .line 92
    iget v6, v0, Lcom/android/mail/utils/B;->pos:I

    sub-int v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 93
    iget v0, v0, Lcom/android/mail/utils/B;->pos:I

    move v2, v1

    move v1, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    int-to-float v0, v2

    iget v1, p0, Lcom/android/mail/utils/A;->art:F

    div-float/2addr v0, v1

    .line 97
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    long-to-float v1, v4

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public final dr(I)V
    .locals 6

    .prologue
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 53
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    .line 54
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/android/mail/utils/B;->aPE:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0xc8

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/B;

    .line 63
    :goto_0
    iput p1, v0, Lcom/android/mail/utils/B;->pos:I

    .line 64
    iput-wide v2, v0, Lcom/android/mail/utils/B;->aPE:J

    .line 66
    iget-object v1, p0, Lcom/android/mail/utils/A;->aPD:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 61
    :cond_1
    new-instance v0, Lcom/android/mail/utils/B;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mail/utils/B;-><init>(B)V

    goto :goto_0
.end method
