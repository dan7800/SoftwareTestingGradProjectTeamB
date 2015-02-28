.class public final Lcom/android/mail/browse/aa;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final alu:Lcom/android/mail/browse/m;

.field private final aqH:Lcom/android/mail/e;

.field private final aqI:Landroid/app/LoaderManager;

.field private final aqJ:Lcom/android/mail/browse/aH;

.field private final aqK:Lcom/android/mail/browse/aE;

.field private final aqL:Lcom/android/mail/b;

.field private final aqM:Lcom/android/mail/browse/ag;

.field private final aqN:Lcom/android/mail/browse/K;

.field private final aqO:Lcom/android/mail/ui/aP;

.field private final aqP:Lcom/android/mail/browse/aY;

.field private final aqQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final aqR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/browse/V;",
            ">;"
        }
    .end annotation
.end field

.field private final aqS:Lcom/android/mail/utils/aj;

.field private final aqT:Landroid/support/v4/e/a;

.field private final aqU:Landroid/view/View$OnKeyListener;

.field private final c:Landroid/app/FragmentManager;

.field private final mContext:Landroid/content/Context;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/aa;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/browse/m;Landroid/app/LoaderManager;Lcom/android/mail/browse/aH;Lcom/android/mail/browse/aE;Lcom/android/mail/b;Lcom/android/mail/browse/ag;Lcom/android/mail/browse/K;Lcom/android/mail/ui/aP;Lcom/android/mail/browse/aY;Ljava/util/Map;Lcom/android/mail/e;Landroid/support/v4/e/a;Landroid/view/View$OnKeyListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/ui/as;",
            "Lcom/android/mail/browse/m;",
            "Landroid/app/LoaderManager;",
            "Lcom/android/mail/browse/aH;",
            "Lcom/android/mail/browse/aE;",
            "Lcom/android/mail/b;",
            "Lcom/android/mail/browse/ag;",
            "Lcom/android/mail/browse/K;",
            "Lcom/android/mail/ui/aP;",
            "Lcom/android/mail/browse/aY;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/e;",
            "Landroid/support/v4/e/a;",
            "Landroid/view/View$OnKeyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 555
    invoke-interface {p1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aa;->mContext:Landroid/content/Context;

    .line 556
    iput-object p12, p0, Lcom/android/mail/browse/aa;->aqH:Lcom/android/mail/e;

    .line 557
    iput-object p2, p0, Lcom/android/mail/browse/aa;->alu:Lcom/android/mail/browse/m;

    .line 558
    iput-object p3, p0, Lcom/android/mail/browse/aa;->aqI:Landroid/app/LoaderManager;

    .line 559
    invoke-interface {p1}, Lcom/android/mail/ui/as;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aa;->c:Landroid/app/FragmentManager;

    .line 560
    iput-object p4, p0, Lcom/android/mail/browse/aa;->aqJ:Lcom/android/mail/browse/aH;

    .line 561
    iput-object p5, p0, Lcom/android/mail/browse/aa;->aqK:Lcom/android/mail/browse/aE;

    .line 562
    iput-object p6, p0, Lcom/android/mail/browse/aa;->aqL:Lcom/android/mail/b;

    .line 563
    iput-object p7, p0, Lcom/android/mail/browse/aa;->aqM:Lcom/android/mail/browse/ag;

    .line 564
    iput-object p8, p0, Lcom/android/mail/browse/aa;->aqN:Lcom/android/mail/browse/K;

    .line 565
    iput-object p9, p0, Lcom/android/mail/browse/aa;->aqO:Lcom/android/mail/ui/aP;

    .line 566
    iput-object p10, p0, Lcom/android/mail/browse/aa;->aqP:Lcom/android/mail/browse/aY;

    .line 567
    iput-object p11, p0, Lcom/android/mail/browse/aa;->aqQ:Ljava/util/Map;

    .line 568
    iget-object v0, p0, Lcom/android/mail/browse/aa;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aa;->wC:Landroid/view/LayoutInflater;

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    .line 571
    invoke-interface {p1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/O;->wz()Lcom/android/mail/utils/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aa;->aqS:Lcom/android/mail/utils/aj;

    .line 573
    iput-object p13, p0, Lcom/android/mail/browse/aa;->aqT:Landroid/support/v4/e/a;

    .line 574
    iput-object p14, p0, Lcom/android/mail/browse/aa;->aqU:Landroid/view/View$OnKeyListener;

    .line 575
    return-void
.end method

.method public static a(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)Lcom/android/mail/browse/ad;
    .locals 2

    .prologue
    .line 665
    new-instance v0, Lcom/android/mail/browse/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ad;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;B)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)Lcom/android/mail/browse/ae;
    .locals 6

    .prologue
    .line 660
    new-instance v0, Lcom/android/mail/browse/ae;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ae;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/ag;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqM:Lcom/android/mail/browse/ag;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/m;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->alu:Lcom/android/mail/browse/m;

    return-object v0
