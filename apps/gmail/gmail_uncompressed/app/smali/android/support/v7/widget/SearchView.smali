.class public final Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/c/c;


# static fields
.field static final FC:Landroid/support/v7/widget/T;

.field private static final Fi:Z


# instance fields
.field private FA:Z

.field private FB:I

.field private FD:Ljava/lang/Runnable;

.field private final FE:Ljava/lang/Runnable;

.field private FF:Ljava/lang/Runnable;

.field private final Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final Fk:Landroid/view/View;

.field private final Fl:Landroid/view/View;

.field private final Fm:Landroid/widget/ImageView;

.field private final Fn:Landroid/widget/ImageView;

.field private final Fo:Landroid/widget/ImageView;

.field private final Fp:Landroid/widget/ImageView;

.field private final Fq:Landroid/widget/ImageView;

.field private Fr:Landroid/view/View$OnClickListener;

.field private Fs:Z

.field private Ft:Z

.field private Fv:Z

.field private Fw:Z

.field private Fx:I

.field private Fy:Z

.field private Fz:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->Fi:Z

    .line 160
    new-instance v0, Landroid/support/v7/widget/T;

    invoke-direct {v0}, Landroid/support/v7/widget/T;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->FC:Landroid/support/v7/widget/T;

    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 798
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    .line 800
    if-eqz p1, :cond_4

    move v0, v1

    .line 802
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 804
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->Fm:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fv:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fM()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v3, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fy:Z

    if-nez v0, :cond_e

    :cond_0
    move v0, v1

    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->Fn:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->Fk:Landroid/view/View;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 807
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->Fq:Landroid/widget/ImageView;

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fs:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v4

    :goto_5
    if-nez v5, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fs:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->FA:Z

    if-nez v0, :cond_9

    :cond_1
    move v0, v4

    :goto_6
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->Fo:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_b

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_8
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 809
    if-nez v3, :cond_c

    :goto_9
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fy:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    if-nez v0, :cond_d

    if-eqz v4, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    :goto_a
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->Fp:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fM()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 811
    return-void

    :cond_4
    move v0, v2

    .line 800
    goto/16 :goto_0

    :cond_5
    move v3, v1

    .line 802
    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 806
    goto :goto_3

    :cond_7
    move v0, v1

    .line 807
    goto :goto_4

    :cond_8
    move v5, v1

    .line 808
    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_8

    :cond_c
    move v4, v1

    .line 809
    goto :goto_9

    :cond_d
    move v0, v2

    goto :goto_a

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method private N(Z)V
    .locals 3

    .prologue
    .line 883
    if-eqz p1, :cond_1

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->FD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->FD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 887
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 890
    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->N(Z)V

    return-void
.end method

.method private fL()I
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/e;->pH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private fM()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fv:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fy:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fN()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->FE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void
.end method

.method static h(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Fw:Z

    .line 500
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->N(Z)V

    .line 501
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 503
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->Fw:Z

    .line 504
    return-void
.end method

.method final fO()V
    .locals 2

    .prologue
    .line 1200
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->M(Z)V

    .line 1203
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fN()V

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    sget-object v0, Landroid/support/v7/widget/SearchView;->FC:Landroid/support/v7/widget/T;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/T;->a(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, Landroid/support/v7/widget/SearchView;->FC:Landroid/support/v7/widget/T;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/T;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1207
    :cond_0
    return-void
.end method

.method public final onActionViewCollapsed()V
    .locals 3

    .prologue
    .line 1221
    const-string v0, ""

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->Fz:Ljava/lang/CharSequence;

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->M(Z)V

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->FB:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->FA:Z

    .line 1226
    return-void
.end method

.method public final onActionViewExpanded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1233
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->FA:Z

    if-eqz v0, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iput-boolean v3, p0, Landroid/support/v7/widget/SearchView;->FA:Z

    .line 1236
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->FB:I

    .line 1237
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->FB:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->M(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->N(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fr:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Fr:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->FE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->FF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 879
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 880
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 760
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    if-eqz v0, :cond_0

    .line 761
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 790
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 766
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 768
    sparse-switch v1, :sswitch_data_0

    .line 788
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 771
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    if-lez v1, :cond_2

    .line 772
    iget v1, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 774
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fL()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 779
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    if-lez v1, :cond_1

    .line 780
    iget v1, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 785
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->Fx:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fL()I

    move-result v0

    goto :goto_1

    .line 768
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1211
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1213
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->fN()V

    .line 1214
    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->Fw:Z

    if-eqz v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->Ft:Z

    if-nez v1, :cond_3

    .line 486
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Fj:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 487
    if-eqz v1, :cond_2

    .line 488
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->M(Z)V

    :cond_2
    move v0, v1

    .line 490
    goto :goto_0

    .line 492
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method
