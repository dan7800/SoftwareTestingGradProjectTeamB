.class public final Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/d;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/o;


# instance fields
.field private BI:Landroid/view/View;

.field private BJ:Z

.field private BK:Z

.field private BL:I

.field private BM:I

.field private BN:I

.field private BO:Z

.field private BP:Z

.field private BQ:Z

.field private BR:Z

.field private BS:I

.field private final BT:Landroid/util/SparseBooleanArray;

.field private BU:Landroid/view/View;

.field private BV:Landroid/support/v7/widget/f;

.field private BW:Landroid/support/v7/widget/a;

.field private BX:Landroid/support/v7/widget/c;

.field private BY:Landroid/support/v7/widget/b;

.field final BZ:Landroid/support/v7/widget/g;

.field Ca:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/support/v7/a/i;->qB:I

    sget v1, Landroid/support/v7/a/i;->qA:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/d;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BT:Landroid/util/SparseBooleanArray;

    .line 82
    new-instance v0, Landroid/support/v7/widget/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/g;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BZ:Landroid/support/v7/widget/g;

    .line 87
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/f;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BV:Landroid/support/v7/widget/f;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/f;)Landroid/support/v7/widget/f;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BV:Landroid/support/v7/widget/f;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/z;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/a;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/z;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/c;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    return-object v0
.end method