.end method

.method static synthetic d(Lcom/android/mail/browse/aa;)Lcom/android/mail/ui/aP;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqO:Lcom/android/mail/ui/aP;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mail/browse/aa;)Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqU:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/K;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqN:Lcom/android/mail/browse/K;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mail/browse/aa;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqQ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aH;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqJ:Lcom/android/mail/browse/aH;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mail/browse/aa;)Lcom/android/mail/b;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqL:Lcom/android/mail/b;

    return-object v0
.end method

.method static synthetic j(Lcom/android/mail/browse/aa;)Lcom/android/mail/utils/aj;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqS:Lcom/android/mail/utils/aj;

    return-object v0
.end method

.method static synthetic k(Lcom/android/mail/browse/aa;)Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqI:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic l(Lcom/android/mail/browse/aa;)Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->c:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic m(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aE;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqK:Lcom/android/mail/browse/aE;

    return-object v0
.end method

.method static synthetic n(Lcom/android/mail/browse/aa;)Lcom/android/mail/browse/aY;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqP:Lcom/android/mail/browse/aY;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ConversationMessage;ZZ)I
    .locals 6

    .prologue
    .line 650
    new-instance v0, Lcom/android/mail/browse/ae;

    iget-object v2, p0, Lcom/android/mail/browse/aa;->aqH:Lcom/android/mail/e;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ae;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/mail/browse/V;)I
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 631
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/V;->cb(I)V

    .line 632
    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    return v0
.end method

.method public final a(Lcom/android/mail/browse/ae;)I
    .locals 1

    .prologue
    .line 646
    new-instance v0, Lcom/android/mail/browse/ab;

    invoke-direct {v0, p0, p1}, Lcom/android/mail/browse/ab;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)V

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;ZLjava/util/Set;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 762
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "overlay_item_root"

    if-eq v0, v1, :cond_1

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 765
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 797
    :goto_1
    return-object v0

    .line 769
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 773
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    iget-object v0, v0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    if-ne v0, p1, :cond_6

    .line 775
    if-eqz p2, :cond_4

    if-ltz v1, :cond_4

    .line 776
    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 777
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    .line 778
    invoke-virtual {v0}, Lcom/android/mail/browse/V;->qv()Landroid/view/View;

    move-result-object v3

    .line 779
    iget-object v4, v0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    .line 781
    goto :goto_1

    :cond_3
    move v1, v3

    .line 785
    :cond_4
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_5

    .line 786
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    .line 787
    invoke-virtual {v0}, Lcom/android/mail/browse/V;->qv()Landroid/view/View;

    move-result-object v1

    .line 788
    iget-object v4, v0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/android/mail/browse/V;->agR:Landroid/view/View;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 790
    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 794
    goto :goto_1

    .line 772
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 797
    goto :goto_1
.end method

