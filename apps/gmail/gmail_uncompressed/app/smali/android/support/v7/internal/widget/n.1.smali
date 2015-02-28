.class public abstract Landroid/support/v7/internal/widget/n;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field Aa:I

.field Ab:J

.field private Ac:Z

.field private Ad:Z

.field private Ae:Landroid/support/v7/internal/widget/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/internal/widget/n",
            "<TT;>.android/support/v7/internal/widget/r;"
        }
    .end annotation
.end field

.field Af:Z

.field aC:Z

.field zI:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field zJ:I

.field zK:I

.field zL:J

.field zM:J

.field zN:Z

.field zO:I

.field private zP:I

.field zQ:Landroid/support/v7/internal/widget/q;

.field zR:Landroid/support/v7/internal/widget/p;

.field zS:Z

.field zT:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field zU:J

.field zV:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field zW:J

.field private zX:Landroid/view/View;

.field zY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field zZ:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput v0, p0, Landroid/support/v7/internal/widget/n;->zI:I

    .line 86
    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zL:J

    .line 96
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->zN:Z

    .line 128
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->aC:Z

    .line 154
    iput v1, p0, Landroid/support/v7/internal/widget/n;->zT:I

    .line 160
    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zU:J

    .line 165
    iput v1, p0, Landroid/support/v7/internal/widget/n;->zV:I

    .line 171
    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zW:J

    .line 203
    iput v1, p0, Landroid/support/v7/internal/widget/n;->Aa:I

    .line 208
    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->Ab:J

    .line 227
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->Af:Z

    .line 239
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/n;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/n;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/n;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/internal/widget/n;->eI()V

    return-void
.end method

.method private eI()V
    .locals 3

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zQ:Landroid/support/v7/internal/widget/q;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 896
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zT:I

    .line 897
    if-ltz v0, :cond_1

    .line 898
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getSelectedView()Landroid/view/View;

    .line 899
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->zQ:Landroid/support/v7/internal/widget/q;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/q;->ab(I)V

    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zQ:Landroid/support/v7/internal/widget/q;

    goto :goto_0
.end method

.method private getItemIdAtPosition(I)J
    .locals 2

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/widget/p;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/internal/widget/n;->zR:Landroid/support/v7/internal/widget/p;

    .line 285
    return-void
.end method

