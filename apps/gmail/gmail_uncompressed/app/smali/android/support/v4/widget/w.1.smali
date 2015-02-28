.class public abstract Landroid/support/v4/widget/w;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# static fields
.field private static final ly:Ljava/lang/String;


# instance fields
.field private final aU:Landroid/view/View;

.field private final lA:Landroid/graphics/Rect;

.field private final lB:Landroid/graphics/Rect;

.field private final lC:[I

.field private final lD:Landroid/view/accessibility/AccessibilityManager;

.field private lE:Landroid/support/v4/widget/x;

.field private lF:I

.field private lG:I

.field private final lz:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/w;->ly:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 89
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lz:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lB:Landroid/graphics/Rect;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/w;->lC:[I

    .line 79
    iput v1, p0, Landroid/support/v4/widget/w;->lF:I

    .line 82
    iput v1, p0, Landroid/support/v4/widget/w;->lG:I

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    .line 97
    return-void
.end method

.method private R(I)V
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Landroid/support/v4/widget/w;->lG:I

    if-ne v0, p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/w;->lG:I

    .line 235
    iput p1, p0, Landroid/support/v4/widget/w;->lG:I

    .line 239
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/w;->h(II)Z

    .line 240
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/w;->h(II)Z

    goto :goto_0
.end method

.method private S(I)Z
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/support/v4/widget/w;->lF:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/w;I)Landroid/support/v4/view/a/i;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Landroid/support/v4/view/a/i;->bs()Landroid/support/v4/view/a/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/i;->setEnabled(Z)V

    sget-object v1, Landroid/support/v4/widget/w;->ly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/w;->a(ILandroid/support/v4/view/a/i;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/i;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/view/a/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/a/i;->D(Landroid/view/View;)Landroid/support/v4/view/a/i;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ad;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/w;->b(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/view/a/i;->addChild(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/a/i;->getActions()I

    move-result v1

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/i;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->setParent(Landroid/view/View;)V

    iget v1, p0, Landroid/support/v4/widget/w;->lF:I

    if-ne v1, p1, :cond_6

    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/i;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->addAction(I)V

    :goto_2
    iget-object v1, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/w;->a(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/i;->setVisibleToUser(Z)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_5
    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/w;->lC:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->lC:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/support/v4/widget/w;->lC:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/w;->lz:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/w;->lA:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v4/widget/w;->lz:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/support/v4/widget/w;->lz:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Landroid/support/v4/view/a/i;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/i;->addAction(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 514
    :goto_0
    return v0

    .line 489
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 490
    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 495
    :goto_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_5

    .line 496
    check-cast v0, Landroid/view/View;

    .line 497
    invoke-static {v0}, Landroid/support/v4/view/ad;->k(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 498
    goto :goto_0

    .line 500
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 504
    :cond_5
    if-nez v0, :cond_6

    move v0, v1

    .line 505
    goto :goto_0

    .line 509
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/w;->lB:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 510
    goto :goto_0

    .line 514
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/w;->lB:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/w;IILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    packed-switch p1, :pswitch_data_0

    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/w;->i(II)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-static {v0, p2, p3}, Landroid/support/v4/view/ad;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/view/a/e;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->S(I)Z

    move-result v2

    if-nez v2, :cond_2

    iput p1, p0, Landroid/support/v4/widget/w;->lF:I

    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/w;->h(II)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/widget/w;->S(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v4/widget/w;->lF:I

    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/w;->h(II)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected abstract a(ILandroid/support/v4/view/a/i;)V
.end method

.method protected abstract a(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final bW()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, -0x1

    const/16 v1, 0x800

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/w;->h(II)Z

    .line 195
    return-void
.end method

.method public final bX()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/support/v4/widget/w;->lF:I

    return v0
.end method

.method protected abstract d(FF)I
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/view/a/e;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 151
    :cond_1
    :goto_0
    return v0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 151
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/w;->d(FF)I

    move-result v2

    .line 142
    invoke-direct {p0, v2}, Landroid/support/v4/widget/w;->R(I)V

    .line 143
    if-ne v2, v4, :cond_1

    move v0, v1

    goto :goto_0

    .line 145
    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/w;->lF:I

    if-eq v2, v4, :cond_3

    .line 146
    invoke-direct {p0, v4}, Landroid/support/v4/widget/w;->R(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 149
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)Landroid/support/v4/view/a/q;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v4/widget/w;->lE:Landroid/support/v4/widget/x;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/support/v4/widget/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/x;-><init>(Landroid/support/v4/widget/w;B)V

    iput-object v0, p0, Landroid/support/v4/widget/w;->lE:Landroid/support/v4/widget/x;

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/w;->lE:Landroid/support/v4/widget/x;

    return-object v0
.end method

.method public final h(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 173
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/w;->lD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    .line 182
    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v2, Landroid/support/v4/widget/w;->ly:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/w;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ad;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 183
    :goto_1
    iget-object v2, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/aR;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/D;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/w;->aU:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/view/a/D;->setSource(Landroid/view/View;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract i(II)Z
.end method
