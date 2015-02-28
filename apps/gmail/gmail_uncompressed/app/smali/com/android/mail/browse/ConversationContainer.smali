.class public Lcom/android/mail/browse/ConversationContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aN;


# static fields
.field private static final alr:[I

.field private static final als:[I


# instance fields
.field private IQ:F

.field private alA:Z

.field private alB:I

.field private alC:Z

.field private alD:Z

.field private final alE:Lcom/android/mail/utils/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/j",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final alF:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/mail/browse/s;",
            ">;"
        }
    .end annotation
.end field

.field private alG:Z

.field private final alH:Lcom/android/mail/utils/A;

.field private final alI:Landroid/database/DataSetObserver;

.field private alJ:I

.field private alK:Z

.field private alL:Landroid/view/View;

.field private alM:Z

.field private alN:I

.field private final alO:Lcom/android/mail/browse/t;

.field private alu:Lcom/android/mail/browse/m;

.field private alv:Lcom/android/mail/browse/aa;

.field private alw:[Lcom/android/mail/browse/r;

.field private alx:Lcom/android/mail/browse/ConversationWebView;

.field private aly:Lcom/android/mail/browse/aU;

.field private final alz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final iP:I

.field private iR:F

.field private iU:I

.field private yy:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-array v0, v3, [I

    const v1, 0x7f0d017c

    aput v1, v0, v2

    sput-object v0, Lcom/android/mail/browse/ConversationContainer;->alr:[I

    .line 83
    new-array v0, v3, [I

    const v1, 0x7f0d017d

    aput v1, v0, v2

    sput-object v0, Lcom/android/mail/browse/ConversationContainer;->als:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/ConversationContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alz:Ljava/util/List;

    .line 133
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alC:Z

    .line 144
    new-instance v0, Lcom/android/mail/utils/j;

    invoke-direct {v0}, Lcom/android/mail/utils/j;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    .line 168
    new-instance v0, Lcom/android/mail/browse/o;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/o;-><init>(Lcom/android/mail/browse/ConversationContainer;B)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alI:Landroid/database/DataSetObserver;

    .line 592
    new-instance v0, Lcom/android/mail/browse/t;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/t;-><init>(Lcom/android/mail/browse/ConversationContainer;B)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alO:Lcom/android/mail/browse/t;

    .line 237
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Lcom/android/mail/utils/A;

    invoke-direct {v0, p1}, Lcom/android/mail/utils/A;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alH:Lcom/android/mail/utils/A;

    .line 241
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/ConversationContainer;->iP:I

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->setMotionEventSplittingEnabled(Z)V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/ConversationContainer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    return-object v0
.end method

.method private static a(Lcom/android/mail/browse/V;III)Lcom/android/mail/browse/r;
    .locals 4

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/mail/browse/V;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 605
    const/16 v0, 0x30

    if-ne p3, v0, :cond_0

    .line 606
    :goto_0
    new-instance v0, Lcom/android/mail/browse/r;

    invoke-direct {v0, p1, p1}, Lcom/android/mail/browse/r;-><init>(II)V

    .line 615
    :goto_1
    return-object v0

    :cond_0
    move p1, p2

    .line 605
    goto :goto_0

    .line 609
    :cond_1
    if-eqz p3, :cond_2

    :goto_2
    and-int/lit8 v0, p3, 0x70

    .line 611
    sparse-switch v0, :sswitch_data_0

    .line 617
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported gravity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/browse/V;->getGravity()I

    move-result p3

    goto :goto_2

    .line 613
    :sswitch_0
    new-instance v0, Lcom/android/mail/browse/r;

    invoke-virtual {p0}, Lcom/android/mail/browse/V;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {v0, v1, p2}, Lcom/android/mail/browse/r;-><init>(II)V

    goto :goto_1

    .line 615
    :sswitch_1
    new-instance v0, Lcom/android/mail/browse/r;

    invoke-virtual {p0}, Lcom/android/mail/browse/V;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, p1, v1}, Lcom/android/mail/browse/r;-><init>(II)V

    goto :goto_1

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(ILcom/android/mail/browse/s;II)V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 661
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/s;Z)V

    .line 665
    iget-object v0, p2, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/mail/browse/ConversationContainer;->f(Landroid/view/View;II)V

    .line 666
    return-void
.end method

.method private a(Lcom/android/mail/browse/s;Z)V
    .locals 3

    .prologue
    .line 685
    if-eqz p2, :cond_0

    .line 686
    iget-object v0, p1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    iget v1, p1, Lcom/android/mail/browse/s;->alR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/utils/j;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    iget-object v0, p1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/android/mail/browse/q;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    check-cast v0, Lcom/android/mail/browse/q;

    invoke-interface {v0}, Lcom/android/mail/browse/q;->oU()V

    .line 692
    :cond_1
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alG:Z

    if-eqz v0, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1024
    :cond_0
    const-string v0, "ConvLayout"

    invoke-static {v0, p1, p2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/browse/ConversationContainer;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mail/browse/ConversationContainer;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method private aq(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 639
    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 643
    :cond_0
    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->yy:I

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 645
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 647
    if-lez v0, :cond_1

    .line 648
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 652
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 653
    return-void

    .line 650
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/mail/browse/ConversationContainer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationContainer;->oQ()V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v0}, Lcom/android/mail/browse/aU;->ov()V

    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->removeViewInLayout(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alM:Z

    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alK:Z

    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/ConversationContainer;->g(IZ)V

    return-void
.end method

.method private bR(I)I
    .locals 2

    .prologue
    .line 775
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->IQ:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c(IIIZ)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/s;

    .line 781
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v1, p1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v2

    .line 784
    invoke-virtual {v2, p2}, Lcom/android/mail/browse/V;->setTop(I)V

    .line 787
    if-eq p2, p3, :cond_7

    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    if-le p3, v1, :cond_7

    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge p2, v1, :cond_7

    .line 789
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    .line 791
    :goto_0
    if-nez v0, :cond_5

    .line 792
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/aa;->getItemViewType(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/j;->S(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/mail/browse/aa;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/mail/browse/s;

    invoke-direct {v5, v1, v3}, Lcom/android/mail/browse/s;-><init>(Landroid/view/View;I)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-ne v0, v1, :cond_3

    const-string v0, "ConvLayout"

    const-string v3, "want to REUSE scrolled-in view: index=%d obj=%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0, v1, p4}, Lcom/android/mail/browse/ConversationContainer;->g(Landroid/view/View;Z)V

    .line 793
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ad;->d(Landroid/view/View;I)V

    .line 794
    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->aq(Landroid/view/View;)V

    .line 795
    invoke-virtual {v2}, Lcom/android/mail/browse/V;->qr()V

    .line 796
    const-string v0, "show/measure overlay %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v0, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 807
    :cond_0
    :goto_3
    const-string v1, "laying out overlay %d with h=%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, v1, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 810
    invoke-direct {p0, v0, p2, v1}, Lcom/android/mail/browse/ConversationContainer;->f(Landroid/view/View;II)V

    .line 811
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    if-le v1, v0, :cond_6

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    .line 825
    :goto_5
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    if-gt p2, v0, :cond_1

    invoke-virtual {v2}, Lcom/android/mail/browse/V;->qu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 827
    iput p1, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    .line 833
    :cond_1
    :goto_6
    return-void

    .line 789
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 792
    :cond_3
    const-string v0, "ConvLayout"

    const-string v3, "want to CREATE scrolled-in view: index=%d obj=%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    .line 798
    :cond_5
    const-string v1, "move overlay %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v1, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v2}, Lcom/android/mail/browse/V;->qq()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-virtual {v2, v0}, Lcom/android/mail/browse/V;->av(Landroid/view/View;)V

    .line 801
    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->aq(Landroid/view/View;)V

    .line 802
    invoke-virtual {v2}, Lcom/android/mail/browse/V;->qr()V

    .line 803
    const-string v1, "and (re)measure overlay %d, old/new heights=%d/%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-direct {p0, v1, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 811
    :cond_6
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    goto :goto_4

    .line 815
    :cond_7
    if-eqz v0, :cond_8

    .line 816
    const-string v1, "hide overlay %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v1, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mail/browse/ConversationContainer;->a(ILcom/android/mail/browse/s;II)V

    .line 821
    :goto_7
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    if-le p3, v0, :cond_9

    :goto_8
    iput p3, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    goto/16 :goto_5

    .line 819
    :cond_8
    const-string v0, "ignore non-visible overlay %d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 821
    :cond_9
    iget p3, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    goto :goto_8

    .line 828
    :cond_a
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    if-le p1, v0, :cond_1

    .line 829
    iput p1, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    goto/16 :goto_6
.end method

.method private f(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 838
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    sub-int v1, p2, v0

    .line 839
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    sub-int v2, p3, v0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 842
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getPaddingLeft()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v3

    .line 844
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 845
    return-void
.end method

.method private g(IZ)V
    .locals 15

    .prologue
    .line 460
    move/from16 v0, p1

    iput v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    .line 469
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alA:Z

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/ConversationContainer;->IQ:F

    .line 474
    :cond_0
    :goto_0
    const-string v1, "in positionOverlays, raw scale=%f, effective scale=%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/mail/browse/ConversationContainer;->IQ:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    if-nez v1, :cond_3

    .line 555
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->IQ:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->qZ()F

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/ConversationContainer;->IQ:F

    goto :goto_0

    .line 489
    :cond_3
    const-string v1, "IN positionOverlays, spacerCount=%d overlayCount=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v4}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    .line 493
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    .line 495
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v1}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 496
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v11, v1

    .line 497
    :goto_2
    if-ltz v11, :cond_b

    if-ltz v2, :cond_b

    .line 499
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    aget-object v1, v1, v11

    iget v1, v1, Lcom/android/mail/browse/r;->top:I

    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->bR(I)I

    move-result v6

    .line 500
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    aget-object v1, v1, v11

    iget v1, v1, Lcom/android/mail/browse/r;->bottom:I

    invoke-direct {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->bR(I)I

    move-result v4

    .line 507
    if-nez v11, :cond_5

    .line 508
    const/4 v3, 0x1

    .line 510
    const/16 v1, 0x30

    move v8, v1

    move v9, v2

    move v10, v3

    .line 517
    :goto_3
    if-eqz v10, :cond_6

    sub-int v1, v9, v2

    .line 520
    :goto_4
    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v3, v1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v5

    .line 522
    invoke-static {v5, v6, v4, v8}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/V;III)Lcom/android/mail/browse/r;

    move-result-object v3

    .line 525
    const-string v7, "in loop, spacer=%d overlay=%d t/b=%d/%d (%s)"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget v14, v3, Lcom/android/mail/browse/r;->top:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget v14, v3, Lcom/android/mail/browse/r;->bottom:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v5, v12, v13

    invoke-direct {p0, v7, v12}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget v5, v3, Lcom/android/mail/browse/r;->top:I

    iget v7, v3, Lcom/android/mail/browse/r;->bottom:I

    move/from16 v0, p2

    invoke-direct {p0, v1, v5, v7, v0}, Lcom/android/mail/browse/ConversationContainer;->c(IIIZ)V

    move-object v7, v3

    .line 531
    :goto_5
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_a

    .line 532
    if-eqz v10, :cond_7

    sub-int v1, v9, v2

    .line 533
    :goto_6
    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v3, v1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v12

    .line 534
    if-lez v11, :cond_4

    invoke-virtual {v12}, Lcom/android/mail/browse/V;->qn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 536
    :cond_4
    if-eqz v10, :cond_8

    iget v3, v7, Lcom/android/mail/browse/r;->bottom:I

    move v5, v3

    .line 542
    :goto_7
    if-eqz v10, :cond_9

    move v3, v4

    .line 543
    :goto_8
    invoke-static {v12, v5, v3, v8}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/V;III)Lcom/android/mail/browse/r;

    move-result-object v3

    .line 545
    const-string v5, "in contig loop, spacer=%d overlay=%d t/b=%d/%d (%s)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x2

    iget v14, v3, Lcom/android/mail/browse/r;->top:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x3

    iget v14, v3, Lcom/android/mail/browse/r;->bottom:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x4

    aput-object v12, v7, v13

    invoke-direct {p0, v5, v7}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget v5, v3, Lcom/android/mail/browse/r;->top:I

    iget v7, v3, Lcom/android/mail/browse/r;->bottom:I

    move/from16 v0, p2

    invoke-direct {p0, v1, v5, v7, v0}, Lcom/android/mail/browse/ConversationContainer;->c(IIIZ)V

    move-object v7, v3

    .line 548
    goto :goto_5

    .line 512
    :cond_5
    const/4 v5, 0x0

    .line 513
    const/4 v3, 0x0

    .line 514
    const/4 v1, 0x0

    move v8, v1

    move v9, v3

    move v10, v5

    goto/16 :goto_3

    :cond_6
    move v1, v2

    .line 517
    goto/16 :goto_4

    :cond_7
    move v1, v2

    .line 532
    goto :goto_6

    :cond_8
    move v5, v6

    .line 536
    goto :goto_7

    .line 542
    :cond_9
    iget v3, v7, Lcom/android/mail/browse/r;->top:I

    goto :goto_8

    .line 550
    :cond_a
    add-int/lit8 v1, v11, -0x1

    move v11, v1

    .line 551
    goto/16 :goto_2

    .line 553
    :cond_b
    iget v3, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alK:Z

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq v3, v1, :cond_14

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v1, v3}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/browse/V;->qt()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_9
    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/aU;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v1}, Lcom/android/mail/browse/aU;->ov()V

    .line 554
    :goto_a
    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->alN:I

    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->getContentHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mail/browse/ConversationContainer;->bR(I)I

    move-result v2

    sub-int v3, v2, v1

    if-lez v3, :cond_12

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v4}, Lcom/android/mail/browse/aa;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040073

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    :cond_c
    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/android/mail/browse/ConversationContainer;->alM:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    move/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/android/mail/browse/ConversationContainer;->g(Landroid/view/View;Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mail/browse/ConversationContainer;->alM:Z

    :cond_d
    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/mail/browse/ConversationContainer;->aq(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/mail/browse/ConversationContainer;->f(Landroid/view/View;II)V

    goto/16 :goto_1

    .line 553
    :cond_e
    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mail/browse/V;->i(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/aU;->setVisibility(I)V

    const/4 v1, 0x0

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v3}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v4

    move v3, v2

    :goto_b
    if-ge v3, v4, :cond_11

    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/browse/V;->qu()Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_c
    if-eqz v2, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/mail/browse/V;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v3}, Lcom/android/mail/browse/aU;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gez v1, :cond_f

    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->alH:Lcom/android/mail/utils/A;

    invoke-virtual {v2}, Lcom/android/mail/utils/A;->AT()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    const/4 v1, 0x0

    :cond_f
    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/android/mail/browse/aU;->setTranslationY(F)V

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 554
    :cond_12
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alL:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alM:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_13

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alO:Lcom/android/mail/browse/t;

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->post(Ljava/lang/Runnable;)Z

    :goto_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alM:Z

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alO:Lcom/android/mail/browse/t;

    invoke-virtual {v1}, Lcom/android/mail/browse/t;->run()V

    goto :goto_d

    :cond_14
    move-object v1, v2

    goto/16 :goto_9
.end method

.method private g(Landroid/view/MotionEvent;I)V
    .locals 6

    .prologue
    .line 364
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 366
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    const-string v1, "ConvLayout"

    const-string v2, "in Container.OnTouch. fake: action=%d x/y=%f/%f pointers=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    return-void
.end method

.method private g(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 873
    new-instance v0, Lcom/android/mail/browse/p;

    invoke-direct {v0, p0, p1}, Lcom/android/mail/browse/p;-><init>(Lcom/android/mail/browse/ConversationContainer;Landroid/view/View;)V

    .line 874
    if-eqz p2, :cond_0

    .line 875
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->post(Ljava/lang/Runnable;)Z

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/browse/p;->run()V

    goto :goto_0
.end method

.method private oQ()V
    .locals 4

    .prologue
    .line 337
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/s;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/s;Z)V

    .line 337
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 341
    return-void
.end method

.method static synthetic oT()[I
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mail/browse/ConversationContainer;->alr:[I

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aa;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alI:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aa;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationContainer;->oQ()V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    .line 280
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alI:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aa;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 283
    :cond_1
    return-void
.end method

.method public final a(Lcom/android/mail/browse/m;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/mail/browse/ConversationContainer;->alu:Lcom/android/mail/browse/m;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alK:Z

    .line 290
    return-void
.end method

.method public final a([Lcom/android/mail/browse/r;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 976
    const-string v0, "*** got overlay spacer positions:"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 978
    const-string v4, "top=%d bottom=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v3, Lcom/android/mail/browse/r;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget v3, v3, Lcom/android/mail/browse/r;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/mail/browse/ConversationContainer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    .line 982
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/ConversationContainer;->g(IZ)V

    .line 983
    return-void
.end method

.method public final ap(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationContainer;->aq(Landroid/view/View;)V

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final bP(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alH:Lcom/android/mail/utils/A;

    invoke-virtual {v0, p1}, Lcom/android/mail/utils/A;->dr(I)V

    .line 445
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alG:Z

    .line 446
    invoke-direct {p0, p1, v1}, Lcom/android/mail/browse/ConversationContainer;->g(IZ)V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alG:Z

    .line 448
    return-void
.end method

.method public final bQ(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/j;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final bS(I)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 995
    iget v3, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    .line 996
    iput v1, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    .line 997
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/s;

    .line 998
    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getHeight()I

    move-result v2

    .line 1000
    iget-object v4, v0, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/mail/browse/ConversationContainer;->a(ILcom/android/mail/browse/s;II)V

    .line 1001
    const-string v0, "ConvLayout"

    const-string v4, "footer scrolled off. container height=%s, measuredHeight=%s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1017
    :cond_0
    iput v3, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    .line 1018
    return-void

    .line 1004
    :cond_1
    const-string v0, "ConvLayout"

    const-string v2, "footer not found with adapterIndex=%s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1005
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1007
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/s;

    .line 1008
    const-string v6, "ConvLayout"

    const-string v7, "OverlayView: adapterIndex=%s, itemType=%s, view=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v1

    iget v5, v0, Lcom/android/mail/browse/s;->alR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    iget-object v0, v0, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    aput-object v0, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1005
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    .line 1012
    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v4, v0}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v4

    .line 1013
    const-string v5, "ConvLayout"

    const-string v6, "adapter item: index=%s, item=%s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mail/utils/j;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/mail/browse/ConversationContainer;->g(Landroid/view/View;Z)V

    .line 680
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 761
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 746
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 751
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 756
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/view/View;Z)Landroid/view/View;
    .locals 3

    .prologue
    .line 1041
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1042
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alE:Lcom/android/mail/utils/j;

    new-instance v2, Lcom/android/mail/browse/n;

    invoke-direct {v2, p0, v0}, Lcom/android/mail/browse/n;-><init>(Lcom/android/mail/browse/ConversationContainer;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/mail/utils/j;->a(Lcom/android/mail/utils/k;)V

    .line 1048
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/mail/browse/aa;->a(Landroid/view/View;ZLjava/util/Set;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 5
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
    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 298
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v3

    .line 299
    iget-object v1, p0, Lcom/android/mail/browse/ConversationContainer;->alF:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/browse/s;

    .line 300
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 301
    iget-object v1, v1, Lcom/android/mail/browse/s;->view:Landroid/view/View;

    invoke-virtual {v3, v1}, Lcom/android/mail/browse/V;->au(Landroid/view/View;)V

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/mail/browse/ConversationContainer;->alJ:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/aU;->c(Lcom/android/mail/browse/V;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v0}, Lcom/android/mail/browse/aU;->refresh()V

    goto :goto_0

    .line 308
    :cond_2
    return-void
.end method

.method public final oO()V
    .locals 1

    .prologue
    .line 266
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aU;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    .line 267
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    invoke-virtual {v0}, Lcom/android/mail/browse/aU;->rJ()V

    .line 268
    return-void
.end method

.method public final oP()Lcom/android/mail/browse/aU;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->aly:Lcom/android/mail/browse/aU;

    return-object v0
.end method

.method public final oR()V
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alw:[Lcom/android/mail/browse/r;

    .line 973
    return-void
.end method

.method public final oS()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qI()Z

    .line 1037
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 254
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationWebView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    .line 255
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationWebView;->a(Lcom/android/mail/browse/aN;)V

    .line 257
    sget-object v2, Lcom/android/mail/browse/ConversationContainer;->alr:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 258
    iget-object v5, p0, Lcom/android/mail/browse/ConversationContainer;->alz:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    sget-object v2, Lcom/android/mail/browse/ConversationContainer;->als:[I

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget v1, v2, v0

    .line 261
    iget-object v4, p0, Lcom/android/mail/browse/ConversationContainer;->alz:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 378
    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationContainer;->alA:Z

    if-nez v2, :cond_0

    .line 379
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alA:Z

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->qX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    :goto_0
    return v1

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v0, v1

    :goto_1
    move v1, v0

    .line 414
    goto :goto_0

    .line 390
    :pswitch_1
    const-string v2, "ConvLayout"

    const-string v3, "Container is intercepting non-primary touch!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 392
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alD:Z

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationContainer;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 397
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/ConversationContainer;->iR:F

    .line 398
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/ConversationContainer;->iU:I

    move v0, v1

    .line 399
    goto :goto_1

    .line 402
    :pswitch_3
    iget v2, p0, Lcom/android/mail/browse/ConversationContainer;->iU:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 403
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 404
    iget v3, p0, Lcom/android/mail/browse/ConversationContainer;->iR:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 405
    iget v4, p0, Lcom/android/mail/browse/ConversationContainer;->iP:I

    if-le v3, v4, :cond_2

    .line 406
    iput v2, p0, Lcom/android/mail/browse/ConversationContainer;->iR:F

    goto :goto_1

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 717
    const-string v0, "ConvLayout"

    const-string v1, "*** IN header container onLayout"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 719
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 720
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 722
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 724
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 727
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 728
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 729
    add-int/2addr v4, v6

    add-int/2addr v5, v1

    invoke-virtual {v0, v6, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v1

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_2

    .line 737
    iget-object v3, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v3, v0}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/browse/V;->qs()V

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    :cond_2
    iget v0, p0, Lcom/android/mail/browse/ConversationContainer;->alB:I

    invoke-direct {p0, v0, v2}, Lcom/android/mail/browse/ConversationContainer;->g(IZ)V

    .line 742
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 696
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 697
    const-string v0, "ConvLayout"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const-string v0, "ConvLayout"

    const-string v1, "*** IN header container onMeasure spec for w/h=%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 704
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 705
    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/ConversationContainer;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .line 709
    :cond_2
    iput p1, p0, Lcom/android/mail/browse/ConversationContainer;->yy:I

    .line 713
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alv:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qI()Z

    move-result v0

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 421
    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 422
    :cond_0
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationContainer;->alC:Z

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationContainer;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 439
    return v0

    .line 423
    :cond_2
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationContainer;->alC:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v4, :cond_1

    .line 426
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/mail/browse/ConversationContainer;->g(Landroid/view/MotionEvent;I)V

    .line 427
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationContainer;->alD:Z

    if-eqz v0, :cond_4

    .line 428
    invoke-direct {p0, p1, v4}, Lcom/android/mail/browse/ConversationContainer;->g(Landroid/view/MotionEvent;I)V

    .line 429
    iput-boolean v2, p0, Lcom/android/mail/browse/ConversationContainer;->alD:Z

    .line 432
    :cond_4
    iput-boolean v3, p0, Lcom/android/mail/browse/ConversationContainer;->alC:Z

    goto :goto_0
.end method
