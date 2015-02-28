.class public abstract Lcom/android/datetimepicker/date/f;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/datetimepicker/date/d;


# static fields
.field private static HM:Ljava/text/SimpleDateFormat;

.field public static Io:I


# instance fields
.field private IA:Lcom/android/datetimepicker/date/a;

.field private IB:Z

.field protected IC:Lcom/android/datetimepicker/date/h;

.field protected Ip:I

.field protected Iq:Z

.field protected Ir:I

.field protected Is:F

.field protected It:Lcom/android/datetimepicker/date/j;

.field protected Iu:Lcom/android/datetimepicker/date/i;

.field protected Iv:Lcom/android/datetimepicker/date/j;

.field protected Iw:I

.field protected Ix:J

.field protected Iy:I

.field protected Iz:I

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/android/datetimepicker/date/f;->Io:I

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/f;->HM:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Ip:I

    .line 63
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/f;->Iq:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Ir:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Is:F

    .line 74
    new-instance v0, Lcom/android/datetimepicker/date/j;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/j;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/f;->It:Lcom/android/datetimepicker/date/j;

    .line 77
    new-instance v0, Lcom/android/datetimepicker/date/j;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/j;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/f;->Iv:Lcom/android/datetimepicker/date/j;

    .line 88
    iput v1, p0, Lcom/android/datetimepicker/date/f;->Iy:I

    .line 90
    iput v1, p0, Lcom/android/datetimepicker/date/f;->Iz:I

    .line 283
    new-instance v0, Lcom/android/datetimepicker/date/h;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/date/h;-><init>(Lcom/android/datetimepicker/date/f;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/f;->IC:Lcom/android/datetimepicker/date/h;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/f;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->setDrawSelectorOnTop(Z)V

    iput-object p1, p0, Lcom/android/datetimepicker/date/f;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->setCacheColorHint(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->setItemsCanFocus(Z)V

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->setFastScrollEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/date/f;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->setFadingEdgeLength(I)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/f;->Is:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->setFriction(F)V

    .line 103
    iput-object p2, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/date/a;->a(Lcom/android/datetimepicker/date/d;)V

    invoke-direct {p0}, Lcom/android/datetimepicker/date/f;->go()V

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->gm()V

    .line 104
    return-void
.end method

.method private a(Lcom/android/datetimepicker/date/j;ZZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 181
    if-eqz p3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->It:Lcom/android/datetimepicker/date/j;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/j;->c(Lcom/android/datetimepicker/date/j;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iv:Lcom/android/datetimepicker/date/j;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/j;->c(Lcom/android/datetimepicker/date/j;)V

    .line 186
    iget v0, p1, Lcom/android/datetimepicker/date/j;->year:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->gg()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xc

    iget v2, p1, Lcom/android/datetimepicker/date/j;->month:I

    add-int v3, v0, v2

    move v0, v1

    .line 191
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 199
    const-string v5, "MonthFragment"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    const-string v5, "MonthFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "child at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has top "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    if-ltz v4, :cond_7

    .line 206
    :cond_2
    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->getPositionForView(Landroid/view/View;)I

    .line 209
    :cond_3
    if-eqz p3, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iu:Lcom/android/datetimepicker/date/i;

    iget-object v2, p0, Lcom/android/datetimepicker/date/f;->It:Lcom/android/datetimepicker/date/j;

    invoke-virtual {v0, v2}, Lcom/android/datetimepicker/date/i;->a(Lcom/android/datetimepicker/date/j;)V

    .line 216
    :cond_4
    const-string v0, "MonthFragment"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    const-string v0, "MonthFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GoTo position "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iv:Lcom/android/datetimepicker/date/j;

    iget v0, v0, Lcom/android/datetimepicker/date/j;->month:I

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Iw:I

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->invalidateViews()V

    .line 223
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Iy:I

    .line 224
    if-eqz p2, :cond_6

    .line 225
    sget v0, Lcom/android/datetimepicker/date/f;->Io:I

    const/16 v1, 0xfa

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/datetimepicker/date/f;->smoothScrollToPositionFromTop(III)V

    .line 227
    const/4 v1, 0x1

    .line 231
    :goto_1
    return v1

    .line 229
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/f;->aG(I)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method private go()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iu:Lcom/android/datetimepicker/date/i;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/f;->a(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)Lcom/android/datetimepicker/date/i;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/f;->Iu:Lcom/android/datetimepicker/date/i;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iu:Lcom/android/datetimepicker/date/i;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->Iu:Lcom/android/datetimepicker/date/i;

    iget-object v1, p0, Lcom/android/datetimepicker/date/f;->It:Lcom/android/datetimepicker/date/j;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/i;->a(Lcom/android/datetimepicker/date/j;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)Lcom/android/datetimepicker/date/i;
.end method

.method public final aG(I)V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->clearFocus()V

    .line 239
    new-instance v0, Lcom/android/datetimepicker/date/g;

    invoke-direct {v0, p0, p1}, Lcom/android/datetimepicker/date/g;-><init>(Lcom/android/datetimepicker/date/f;I)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/f;->post(Ljava/lang/Runnable;)Z

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/android/datetimepicker/date/f;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 247
    return-void
.end method

.method public final gm()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/a;->gf()Lcom/android/datetimepicker/date/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/datetimepicker/date/f;->a(Lcom/android/datetimepicker/date/j;ZZ)Z

    .line 371
    return-void
.end method

.method public final gn()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/datetimepicker/date/f;->go()V

    .line 124
    return-void
.end method

.method public final gp()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getFirstVisiblePosition()I

    move-result v6

    .line 346
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getHeight()I

    move-result v7

    move v2, v4

    move v1, v4

    move v0, v4

    move v3, v4

    .line 352
    :goto_0
    if-ge v2, v7, :cond_0

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 358
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v8, v2

    .line 359
    if-le v2, v3, :cond_1

    move v0, v1

    .line 363
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v5

    .line 364
    goto :goto_0

    .line 365
    :cond_0
    add-int/2addr v0, v6

    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/android/datetimepicker/date/k;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/datetimepicker/date/k;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/k;->gt()Lcom/android/datetimepicker/date/j;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    check-cast v1, Lcom/android/datetimepicker/date/k;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/k;->gu()V

    :cond_0
    move-object v1, v0

    .line 426
    :goto_1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 427
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/f;->IB:Z

    if-eqz v0, :cond_4

    .line 428
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/f;->IB:Z

    .line 432
    :cond_1
    return-void

    .line 425
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 430
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getChildCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/datetimepicker/date/k;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/android/datetimepicker/date/k;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/k;->d(Lcom/android/datetimepicker/date/j;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 437
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 438
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 458
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 459
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 460
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/k;

    .line 257
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/k;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/k;->getBottom()I

    move-result v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    .line 263
    iput-wide v0, p0, Lcom/android/datetimepicker/date/f;->Ix:J

    .line 264
    iget v0, p0, Lcom/android/datetimepicker/date/f;->Iz:I

    iput v0, p0, Lcom/android/datetimepicker/date/f;->Iy:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/datetimepicker/date/f;->IC:Lcom/android/datetimepicker/date/h;

    invoke-virtual {v0, p2}, Lcom/android/datetimepicker/date/h;->aH(I)V

    .line 281
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 468
    if-eq p1, v5, :cond_0

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 505
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/f;->getFirstVisiblePosition()I

    move-result v1

    .line 475
    rem-int/lit8 v2, v1, 0xc

    .line 476
    div-int/lit8 v1, v1, 0xc

    iget-object v3, p0, Lcom/android/datetimepicker/date/f;->IA:Lcom/android/datetimepicker/date/a;

    invoke-interface {v3}, Lcom/android/datetimepicker/date/a;->gg()I

    move-result v3

    add-int/2addr v1, v3

    .line 477
    new-instance v3, Lcom/android/datetimepicker/date/j;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/datetimepicker/date/j;-><init>(III)V

    .line 480
    if-ne p1, v5, :cond_2

    .line 481
    iget v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    .line 482
    iget v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 483
    iput v6, v3, Lcom/android/datetimepicker/date/j;->month:I

    .line 484
    iget v1, v3, Lcom/android/datetimepicker/date/j;->year:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/datetimepicker/date/j;->year:I

    .line 502
    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget v2, v3, Lcom/android/datetimepicker/date/j;->year:I

    iget v4, v3, Lcom/android/datetimepicker/date/j;->month:I

    iget v5, v3, Lcom/android/datetimepicker/date/j;->IH:I

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Calendar;->set(III)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v7, v7, v4}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/datetimepicker/date/f;->HM:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 503
    invoke-direct {p0, v3, v0, v6}, Lcom/android/datetimepicker/date/f;->a(Lcom/android/datetimepicker/date/j;ZZ)Z

    .line 504
    iput-boolean v0, p0, Lcom/android/datetimepicker/date/f;->IB:Z

    goto :goto_0

    .line 486
    :cond_2
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_1

    .line 487
    invoke-virtual {p0, v6}, Lcom/android/datetimepicker/date/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v1, v4, :cond_1

    .line 493
    iget v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    .line 494
    iget v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    if-ne v1, v4, :cond_1

    .line 495
    const/16 v1, 0xb

    iput v1, v3, Lcom/android/datetimepicker/date/j;->month:I

    .line 496
    iget v1, v3, Lcom/android/datetimepicker/date/j;->year:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lcom/android/datetimepicker/date/j;->year:I

    goto :goto_1
.end method