# virtual methods
.method public final G(Z)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BR:Z

    .line 157
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->en()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 176
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_2
    return-object v0

    .line 172
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->f(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 96
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BK:Z

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->di()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    .line 100
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BQ:Z

    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dj()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BL:I

    .line 105
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BO:Z

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->dh()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BN:I

    .line 109
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BL:I

    .line 110
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    if-nez v2, :cond_3

    .line 112
    new-instance v2, Landroid/support/v7/widget/d;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wA:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    .line 113
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 114
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 116
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 121
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BM:I

    .line 123
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BS:I

    .line 126
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    .line 127
    return-void

    .line 118
    :cond_4
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->fb()Z

    .line 515
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    .line 516
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/m;Landroid/support/v7/internal/view/menu/A;)V
    .locals 2

    .prologue
    .line 184
    invoke-interface {p2, p1}, Landroid/support/v7/internal/view/menu/A;->a(Landroid/support/v7/internal/view/menu/m;)V

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 187
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 188
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/k;)V

    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BY:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BY:Landroid/support/v7/widget/b;

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BY:Landroid/support/v7/widget/b;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/c;)V

    .line 194
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->e(Landroid/support/v7/internal/view/menu/i;)V

    .line 550
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/D;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/D;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 278
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 264
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/D;->es()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eq v1, v2, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/D;->es()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/D;

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/D;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/support/v7/internal/view/menu/A;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/support/v7/internal/view/menu/A;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/A;->dv()Landroid/support/v7/internal/view/menu/m;

    move-result-object v1

    if-ne v1, v5, :cond_2

    move-object v0, v2

    .line 268
    :goto_3
    if-nez v0, :cond_5

    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    .line 267
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 270
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    .line 273
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/D;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->Ca:I

    .line 274
    new-instance v1, Landroid/support/v7/widget/a;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/D;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    .line 275
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/a;->setAnchorView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->show()V

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/D;)Z

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final as(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 140
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BL:I

    .line 141
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    .line 142
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BQ:Z

    .line 143
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->ej()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/d;->b(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final cU()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BO:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/h;->qy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BN:I

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->t(Z)V

    .line 137
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->d(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v1

    move-object v0, v1

    .line 162
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->k(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 163
    return-object v1
.end method

.method public final dE()Z
    .locals 21

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->dS()Ljava/util/ArrayList;

    move-result-object v13

    .line 380
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 381
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BN:I

    .line 382
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BM:I

    .line 383
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v2, Landroid/view/ViewGroup;

    .line 386
    const/4 v6, 0x0

    .line 387
    const/4 v5, 0x0

    .line 388
    const/4 v8, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 391
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/m;

    .line 392
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->el()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 393
    add-int/lit8 v6, v6, 0x1

    .line 399
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BR:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 402
    const/4 v3, 0x0

    .line 390
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->ek()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 407
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 409
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 411
    :cond_4
    sub-int v10, v7, v6

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BT:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 414
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 416
    const/4 v4, 0x0

    .line 417
    const/4 v3, 0x0

    .line 418
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    if-eqz v5, :cond_1d

    .line 419
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BS:I

    div-int v3, v9, v3

    .line 420
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BS:I

    rem-int v4, v9, v4

    .line 421
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BS:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 425
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 426
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/m;

    .line 428
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->el()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 429
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 430
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    if-nez v8, :cond_5

    .line 431
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    .line 433
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    if-eqz v8, :cond_7

    .line 434
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 439
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 440
    sub-int v8, v9, v6

    .line 441
    if-nez v7, :cond_1c

    .line 444
    :goto_6
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v7

    .line 445
    if-eqz v7, :cond_6

    .line 446
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 448
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/internal/view/menu/m;->x(Z)V

    move v3, v8

    move v7, v10

    .line 425
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 437
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 449
    :cond_8
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->ek()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 452
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v17

    .line 453
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 454
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 457
    :goto_8
    if-eqz v6, :cond_1b

    .line 458
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/m;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 459
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    if-nez v8, :cond_b

    .line 460
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BU:Landroid/view/View;

    .line 462
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    if-eqz v8, :cond_f

    .line 463
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v19

    .line 465
    sub-int v8, v4, v19

    .line 466
    if-nez v19, :cond_1a

    .line 467
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 472
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 473
    sub-int/2addr v9, v8

    .line 474
    if-nez v7, :cond_c

    move v7, v8

    .line 478
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->BP:Z

    if-eqz v8, :cond_11

    .line 479
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 486
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 487
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 501
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 503
    :cond_d
    invoke-virtual {v3, v11}, Landroid/support/v7/internal/view/menu/m;->x(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 504
    goto :goto_7

    .line 454
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 470
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 479
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 482
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 488
    :cond_13
    if-eqz v18, :cond_19

    .line 490
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 491
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 492
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/m;

    .line 493
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/m;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 495
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/m;->ej()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 496
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/internal/view/menu/m;->x(Z)V

    .line 491
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 506
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/view/menu/m;->x(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 509
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public final eE()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eZ()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    .line 147
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BK:Z

    .line 148
    return-void
.end method

.method public final fa()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BN:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BO:Z

    .line 153
    return-void
.end method

.method public final fb()Z
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->fc()Z

    move-result v1

    or-int/2addr v0, v1

    .line 344
    return v0
.end method

.method public final fc()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BW:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->dismiss()V

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hideOverflowMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BV:Landroid/support/v7/widget/f;

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/v;->dismiss()V

    move v0, v1

    .line 332
    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BV:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BV:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/d;->r(Z)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dU()Ljava/util/ArrayList;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 214
    :goto_0
    if-ge v3, v5, :cond_1

    .line 215
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->ax()Landroid/support/v4/view/n;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p0}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/o;)V

    .line 214
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dV()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 228
    if-ne v3, v1, :cond_8

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 235
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    if-nez v0, :cond_3

    .line 237
    new-instance v0, Landroid/support/v7/widget/d;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wA:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    .line 239
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 240
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    if-eq v0, v1, :cond_5

    .line 241
    if-eqz v0, :cond_4

    .line 242
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 245
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->ff()Landroid/support/v7/widget/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->H(Z)V

    .line 252
    return-void

    .line 222
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 229
    goto :goto_2

    .line 231
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 247
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    if-ne v0, v1, :cond_5

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public final showOverflowMenu()Z
    .locals 4

    .prologue
    .line 301
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BJ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->dV()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->ve:Landroid/support/v7/internal/view/menu/i;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BI:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;)V

    .line 304
    new-instance v1, Landroid/support/v7/widget/c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/c;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/f;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->wG:Landroid/support/v7/internal/view/menu/z;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->BX:Landroid/support/v7/widget/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 310
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/d;->a(Landroid/support/v7/internal/view/menu/D;)Z

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
