.class public final Lcom/android/datetimepicker/date/l;
.super Landroid/support/v4/widget/w;
.source "SourceFile"


# instance fields
.field final synthetic JA:Lcom/android/datetimepicker/date/k;

.field private final Jz:Ljava/util/Calendar;

.field private final is:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/k;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    .line 702
    invoke-direct {p0, p2}, Landroid/support/v4/widget/w;-><init>(Landroid/view/View;)V

    .line 698
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/l;->is:Landroid/graphics/Rect;

    .line 699
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/l;->Jz:Ljava/util/Calendar;

    .line 703
    return-void
.end method

.method private aK(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->Jz:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->Jf:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v2, v2, Lcom/android/datetimepicker/date/k;->Je:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 798
    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->Jz:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->Ji:I

    if-ne p1, v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/k;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/h;->HG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a(ILandroid/support/v4/view/a/i;)V
    .locals 8

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->is:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->IR:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-static {}, Lcom/android/datetimepicker/date/k;->gr()I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v3, v3, Lcom/android/datetimepicker/date/k;->Jg:I

    iget-object v4, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v4, v4, Lcom/android/datetimepicker/date/k;->GN:I

    iget-object v5, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v5, v5, Lcom/android/datetimepicker/date/k;->IR:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v5, v5, Lcom/android/datetimepicker/date/k;->Jk:I

    div-int/2addr v4, v5

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-virtual {v6}, Lcom/android/datetimepicker/date/k;->gs()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v6, v6, Lcom/android/datetimepicker/date/k;->Jk:I

    div-int v6, v5, v6

    iget-object v7, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v7, v7, Lcom/android/datetimepicker/date/k;->Jk:I

    rem-int/2addr v5, v7

    mul-int/2addr v5, v4

    add-int/2addr v1, v5

    mul-int v5, v6, v3

    add-int/2addr v2, v5

    add-int/2addr v4, v1

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 746
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/l;->aK(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->is:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 748
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->addAction(I)V

    .line 750
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v0, v0, Lcom/android/datetimepicker/date/k;->Ji:I

    if-ne p1, v0, :cond_0

    .line 751
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->setSelected(Z)V

    .line 754
    :cond_0
    return-void
.end method

.method protected final a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/l;->aK(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    return-void
.end method

.method public final aJ(I)V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/l;->e(Landroid/view/View;)Landroid/support/v4/view/a/q;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/a/q;->performAction(IILandroid/os/Bundle;)Z

    .line 708
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    iget v1, v1, Lcom/android/datetimepicker/date/k;->Jl:I

    if-gt v0, v1, :cond_0

    .line 732
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    return-void
.end method

.method protected final d(FF)I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/date/k;->f(FF)I

    move-result v0

    .line 723
    if-ltz v0, :cond_0

    .line 726
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public final gv()V
    .locals 4

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/l;->bX()I

    move-result v0

    .line 712
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/l;->e(Landroid/view/View;)Landroid/support/v4/view/a/q;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/a/q;->performAction(IILandroid/os/Bundle;)Z

    .line 718
    :cond_0
    return-void
.end method

.method protected final i(II)Z
    .locals 1

    .prologue
    .line 759
    packed-switch p2, :pswitch_data_0

    .line 765
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 761
    :pswitch_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/l;->JA:Lcom/android/datetimepicker/date/k;

    invoke-static {v0, p1}, Lcom/android/datetimepicker/date/k;->a(Lcom/android/datetimepicker/date/k;I)V

    .line 762
    const/4 v0, 0x1

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
