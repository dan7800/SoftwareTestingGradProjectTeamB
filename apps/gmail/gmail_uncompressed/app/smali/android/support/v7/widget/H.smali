.class public Landroid/support/v7/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Eu:Ljava/lang/reflect/Method;


# instance fields
.field private AM:I

.field private AV:Landroid/widget/ListAdapter;

.field private EA:Z

.field private EB:Z

.field private EC:Z

.field ED:I

.field private EE:Landroid/view/View;

.field private EF:I

.field private EG:Landroid/database/DataSetObserver;

.field private EH:Landroid/view/View;

.field private EI:Landroid/graphics/drawable/Drawable;

.field private EJ:Landroid/widget/AdapterView$OnItemClickListener;

.field private EK:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final EL:Landroid/support/v7/widget/S;

.field private final EM:Landroid/support/v7/widget/R;

.field private final EN:Landroid/support/v7/widget/Q;

.field private final EO:Landroid/support/v7/widget/O;

.field private EP:Ljava/lang/Runnable;

.field private EQ:Z

.field private ER:I

.field private Ev:Landroid/widget/PopupWindow;

.field private Ew:Landroid/support/v7/widget/K;

.field private Ex:I

.field private Ey:I

.field private Ez:I

.field private is:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private yf:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/H;->Eu:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Landroid/support/v7/widget/H;->Ex:I

    .line 93
    iput v0, p0, Landroid/support/v7/widget/H;->AM:I

    .line 98
    iput v2, p0, Landroid/support/v7/widget/H;->yf:I

    .line 100
    iput-boolean v2, p0, Landroid/support/v7/widget/H;->EB:Z

    .line 101
    iput-boolean v2, p0, Landroid/support/v7/widget/H;->EC:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/H;->ED:I

    .line 105
    iput v2, p0, Landroid/support/v7/widget/H;->EF:I

    .line 116
    new-instance v0, Landroid/support/v7/widget/S;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/H;B)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EL:Landroid/support/v7/widget/S;

    .line 117
    new-instance v0, Landroid/support/v7/widget/R;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/R;-><init>(Landroid/support/v7/widget/H;B)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EM:Landroid/support/v7/widget/R;

    .line 118
    new-instance v0, Landroid/support/v7/widget/Q;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/Q;-><init>(Landroid/support/v7/widget/H;B)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EN:Landroid/support/v7/widget/Q;

    .line 119
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/O;-><init>(Landroid/support/v7/widget/H;B)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EO:Landroid/support/v7/widget/O;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/H;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Landroid/support/v7/widget/H;->mContext:Landroid/content/Context;

    .line 230
    sget-object v0, Landroid/support/v7/a/l;->si:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Landroid/support/v7/a/l;->sj:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/H;->Ey:I

    .line 234
    sget v1, Landroid/support/v7/a/l;->sk:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/H;->Ez:I

    .line 236
    iget v1, p0, Landroid/support/v7/widget/H;->Ez:I

    if-eqz v1, :cond_0

    .line 237
    iput-boolean v3, p0, Landroid/support/v7/widget/H;->EA:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Landroid/support/v7/internal/widget/s;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/H;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v0}, Landroid/support/v4/e/q;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/H;->ER:I

    .line 247
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/K;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/H;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/H;)Landroid/support/v7/widget/S;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/H;->EL:Landroid/support/v7/widget/S;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/H;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/H;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final clearListSelection()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    .line 748
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/K;->a(Landroid/support/v7/widget/K;Z)Z

    .line 752
    invoke-virtual {v0}, Landroid/support/v7/widget/K;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/H;->EE:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/H;->EE:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EE:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 673
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v2, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EL:Landroid/support/v7/widget/S;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public final fH()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/H;->EF:I

    .line 282
    return-void
.end method

.method public final fI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Landroid/support/v7/widget/H;->EQ:Z

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public final fJ()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    return-object v0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    return-object v0
.end method

.method public final isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/H;->EG:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Landroid/support/v7/widget/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/P;-><init>(Landroid/support/v7/widget/H;B)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EG:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/H;->EG:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v1, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/K;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EG:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    .line 436
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public final setContentWidth(I)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/H;->AM:I

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/H;->AM:I

    goto :goto_0
.end method