.method public final a(Landroid/support/v7/internal/widget/q;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Landroid/support/v7/internal/widget/n;->zQ:Landroid/support/v7/internal/widget/q;

    .line 401
    return-void
.end method

.method public final ad(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    iget-object v2, p0, Landroid/support/v7/internal/widget/n;->zR:Landroid/support/v7/internal/widget/p;

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/n;->playSoundEffect(I)V

    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 310
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->zR:Landroid/support/v7/internal/widget/p;

    invoke-interface {v1, p1}, Landroid/support/v7/internal/widget/p;->ae(Landroid/view/View;)V

    .line 314
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ak(I)V
    .locals 2

    .prologue
    .line 1096
    iput p1, p0, Landroid/support/v7/internal/widget/n;->zV:I

    .line 1097
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/n;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->zW:J

    .line 1098
    return-void
.end method

.method final al(I)V
    .locals 2

    .prologue
    .line 1106
    iput p1, p0, Landroid/support/v7/internal/widget/n;->zT:I

    .line 1107
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/n;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->zU:J

    .line 1109
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->zN:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/n;->zO:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1110
    iput p1, p0, Landroid/support/v7/internal/widget/n;->zK:I

    .line 1111
    iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->zU:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->zL:J

    .line 1113
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 918
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/n;->zY:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    .line 913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 796
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 788
    return-void
.end method

.method final eH()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 717
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 718
    :goto_0
    if-nez v0, :cond_4

    move v3, v2

    .line 722
    :goto_1
    if-eqz v3, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->Ad:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 723
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->Ac:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 724
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zX:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 725
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    :goto_4
    if-eqz v2, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zX:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zX:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V

    :goto_5
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->zS:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/n;->onLayout(ZIIII)V

    .line 727
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v0, v1

    .line 717
    goto :goto_0

    :cond_4
    move v3, v1

    .line 718
    goto :goto_1

    :cond_5
    move v0, v1

    .line 722
    goto :goto_2

    :cond_6
    move v0, v1

    .line 723
    goto :goto_3

    :cond_7
    move v2, v1

    .line 725
    goto :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zX:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zX:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V

    goto :goto_6
.end method

.method final eJ()V
    .locals 4

    .prologue
    .line 985
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zV:I

    iget v1, p0, Landroid/support/v7/internal/widget/n;->Aa:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->zW:J

    iget-wide v2, p0, Landroid/support/v7/internal/widget/n;->Ab:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 986
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->zQ:Landroid/support/v7/internal/widget/q;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->aC:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->Af:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->Ae:Landroid/support/v7/internal/widget/r;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/internal/widget/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/support/v7/internal/widget/n;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/n;->Ae:Landroid/support/v7/internal/widget/r;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->Ae:Landroid/support/v7/internal/widget/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zV:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->sendAccessibilityEvent(I)V

    .line 987
    :cond_4
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zV:I

    iput v0, p0, Landroid/support/v7/internal/widget/n;->Aa:I

    .line 988
    iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->zW:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->Ab:J

    .line 990
    :cond_5
    return-void

    .line 986
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/n;->eI()V

    goto :goto_0
.end method

.method final eK()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1121
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1122
    iput-boolean v5, p0, Landroid/support/v7/internal/widget/n;->zN:Z

    .line 1123
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zP:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->zM:J

    .line 1124
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zV:I

    if-ltz v0, :cond_2

    .line 1126
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zV:I

    iget v1, p0, Landroid/support/v7/internal/widget/n;->zI:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    iget-wide v2, p0, Landroid/support/v7/internal/widget/n;->zU:J

    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zL:J

    .line 1128
    iget v1, p0, Landroid/support/v7/internal/widget/n;->zT:I

    iput v1, p0, Landroid/support/v7/internal/widget/n;->zK:I

    .line 1129
    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/n;->zJ:I

    .line 1132
    :cond_0
    iput v4, p0, Landroid/support/v7/internal/widget/n;->zO:I

    .line 1149
    :cond_1
    :goto_0
    return-void

    .line 1135
    :cond_2
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1136
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1137
    iget v2, p0, Landroid/support/v7/internal/widget/n;->zI:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/support/v7/internal/widget/n;->zI:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1138
    iget v2, p0, Landroid/support/v7/internal/widget/n;->zI:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zL:J

    .line 1142
    :goto_1
    iget v1, p0, Landroid/support/v7/internal/widget/n;->zI:I

    iput v1, p0, Landroid/support/v7/internal/widget/n;->zK:I

    .line 1143
    if-eqz v0, :cond_3

    .line 1144
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/n;->zJ:I

    .line 1146
    :cond_3
    iput v5, p0, Landroid/support/v7/internal/widget/n;->zO:I

    goto :goto_0

    .line 1140
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/internal/widget/n;->zL:J

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 554
    iget v0, p0, Landroid/support/v7/internal/widget/n;->zT:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method final handleDataChanged()V
    .locals 18

    .prologue
    .line 922
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/n;->zY:I

    .line 923
    const/4 v6, 0x0

    .line 925
    if-lez v9, :cond_f

    .line 930
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/internal/widget/n;->zN:Z

    if-eqz v2, :cond_e

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/n;->zN:Z

    .line 937
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/internal/widget/n;->zY:I

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v7/internal/widget/n;->zL:J

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/n;->zK:I

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v3, v12, v4

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v10, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v14, 0x64

    add-long/2addr v14, v4

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v11

    if-eqz v11, :cond_d

    move v4, v3

    move v5, v3

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v7, v16, v14

    if-gtz v7, :cond_d

    invoke-interface {v11, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v16

    cmp-long v7, v16, v12

    if-nez v7, :cond_6

    .line 938
    :goto_1
    if-ltz v5, :cond_e

    .line 941
    if-ne v5, v5, :cond_e

    .line 943
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/n;->al(I)V

    .line 944
    const/4 v6, 0x1

    move v2, v6

    .line 948
    :goto_2
    if-nez v2, :cond_4

    .line 950
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/internal/widget/n;->zT:I

    .line 953
    if-lt v3, v9, :cond_1

    .line 954
    add-int/lit8 v3, v9, -0x1

    .line 956
    :cond_1
    if-gez v3, :cond_2

    .line 957
    const/4 v3, 0x0

    .line 962
    :cond_2
    if-gez v3, :cond_3

    .line 966
    :cond_3
    if-ltz v3, :cond_4

    .line 967
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/n;->al(I)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/n;->eJ()V

    .line 969
    const/4 v2, 0x1

    .line 973
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 975
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/n;->zV:I

    .line 976
    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/n;->zW:J

    .line 977
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/internal/widget/n;->zT:I

    .line 978
    const-wide/high16 v2, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v7/internal/widget/n;->zU:J

    .line 979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v7/internal/widget/n;->zN:Z

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/n;->eJ()V

    .line 982
    :cond_5
    return-void

    .line 937
    :cond_6
    add-int/lit8 v7, v10, -0x1

    if-ne v3, v7, :cond_9

    const/4 v7, 0x1

    move v8, v7

    :goto_4
    if-nez v4, :cond_a

    const/4 v7, 0x1

    :goto_5
    if-eqz v8, :cond_7

    if-nez v7, :cond_d

    :cond_7
    if-nez v7, :cond_8

    if-eqz v2, :cond_b

    if-nez v8, :cond_b

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    move v5, v3

    goto :goto_0

    :cond_9
    const/4 v7, 0x0

    move v8, v7

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    if-nez v2, :cond_0

    if-nez v7, :cond_0

    :cond_c
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_d
    const/4 v5, -0x1

    goto :goto_1

    :cond_e
    move v2, v6

    goto :goto_2

    :cond_f
    move v2, v6

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 851
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 852
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->Ae:Landroid/support/v7/internal/widget/r;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 853
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/n;->zP:I

    .line 545
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusable(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 691
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 694
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/n;->Ac:Z

    .line 695
    if-nez p1, :cond_1

    .line 696
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/n;->Ad:Z

    .line 699
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 700
    return-void

    :cond_2
    move v0, v1

    .line 692
    goto :goto_0

    :cond_3
    move v2, v1

    .line 699
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 704
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 707
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/n;->Ad:Z

    .line 708
    if-eqz p1, :cond_1

    .line 709
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/n;->Ac:Z

    .line 712
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 713
    return-void

    :cond_2
    move v0, v1

    .line 705
    goto :goto_0

    :cond_3
    move v2, v1

    .line 712
    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
