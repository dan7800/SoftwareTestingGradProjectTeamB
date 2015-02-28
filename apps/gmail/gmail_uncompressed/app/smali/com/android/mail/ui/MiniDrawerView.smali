.class public Lcom/android/mail/ui/MiniDrawerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aMd:Lcom/android/mail/ui/bB;

.field private aMe:Landroid/view/View;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/MiniDrawerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->wC:Landroid/view/LayoutInflater;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/MiniDrawerView;)Lcom/android/mail/ui/bB;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    return-object v0
.end method

.method private df(I)V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v1, p1, v1

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v1, v0

    .line 250
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 251
    iget-object v2, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 254
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    const v0, 0x7f0d01b2

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    .line 65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getPaddingTop()I

    move-result v1

    sub-int v4, v0, v1

    .line 196
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getChildCount()I

    move-result v5

    move v2, v3

    move v1, v3

    .line 197
    :goto_1
    if-ge v2, v5, :cond_1

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 199
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_6

    .line 200
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    .line 197
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 206
    :cond_1
    if-gt v1, v4, :cond_2

    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 213
    :cond_2
    if-gt v1, v4, :cond_3

    .line 215
    sub-int v0, v4, v1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->df(I)V

    .line 216
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "The ellipsis was the last item in the minidrawer and hiding it didn\'t help fit all the views"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 235
    if-gt v0, v4, :cond_5

    .line 237
    sub-int v0, v4, v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->df(I)V

    .line 238
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/16 :goto_0

    .line 242
    :cond_5
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "Hid two children in the minidrawer and still couldn\'t fit all the views"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 181
    :goto_0
    if-ge v0, v2, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 186
    return-void
.end method

.method public final refresh()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zq()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 105
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->removeView(Landroid/view/View;)V

    .line 110
    :cond_2
    invoke-interface {v4, v3, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 113
    invoke-virtual {p0, v0, v3}, Lcom/android/mail/ui/MiniDrawerView;->addView(Landroid/view/View;I)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/android/mail/ui/MiniDrawerView;->getChildCount()I

    move-result v0

    sub-int v5, v0, v1

    .line 118
    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    move v0, v3

    .line 119
    :goto_0
    if-ge v0, v5, :cond_4

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 121
    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p0, v7}, Lcom/android/mail/ui/MiniDrawerView;->removeView(Landroid/view/View;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_4
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v2

    .line 126
    :goto_1
    if-ge v1, v5, :cond_5

    .line 127
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    invoke-interface {v4, v1, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->addView(Landroid/view/View;)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 134
    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MiniDrawerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/MiniDrawerView;->aMe:Landroid/view/View;

    if-eq v0, v1, :cond_6

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MiniDrawerView;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zo()Lcom/android/mail/c/b;

    move-result-object v5

    .line 139
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/mail/c/b;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    move v2, v3

    .line 142
    :goto_3
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v5, v4}, Lcom/android/mail/c/b;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v5}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 144
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    iget-object v1, p0, Lcom/android/mail/ui/MiniDrawerView;->wC:Landroid/view/LayoutInflater;

    const v6, 0x7f040097

    invoke-virtual {v1, v6, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 147
    const v1, 0x7f0d01d2

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 148
    new-instance v7, Lcom/android/mail/ui/cA;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/mail/ui/cA;-><init>(Lcom/android/mail/ui/MiniDrawerView;Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v7, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/bB;->o(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setActivated(Z)V

    .line 151
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/android/mail/ui/MiniDrawerView;->addView(Landroid/view/View;I)V

    .line 152
    add-int/lit8 v0, v2, 0x1

    :goto_4
    move v2, v0

    move v0, v4

    .line 154
    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x82

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final t(Lcom/android/mail/ui/bB;)V
    .locals 3

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    .line 85
    iget-object v0, p0, Lcom/android/mail/ui/MiniDrawerView;->aMd:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zq()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/android/mail/ui/cB;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mail/ui/cB;-><init>(Lcom/android/mail/ui/MiniDrawerView;B)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    return-void
.end method
