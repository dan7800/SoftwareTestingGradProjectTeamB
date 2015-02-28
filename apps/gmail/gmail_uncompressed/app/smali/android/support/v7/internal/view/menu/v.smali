.class public Landroid/support/v7/internal/view/menu/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/x;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final xT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final ve:Landroid/support/v7/internal/view/menu/i;

.field private final wC:Landroid/view/LayoutInflater;

.field wV:Z

.field private final xU:Landroid/support/v7/internal/view/menu/w;

.field private final xV:Z

.field private final xW:I

.field private final xX:I

.field private final xY:I

.field private xZ:Landroid/view/View;

.field private xz:Landroid/support/v7/internal/view/menu/y;

.field private ya:Landroid/support/v7/widget/H;

.field private yb:Landroid/view/ViewTreeObserver;

.field private yc:Landroid/view/ViewGroup;

.field private yd:Z

.field private ye:I

.field private yf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Landroid/support/v7/a/i;->qI:I

    sput v0, Landroid/support/v7/internal/view/menu/v;->xT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 84
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/a/b;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V
    .locals 7

    .prologue
    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZIB)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZIB)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v2, p0, Landroid/support/v7/internal/view/menu/v;->yf:I

    .line 94
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/v;->wC:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/v;->ve:Landroid/support/v7/internal/view/menu/i;

    .line 97
    new-instance v0, Landroid/support/v7/internal/view/menu/w;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/v;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/i;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    .line 98
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/v;->xV:Z

    .line 99
    iput p5, p0, Landroid/support/v7/internal/view/menu/v;->xX:I

    .line 100
    iput v2, p0, Landroid/support/v7/internal/view/menu/v;->xY:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/a/e;->pG:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/v;->xW:I

    .line 106
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/v;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/v;->xV:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/v;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->wC:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/v;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ve:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ve:Landroid/support/v7/internal/view/menu/i;

    if-eq p1, v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->dismiss()V

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/y;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    .line 268
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/D;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/D;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    new-instance v3, Landroid/support/v7/internal/view/menu/v;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    iput-object v0, v3, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/D;->size()I

    move-result v4

    move v0, v2

    .line 278
    :goto_0
    if-ge v0, v4, :cond_3

    .line 279
    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/D;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 280
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 285
    :goto_1
    iput-boolean v0, v3, Landroid/support/v7/internal/view/menu/v;->wV:Z

    .line 287
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/v;->er()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xz:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/y;->c(Landroid/support/v7/internal/view/menu/i;)Z

    .line 294
    :cond_0
    :goto_2
    return v1

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 294
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final c(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public final dA()Landroid/support/v7/widget/H;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    return-object v0
.end method

.method public final dE()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->dismiss()V

    .line 168
    :cond_0
    return-void
.end method

.method public final eq()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x800005

    iput v0, p0, Landroid/support/v7/internal/view/menu/v;->yf:I

    .line 122
    return-void
.end method

.method public final er()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Landroid/support/v7/widget/H;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/v;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/internal/view/menu/v;->xX:I

    iget v6, p0, Landroid/support/v7/internal/view/menu/v;->xY:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/support/v7/widget/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/H;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/H;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/H;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->fI()V

    .line 141
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    .line 142
    if-eqz v3, :cond_5

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    move v0, v1

    .line 144
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    .line 145
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/H;->setAnchorView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    iget v3, p0, Landroid/support/v7/internal/view/menu/v;->yf:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/H;->setDropDownGravity(I)V

    .line 152
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/v;->yd:Z

    if-nez v0, :cond_3

    .line 153
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    move v6, v2

    move v3, v2

    move-object v5, v4

    :goto_1
    if-ge v6, v10, :cond_2

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    move v3, v0

    move-object v0, v4

    :goto_2
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/v;->yc:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v11, p0, Landroid/support/v7/internal/view/menu/v;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/v;->yc:Landroid/view/ViewGroup;

    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/v;->yc:Landroid/view/ViewGroup;

    invoke-interface {v7, v6, v0, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v11, p0, Landroid/support/v7/internal/view/menu/v;->xW:I

    if-lt v0, v11, :cond_6

    iget v2, p0, Landroid/support/v7/internal/view/menu/v;->xW:I

    :cond_2
    iput v2, p0, Landroid/support/v7/internal/view/menu/v;->ye:I

    .line 154
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/v;->yd:Z

    .line 157
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    iget v2, p0, Landroid/support/v7/internal/view/menu/v;->ye:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/H;->setContentWidth(I)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->fJ()V

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->show()V

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    :goto_3
    return v1

    :cond_4
    move v0, v2

    .line 143
    goto :goto_0

    :cond_5
    move v1, v2

    .line 149
    goto :goto_3

    .line 153
    :cond_6
    if-le v0, v2, :cond_8

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ve:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/v;->yb:Landroid/view/ViewTreeObserver;

    .line 178
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->dismiss()V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->ya:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    .line 187
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/w;->a(Landroid/support/v7/internal/view/menu/w;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/w;->ae(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/i;->c(Landroid/view/MenuItem;I)Z

    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->dismiss()V

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r(Z)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/v;->yd:Z

    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->xU:Landroid/support/v7/internal/view/menu/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/w;->notifyDataSetChanged()V

    .line 263
    :cond_0
    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->xZ:Landroid/view/View;

    .line 114
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/v;->er()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public final z(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/v;->wV:Z

    .line 118
    return-void
.end method
