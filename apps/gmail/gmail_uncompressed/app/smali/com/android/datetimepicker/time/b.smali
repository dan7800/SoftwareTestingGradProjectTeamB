.class public final Lcom/android/datetimepicker/time/b;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private JC:I

.field private JP:F

.field private JQ:F

.field private JT:Z

.field private JU:Z

.field private Kb:Z

.field private Kc:I

.field private Kd:I

.field private Ke:I

.field private Kf:I

.field private final mb:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/b;->JC:I

    .line 52
    sget v1, Lcom/android/datetimepicker/d;->Hl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/b;->Kc:I

    .line 53
    iget-object v0, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/b;->JT:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/b;->getWidth()I

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/b;->JT:Z

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/b;->JU:Z

    if-nez v0, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/b;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/b;->Kd:I

    .line 100
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/b;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    .line 101
    iget v0, p0, Lcom/android/datetimepicker/time/b;->Kd:I

    iget v1, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/b;->JP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/datetimepicker/time/b;->Kf:I

    .line 103
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/b;->Kb:Z

    if-nez v0, :cond_2

    .line 107
    iget v0, p0, Lcom/android/datetimepicker/time/b;->Kf:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/b;->JQ:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 108
    iget v1, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    .line 111
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/b;->JU:Z

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/b;->JC:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v0, p0, Lcom/android/datetimepicker/time/b;->Kd:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/datetimepicker/time/b;->Kf:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/b;->Kc:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget v0, p0, Lcom/android/datetimepicker/time/b;->Kd:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/b;->Ke:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/android/datetimepicker/time/b;->mb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