.method public final a(Lcom/android/mail/browse/V;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 611
    if-nez p2, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/mail/browse/aa;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mail/browse/aa;->wC:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, p3}, Lcom/android/mail/browse/V;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 616
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/android/mail/browse/V;->i(Landroid/view/View;Z)V

    .line 618
    return-object p2
.end method

.method public final a(Lcom/android/mail/browse/ConversationMessage;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/ConversationMessage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    .line 692
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/V;->a(Lcom/android/mail/browse/ConversationMessage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/V;->b(Lcom/android/mail/browse/ConversationMessage;)V

    .line 694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 697
    :cond_1
    return-void
.end method

.method public final a(Lcom/android/mail/browse/af;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/af;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/V;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 675
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 686
    :cond_0
    return-void

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 680
    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 683
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/V;->cb(I)V

    .line 683
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Lcom/android/mail/browse/ae;)I
    .locals 2

    .prologue
    .line 654
    new-instance v0, Lcom/android/mail/browse/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ad;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;B)V

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/android/mail/browse/V;)Z
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p1}, Lcom/android/mail/browse/V;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 739
    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 740
    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    invoke-virtual {v0}, Lcom/android/mail/browse/V;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(IIZ)I
    .locals 6

    .prologue
    .line 669
    new-instance v0, Lcom/android/mail/browse/af;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/af;-><init>(Lcom/android/mail/browse/aa;IIZB)V

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final cd(I)Lcom/android/mail/browse/V;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 638
    invoke-virtual {p0}, Lcom/android/mail/browse/aa;->notifyDataSetChanged()V

    .line 639
    return-void
.end method

.method public final d(Lcom/android/mail/providers/Conversation;)I
    .locals 2

    .prologue
    .line 642
    new-instance v0, Lcom/android/mail/browse/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ac;-><init>(Lcom/android/mail/browse/aa;Lcom/android/mail/providers/Conversation;B)V

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 599
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    invoke-virtual {v0}, Lcom/android/mail/browse/V;->getType()I

    move-result v0

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/mail/browse/aa;->wC:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 589
    const/16 v0, 0x8

    return v0
.end method

.method public final qF()Lcom/android/mail/e;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqH:Lcom/android/mail/e;

    return-object v0
.end method

.method public final qG()Lcom/android/mail/browse/ab;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 703
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 704
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 705
    sget-object v2, Lcom/android/mail/browse/aa;->mW:Ljava/lang/String;

    const-string v3, "not enough items in the adapter. count: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 714
    :cond_0
    :goto_0
    return-object v0

    .line 708
    :cond_1
    iget-object v2, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ab;

    .line 709
    if-nez v0, :cond_0

    .line 710
    sget-object v2, Lcom/android/mail/browse/aa;->mW:Ljava/lang/String;

    const-string v3, "removed wrong overlay item: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 711
    goto :goto_0
.end method

.method public final qH()Lcom/android/mail/browse/ab;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 718
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 719
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 720
    sget-object v2, Lcom/android/mail/browse/aa;->mW:Ljava/lang/String;

    const-string v3, "not enough items in the adapter. count: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 728
    :goto_0
    return-object v0

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    .line 725
    :try_start_0
    check-cast v0, Lcom/android/mail/browse/ab;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v2

    sget-object v2, Lcom/android/mail/browse/aa;->mW:Ljava/lang/String;

    const-string v3, "Last item is not a conversation footer. type: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/mail/browse/V;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 728
    goto :goto_0
.end method

.method public final qI()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 747
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/V;

    invoke-virtual {v0}, Lcom/android/mail/browse/V;->qv()Landroid/view/View;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    .line 754
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final qJ()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqT:Landroid/support/v4/e/a;

    return-object v0
.end method

.method public final qo()Landroid/view/View$OnKeyListener;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/mail/browse/aa;->aqU:Landroid/view/View$OnKeyListener;

    return-object v0
.end method
