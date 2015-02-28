.class public Landroid/support/v7/internal/widget/z;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final Al:[I


# instance fields
.field final Am:Landroid/graphics/Rect;

.field private An:Ljava/lang/reflect/Field;

.field private Ao:Landroid/support/v7/internal/widget/A;

.field yA:I

.field yB:I

.field yC:I

.field yz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/z;->Al:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/z;->Am:Landroid/graphics/Rect;

    .line 47
    iput v1, p0, Landroid/support/v7/internal/widget/z;->yz:I

    .line 48
    iput v1, p0, Landroid/support/v7/internal/widget/z;->yA:I

    .line 49
    iput v1, p0, Landroid/support/v7/internal/widget/z;->yB:I

    .line 50
    iput v1, p0, Landroid/support/v7/internal/widget/z;->yC:I

    .line 68
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/z;->An:Ljava/lang/reflect/Field;

    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->An:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/view/View;FF)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eq p1, v9, :cond_4

    move v3, v0

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/z;->Am:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/support/v7/internal/widget/z;->yz:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/internal/widget/z;->yA:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/support/v7/internal/widget/z;->yB:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/support/v7/internal/widget/z;->yC:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/z;->An:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eq v5, v2, :cond_1

    iget-object v5, p0, Landroid/support/v7/internal/widget/z;->An:Ljava/lang/reflect/Field;

    if-nez v2, :cond_5

    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eq p1, v9, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/support/v7/internal/widget/z;->Am:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    :goto_3
    invoke-virtual {v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v4, v3, v2}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 171
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    if-eq p1, v9, :cond_3

    .line 173
    invoke-static {v0, p3, p4}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 175
    :cond_3
    return-void

    :cond_4
    move v3, v1

    .line 169
    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->Am:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/z;->Am:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 91
    iget-object v1, p0, Landroid/support/v7/internal/widget/z;->Ao:Landroid/support/v7/internal/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/A;->setEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->eP()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 93
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected eP()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected final eQ()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->Ao:Landroid/support/v7/internal/widget/A;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/A;->setEnabled(Z)V

    .line 326
    return-void
.end method

.method public final n(II)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getListPaddingTop()I

    move-result v2

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getListPaddingBottom()I

    move-result v3

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getListPaddingLeft()I

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getListPaddingRight()I

    .line 256
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getDividerHeight()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/z;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 261
    if-nez v8, :cond_1

    .line 262
    add-int p2, v2, v3

    .line 321
    :cond_0
    :goto_0
    return p2

    .line 266
    :cond_1
    add-int/2addr v3, v2

    .line 267
    if-lez v0, :cond_2

    if-eqz v4, :cond_2

    .line 276
    :goto_1
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v7, v1

    move v4, v1

    move-object v6, v5

    .line 277
    :goto_2
    if-ge v7, v9, :cond_4

    .line 278
    invoke-interface {v8, v7}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 279
    if-eq v2, v4, :cond_5

    move v4, v2

    move-object v2, v5

    .line 283
    :goto_3
    invoke-interface {v8, v7, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 287
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_3

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v10, :cond_3

    .line 289
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 294
    :goto_4
    invoke-virtual {v6, p1, v2}, Landroid/view/View;->measure(II)V

    .line 296
    if-lez v7, :cond_6

    .line 298
    add-int v2, v3, v0

    .line 301
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 303
    if-ge v3, p2, :cond_0

    .line 314
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 267
    goto :goto_1

    .line 292
    :cond_3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_4
    move p2, v3

    .line 321
    goto :goto_0

    :cond_5
    move-object v2, v6

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_5
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/support/v7/internal/widget/A;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/A;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/z;->Ao:Landroid/support/v7/internal/widget/A;

    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->Ao:Landroid/support/v7/internal/widget/A;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 82
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/internal/widget/z;->yz:I

    .line 83
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/internal/widget/z;->yA:I

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/internal/widget/z;->yB:I

    .line 85
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/v7/internal/widget/z;->yC:I

    .line 86
    return-void
.end method