.method public final setDropDownGravity(I)V
    .locals 0

    .prologue
    .line 481
    iput p1, p0, Landroid/support/v7/widget/H;->yf:I

    .line 482
    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public final setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v7/widget/H;->EJ:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public final show()V
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    if-nez v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/H;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/widget/I;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/I;-><init>(Landroid/support/v7/widget/H;)V

    iput-object v0, p0, Landroid/support/v7/widget/H;->EP:Ljava/lang/Runnable;

    new-instance v3, Landroid/support/v7/widget/K;

    iget-boolean v0, p0, Landroid/support/v7/widget/H;->EQ:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v0}, Landroid/support/v7/widget/K;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v0, p0, Landroid/support/v7/widget/H;->EI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v3, p0, Landroid/support/v7/widget/H;->EI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v3, p0, Landroid/support/v7/widget/H;->AV:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v3, p0, Landroid/support/v7/widget/H;->EJ:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/K;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/K;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    new-instance v3, Landroid/support/v7/widget/J;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/J;-><init>(Landroid/support/v7/widget/H;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v3, p0, Landroid/support/v7/widget/H;->EN:Landroid/support/v7/widget/Q;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/H;->EK:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v3, p0, Landroid/support/v7/widget/H;->EK:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/K;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    iget-object v6, p0, Landroid/support/v7/widget/H;->EE:Landroid/view/View;

    if-eqz v6, :cond_1d

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroid/support/v7/widget/H;->EF:I

    packed-switch v7, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/support/v7/widget/H;->EF:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Landroid/support/v7/widget/H;->AM:I

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v7/widget/H;->EA:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/H;->Ez:I

    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    iget-object v4, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    iget v7, p0, Landroid/support/v7/widget/H;->Ez:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v6

    iget-boolean v4, p0, Landroid/support/v7/widget/H;->EB:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroid/support/v7/widget/H;->Ex:I

    if-ne v4, v5, :cond_8

    :cond_3
    add-int v0, v6, v3

    .line 589
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/H;->isInputMethodNotNeeded()Z

    move-result v6

    .line 591
    iget-object v3, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 592
    iget v3, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v3, v5, :cond_a

    move v4, v5

    .line 602
    :goto_6
    iget v3, p0, Landroid/support/v7/widget/H;->Ex:I

    if-ne v3, v5, :cond_10

    .line 605
    if-eqz v6, :cond_c

    move v3, v0

    .line 606
    :goto_7
    if-eqz v6, :cond_e

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v6, v5, :cond_d

    :goto_8
    invoke-virtual {v0, v5, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    move v5, v3

    .line 622
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/H;->EC:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/support/v7/widget/H;->EB:Z

    if-nez v3, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/H;->Ey:I

    iget v3, p0, Landroid/support/v7/widget/H;->Ez:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_4
    :goto_b
    return-void

    :cond_5
    move v0, v2

    .line 584
    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/H;->EE:Landroid/view/View;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v2

    goto/16 :goto_4

    :cond_8
    iget v4, p0, Landroid/support/v7/widget/H;->AM:I

    packed-switch v4, :pswitch_data_1

    iget v4, p0, Landroid/support/v7/widget/H;->AM:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_c
    iget-object v7, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    sub-int/2addr v6, v0

    invoke-virtual {v7, v4, v6}, Landroid/support/v7/widget/K;->n(II)I

    move-result v4

    if-lez v4, :cond_9

    add-int/2addr v0, v3

    :cond_9
    add-int/2addr v0, v4

    goto/16 :goto_5

    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/H;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/H;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/H;->is:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    .line 596
    :cond_a
    iget v3, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v3, v9, :cond_b

    .line 597
    iget-object v3, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_6

    .line 599
    :cond_b
    iget v4, p0, Landroid/support/v7/widget/H;->AM:I

    goto/16 :goto_6

    :cond_c
    move v3, v5

    .line 605
    goto/16 :goto_7

    :cond_d
    move v5, v2

    .line 607
    goto/16 :goto_8

    .line 611
    :cond_e
    iget-object v6, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v0, v5, :cond_f

    move v0, v5

    :goto_d
    invoke-virtual {v6, v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    move v5, v3

    goto/16 :goto_9

    :cond_f
    move v0, v2

    goto :goto_d

    .line 616
    :cond_10
    iget v3, p0, Landroid/support/v7/widget/H;->Ex:I

    if-ne v3, v9, :cond_11

    move v5, v0

    .line 617
    goto/16 :goto_9

    .line 619
    :cond_11
    iget v5, p0, Landroid/support/v7/widget/H;->Ex:I

    goto/16 :goto_9

    :cond_12
    move v1, v2

    .line 622
    goto/16 :goto_a

    .line 627
    :cond_13
    iget v3, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v3, v5, :cond_17

    move v3, v5

    .line 637
    :goto_e
    iget v4, p0, Landroid/support/v7/widget/H;->Ex:I

    if-ne v4, v5, :cond_19

    move v0, v5

    .line 647
    :goto_f
    iget-object v4, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 648
    sget-object v0, Landroid/support/v7/widget/H;->Eu:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/H;->Eu:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_14
    :goto_10
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/H;->EC:Z

    if-nez v3, :cond_1b

    iget-boolean v3, p0, Landroid/support/v7/widget/H;->EB:Z

    if-nez v3, :cond_1b

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EM:Landroid/support/v7/widget/R;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/H;->Ey:I

    iget v3, p0, Landroid/support/v7/widget/H;->Ez:I

    iget v4, p0, Landroid/support/v7/widget/H;->yf:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/G;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/K;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->EQ:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/H;->Ew:Landroid/support/v7/widget/K;

    invoke-virtual {v0}, Landroid/support/v7/widget/K;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/H;->clearListSelection()V

    .line 661
    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->EQ:Z

    if-nez v0, :cond_4

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/H;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/H;->EO:Landroid/support/v7/widget/O;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 630
    :cond_17
    iget v3, p0, Landroid/support/v7/widget/H;->AM:I

    if-ne v3, v9, :cond_18

    .line 631
    iget-object v3, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/support/v7/widget/H;->EH:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_e

    .line 633
    :cond_18
    iget-object v3, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/H;->AM:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_e

    .line 640
    :cond_19
    iget v4, p0, Landroid/support/v7/widget/H;->Ex:I

    if-ne v4, v9, :cond_1a

    .line 641
    iget-object v4, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_f

    .line 643
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/H;->Ev:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/H;->Ex:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_f

    .line 648
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v3, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1b
    move v1, v2

    .line 652
    goto :goto_11

    :cond_1c
    move v0, v2

    goto/16 :goto_3

    :cond_1d
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
