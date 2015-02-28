.class public final Lcom/android/mail/ui/aw;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/af;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/mail/ui/dE;
.implements Lcom/android/mail/ui/dj;
.implements Lcom/android/mail/ui/dl;


# static fields
.field private static aGI:I

.field private static aGJ:I

.field private static aGK:I

.field private static aHf:J

.field private static anN:Z

.field private static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aFU:Lcom/android/mail/ui/SwipeableListView;

.field private aGL:Lcom/android/mail/ui/av;

.field private aGM:Landroid/view/View;

.field private aGN:Landroid/widget/TextView;

.field private aGO:Ljava/lang/Runnable;

.field private aGP:Lcom/android/mail/c;

.field private aGQ:Lcom/android/mail/ui/ae;

.field private aGR:Lcom/android/mail/browse/ConversationListFooterView;

.field private aGS:Lcom/android/mail/ui/ConversationListEmptyView;

.field private aGT:Landroid/view/View;

.field private aGU:Landroid/widget/TextView;

.field private aGV:Landroid/view/View;

.field private aGW:Landroid/view/View;

.field private aGX:Lcom/android/mail/ui/bx;

.field private aGY:Landroid/database/DataSetObserver;

.field private aGZ:I

.field private aHa:I

.field private aHb:Z

.field private aHc:I

.field private aHd:Z

.field private aHe:I

.field private final aHg:Ljava/lang/Runnable;

.field private final aHh:Ljava/lang/Runnable;

.field private aHi:Z

.field private aHj:Z

.field private aHk:Z

.field private aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

.field private final aHm:Lcom/android/mail/ui/aK;

.field private aob:Lcom/android/mail/ui/as;

.field private aql:Lcom/android/mail/providers/o;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private atH:Lcom/android/mail/ui/ConversationCheckedSet;

.field private atK:Lcom/android/mail/ui/aP;

.field private final atL:Lcom/android/mail/providers/d;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    sput v0, Lcom/android/mail/ui/aw;->aGK:I

    .line 176
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mail/ui/aw;->aHf:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGO:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/android/mail/ui/ax;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/ax;-><init>(Lcom/android/mail/ui/aw;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->atL:Lcom/android/mail/providers/d;

    .line 224
    new-instance v0, Lcom/android/mail/ui/ay;

    const-string v1, "LoadingRunnable"

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/ui/ay;-><init>(Lcom/android/mail/ui/aw;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aHg:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/android/mail/ui/az;

    const-string v1, "CancelLoading"

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/ui/az;-><init>(Lcom/android/mail/ui/aw;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aHh:Ljava/lang/Runnable;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHk:Z

    .line 1200
    new-instance v0, Lcom/android/mail/ui/aD;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aD;-><init>(Lcom/android/mail/ui/aw;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aHm:Lcom/android/mail/ui/aK;

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/aw;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method private a(Lcom/android/mail/providers/Conversation;I)V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 912
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/android/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v2

    .line 914
    if-eqz v0, :cond_1

    if-lt p2, v1, :cond_1

    if-le p2, v2, :cond_3

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/SwipeableListView;->setSelection(I)V

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->s(Lcom/android/mail/providers/Conversation;)V

    .line 924
    :cond_2
    return-void

    .line 920
    :cond_3
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/android/mail/ui/SwipeableListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yw()V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/aw;Z)Z
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/mail/ui/aw;->aHj:Z

    return p1
.end method

.method static synthetic b(Lcom/android/mail/ui/aw;)Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v0

    return v0
.end method

.method private bt(Z)Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-interface {v0, v1, p1}, Lcom/android/mail/ui/av;->c(Lcom/android/mail/providers/Folder;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/android/mail/c;)Lcom/android/mail/ui/aw;
    .locals 4

    .prologue
    .line 289
    new-instance v0, Lcom/android/mail/ui/aw;

    invoke-direct {v0}, Lcom/android/mail/ui/aw;-><init>()V

    .line 290
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 291
    const-string v2, "conversation-list"

    invoke-virtual {p0}, Lcom/android/mail/c;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/aw;->setArguments(Landroid/os/Bundle;)V

    .line 293
    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/ui/aw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 82
    invoke-direct {p0, v2}, Lcom/android/mail/ui/aw;->bt(Z)Z

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationListEmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGW:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private cR(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 850
    sget-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v1, "ConversationListFragment.viewConversation(%d)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 852
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/mail/browse/u;

    if-eqz v1, :cond_0

    .line 854
    check-cast v0, Lcom/android/mail/browse/u;

    .line 855
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 860
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->getPosition()I

    move-result v0

    iput v0, v1, Lcom/android/mail/providers/Conversation;->position:I

    .line 861
    invoke-virtual {p0, v1, v6}, Lcom/android/mail/ui/aw;->d(Lcom/android/mail/providers/Conversation;Z)V

    .line 862
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v0, v1, v5}, Lcom/android/mail/ui/av;->c(Lcom/android/mail/providers/Conversation;Z)V

    .line 868
    :goto_0
    return-void

    .line 864
    :cond_0
    sget-object v1, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v2, "unable to open conv at cursor pos=%s item=%s getPositionOffset=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v4, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/mail/ui/aw;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHh:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mail/ui/aw;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/ui/aw;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHi:Z

    return v0
.end method

.method static synthetic g(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yv()V

    return-void
.end method

.method static synthetic h(Lcom/android/mail/ui/aw;)Lcom/android/mail/ui/SwipeableListView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mail/ui/aw;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGO:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/android/mail/ui/aw;)Lcom/android/mail/ui/MailSwipeRefreshLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    return-object v0
.end method

.method private final setChoiceMode(I)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->setChoiceMode(I)V

    .line 558
    return-void
.end method

.method private vM()Lcom/android/mail/browse/u;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v0}, Lcom/android/mail/ui/av;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private yA()V
    .locals 2

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/mail/ui/aw;->aHk:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/mail/ui/av;->ci(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1237
    if-eqz v0, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1240
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHk:Z

    .line 1242
    :cond_1
    return-void
.end method

.method private yB()V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/aw;->aHc:I

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget v1, p0, Lcom/android/mail/ui/aw;->aHc:I

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setNextFocusLeftId(I)V

    .line 1335
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget v1, p0, Lcom/android/mail/ui/aw;->aHc:I

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setNextFocusRightId(I)V

    .line 1337
    :cond_0
    return-void
.end method

.method static synthetic yC()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/mail/ui/aw;->aGJ:I

    return v0
.end method

.method static synthetic yD()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/mail/ui/aw;->aGK:I

    return v0
.end method

.method private ym()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 180
    invoke-direct {p0, v2}, Lcom/android/mail/ui/aw;->bt(Z)Z

    .line 181
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationListEmptyView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGW:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method

.method private yv()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v2

    .line 1042
    iget-object v3, p0, Lcom/android/mail/ui/aw;->aGR:Lcom/android/mail/browse/ConversationListFooterView;

    invoke-virtual {v3, v2}, Lcom/android/mail/browse/ConversationListFooterView;->n(Lcom/android/mail/browse/u;)Z

    move-result v2

    .line 1044
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yx()V

    .line 1045
    iget-object v3, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v3, v2}, Lcom/android/mail/ui/ae;->bs(Z)V

    .line 1046
    iput-boolean v1, p0, Lcom/android/mail/ui/aw;->aHi:Z

    .line 1047
    iget-object v2, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aHg:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1051
    iget-object v2, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    iget v2, v2, Lcom/android/mail/providers/Account;->ayF:I

    if-eqz v2, :cond_0

    .line 1052
    invoke-direct {p0, v1}, Lcom/android/mail/ui/aw;->bt(Z)Z

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v2, v6}, Lcom/android/mail/ui/SwipeableListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    invoke-virtual {v2, v6}, Lcom/android/mail/ui/ConversationListEmptyView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGW:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGU:Landroid/widget/TextView;

    const v3, 0x7f0901e7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/android/mail/ui/aw;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGT:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v2}, Lcom/android/mail/ui/ae;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1054
    invoke-direct {p0, v0}, Lcom/android/mail/ui/aw;->bt(Z)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v4, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    iget-object v4, v4, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v5}, Lcom/android/mail/ui/ae;->qJ()Landroid/support/v4/e/a;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/mail/ui/ConversationListEmptyView;->a(Lcom/android/mail/providers/Folder;Ljava/lang/String;Landroid/support/v4/e/a;Z)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v6}, Lcom/android/mail/ui/SwipeableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationListEmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGW:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGT:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1056
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->ym()V

    goto :goto_0
.end method

.method private yw()V
    .locals 6

    .prologue
    const v0, 0x7f0d0277

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 1061
    iget-object v2, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-static {v2}, Lcom/android/mail/providers/Settings;->b(Lcom/android/mail/providers/Settings;)I

    move-result v2

    .line 1062
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->bz(Z)V

    .line 1109
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->v(Lcom/android/mail/providers/Account;)V

    .line 1110
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->p(Lcom/android/mail/providers/Folder;)V

    .line 1111
    return-void

    .line 1068
    :cond_1
    iget-object v3, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mail/ui/SwipeableListView;->bz(Z)V

    .line 1069
    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-nez v3, :cond_2

    .line 1107
    :goto_1
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/SwipeableListView;->di(I)V

    goto :goto_0

    .line 1072
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 1102
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->bz(Z)V

    move v0, v1

    .line 1103
    goto :goto_1

    .line 1076
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v5}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1077
    const v0, 0x7f0d027a

    goto :goto_1

    .line 1079
    :cond_4
    const v0, 0x7f0d0278

    .line 1081
    goto :goto_1

    .line 1084
    :pswitch_1
    iget-object v2, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2, v5}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->uT()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1086
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1087
    const v0, 0x7f0d0276

    .line 1088
    goto :goto_1

    .line 1089
    :cond_5
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2, v5}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1072
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private yx()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1175
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    sget-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v1, "CLF.checkSyncStatus still syncing"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1183
    :goto_0
    return-void

    .line 1180
    :cond_0
    sget-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v1, "CLF.checkSyncStatus done syncing"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1181
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->i(Z)V

    goto :goto_0
.end method

.method private yz()V
    .locals 3

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1227
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/mail/ui/av;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method


# virtual methods
.method public final b(ILjava/util/Collection;Lcom/android/mail/ui/br;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/br;",
            ")V"
        }
    .end annotation

    .prologue
    .line 971
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 972
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/mail/providers/Conversation;->azn:Z

    goto :goto_0

    .line 974
    :cond_0
    new-instance v0, Lcom/android/mail/ui/aC;

    invoke-direct {v0, p0, p3}, Lcom/android/mail/ui/aC;-><init>(Lcom/android/mail/ui/aw;Lcom/android/mail/ui/br;)V

    .line 980
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->Aj()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1, p2, v0}, Lcom/android/mail/ui/SwipeableListView;->c(Ljava/util/Collection;Lcom/android/mail/ui/dk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    sget-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v1, "ConversationListFragment.requestDelete: listView failed to destroy items."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 985
    invoke-interface {p3}, Lcom/android/mail/ui/br;->wJ()V

    .line 992
    :cond_1
    :goto_1
    return-void

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1, p2, v0}, Lcom/android/mail/ui/ae;->b(Ljava/util/Collection;Lcom/android/mail/ui/dk;)V

    goto :goto_1
.end method

.method public final bo(Z)V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->bo(Z)V

    .line 1167
    :cond_0
    return-void
.end method

.method public final c(Lcom/android/mail/providers/Folder;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 995
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1000
    iget-boolean v2, p0, Lcom/android/mail/ui/aw;->aHi:Z

    if-nez v2, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aHg:Ljava/lang/Runnable;

    sget v4, Lcom/android/mail/ui/aw;->aGI:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHi:Z

    .line 1006
    :cond_0
    iput-object p1, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    .line 1007
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yw()V

    .line 1010
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    invoke-static {v3}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->setEnabled(Z)V

    .line 1012
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_2

    .line 1026
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1010
    goto :goto_0

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/ae;->d(Lcom/android/mail/providers/Folder;)V

    .line 1016
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGR:Lcom/android/mail/browse/ConversationListFooterView;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/ConversationListFooterView;->d(Lcom/android/mail/providers/Folder;)V

    .line 1017
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->vb()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGX:Lcom/android/mail/ui/bx;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-interface {v0, v2, v1}, Lcom/android/mail/ui/bx;->d(Lcom/android/mail/providers/Folder;Z)V

    .line 1022
    :cond_3
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yx()V

    .line 1025
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/browse/R;->c(Lcom/android/mail/providers/Folder;)V

    goto :goto_1
.end method

.method public final cI(I)V
    .locals 1

    .prologue
    .line 790
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-eqz v0, :cond_0

    .line 791
    invoke-static {p1}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->ys()V

    .line 796
    :cond_0
    return-void
.end method

.method public final cS(I)V
    .locals 0

    .prologue
    .line 1325
    iput p1, p0, Lcom/android/mail/ui/aw;->aHc:I

    .line 1326
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yB()V

    .line 1327
    return-void
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1198
    return-void
.end method

.method public final cq()V
    .locals 6

    .prologue
    .line 1249
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    const-string v2, "swipe_refresh"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1253
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/by;->we()V

    .line 1259
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xD()V

    .line 1261
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/as;->a(Lcom/android/mail/ui/ae;)V

    .line 1262
    return-void
.end method

.method public final d(Lcom/android/mail/providers/Conversation;Z)V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget v0, p1, Lcom/android/mail/providers/Conversation;->position:I

    .line 883
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 884
    invoke-virtual {p0, v0, p2}, Lcom/android/mail/ui/aw;->i(IZ)V

    .line 885
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/providers/Conversation;I)V

    goto :goto_0
.end method

.method public final i(IZ)V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 938
    :cond_0
    if-eqz p2, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/SwipeableListView;->smoothScrollToPosition(I)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 311
    iput-boolean v7, p0, Lcom/android/mail/ui/aw;->aHi:Z

    .line 312
    iput-boolean v10, p0, Lcom/android/mail/ui/aw;->aHj:Z

    .line 313
    sget-wide v0, Lcom/android/mail/ui/aw;->aHf:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/mail/ui/aw;->aHf:J

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 328
    instance-of v0, v1, Lcom/android/mail/ui/as;

    if-nez v0, :cond_1

    .line 329
    sget-object v0, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v2, "ConversationListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move-object v0, v1

    .line 332
    check-cast v0, Lcom/android/mail/ui/as;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    .line 336
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atL:Lcom/android/mail/providers/d;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v2}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    .line 337
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    .line 338
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yb()Lcom/android/mail/ui/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGX:Lcom/android/mail/ui/bx;

    .line 340
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 341
    const v0, 0x7f040051

    invoke-virtual {v12, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationListFooterView;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGR:Lcom/android/mail/browse/ConversationListFooterView;

    .line 343
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGR:Lcom/android/mail/browse/ConversationListFooterView;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/ConversationListFooterView;->a(Lcom/android/mail/browse/T;)V

    .line 344
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 350
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yh()Lcom/android/mail/ui/aF;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    iget-object v5, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mail/ui/aF;->a(Landroid/content/Context;Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 355
    :goto_0
    if-eqz v6, :cond_3

    .line 357
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 358
    invoke-interface {v0, v3, p1}, Lcom/android/mail/ui/aL;->a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move-object v6, v11

    .line 351
    goto :goto_0

    .line 362
    :cond_3
    new-instance v0, Lcom/android/mail/ui/ae;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v3}, Lcom/android/mail/ui/as;->wq()Lcom/android/mail/ui/ConversationCheckedSet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    iget-object v5, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/ui/ae;-><init>(Landroid/content/Context;Lcom/android/mail/browse/u;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/ui/as;Lcom/android/mail/ui/SwipeableListView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    .line 364
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGR:Lcom/android/mail/browse/ConversationListFooterView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ae;->ax(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    invoke-static {v0}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v0

    .line 367
    if-eqz v0, :cond_4

    .line 368
    const v0, 0x7f0400a7

    invoke-virtual {v12, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGM:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGM:Landroid/view/View;

    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGN:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGM:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ae;->ay(Landroid/view/View;)V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wq()Lcom/android/mail/ui/ConversationCheckedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 376
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SwipeableListView;->d(Lcom/android/mail/ui/ConversationCheckedSet;)V

    .line 377
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0, v7}, Lcom/android/mail/ui/ae;->bs(Z)V

    .line 378
    new-instance v0, Lcom/android/mail/ui/aA;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aA;-><init>(Lcom/android/mail/ui/aw;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aql:Lcom/android/mail/providers/o;

    .line 384
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aql:Lcom/android/mail/providers/o;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/o;->a(Lcom/android/mail/ui/by;)Lcom/android/mail/providers/Folder;

    .line 385
    new-instance v0, Lcom/android/mail/ui/aE;

    invoke-direct {v0, p0, v7}, Lcom/android/mail/ui/aE;-><init>(Lcom/android/mail/ui/aw;B)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGY:Landroid/database/DataSetObserver;

    .line 386
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->atK:Lcom/android/mail/ui/aP;

    .line 387
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atK:Lcom/android/mail/ui/aP;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGY:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/aP;->m(Landroid/database/DataSetObserver;)V

    .line 388
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    .line 391
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/aw;->aHe:I

    .line 393
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/mail/ui/aw;->aHe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 399
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aw;->cI(I)V

    .line 400
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 401
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/av;->wB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->Ah()V

    .line 407
    :goto_2
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    :cond_5
    :goto_3
    return-void

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->Ai()V

    goto :goto_2

    .line 411
    :cond_7
    if-nez v2, :cond_b

    move v0, v7

    :goto_4
    iput v0, p0, Lcom/android/mail/ui/aw;->aGZ:I

    .line 414
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/mail/browse/u;->pf()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 415
    invoke-virtual {v2}, Lcom/android/mail/browse/u;->sync()V

    .line 420
    :cond_8
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-eqz v0, :cond_c

    move v0, v10

    .line 421
    :goto_5
    if-eqz p1, :cond_9

    .line 425
    const-string v1, "choice-mode-key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    const-string v1, "list-state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 428
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->clearChoices()V

    .line 431
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/mail/ui/aw;->setChoiceMode(I)V

    .line 434
    iput-boolean v10, p0, Lcom/android/mail/ui/aw;->aHb:Z

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/by;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aw;->c(Lcom/android/mail/providers/Folder;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->yu()V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    iget-object v6, v0, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    if-eqz v6, :cond_a

    iget v0, v6, Lcom/android/mail/providers/Folder;->aAg:I

    if-lez v0, :cond_d

    iget v0, v6, Lcom/android/mail/providers/Folder;->aAg:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-long v0, v0

    move-wide v4, v0

    :goto_6
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_folder"

    invoke-virtual {v6}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget v4, v6, Lcom/android/mail/providers/Folder;->aAg:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 435
    :cond_a
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->zy()Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_5

    .line 438
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1, v11}, Lcom/android/mail/ui/as;->b(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 439
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1, v0}, Lcom/android/mail/ui/as;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_3

    .line 411
    :cond_b
    invoke-virtual {v2}, Lcom/android/mail/browse/u;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_c
    move v0, v7

    .line 420
    goto :goto_5

    :cond_d
    move-wide v4, v8

    .line 434
    goto :goto_6
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGV:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    .line 1342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1343
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/aw;->startActivity(Landroid/content/Intent;)V

    .line 1345
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/aw;->aGK:I

    .line 464
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/aw;->aGI:I

    .line 465
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/mail/ui/aw;->aGJ:I

    .line 466
    new-instance v0, Lcom/android/mail/ui/aB;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aB;-><init>(Lcom/android/mail/ui/aw;)V

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGO:Ljava/lang/Runnable;

    .line 475
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 476
    const-string v1, "conversation-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/c;->j(Landroid/os/Bundle;)Lcom/android/mail/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    .line 477
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    iget-object v0, v0, Lcom/android/mail/c;->account:Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aw;->setRetainInstance(Z)V

    .line 480
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 508
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 509
    const v0, 0x7f0d009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationListEmptyView;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGS:Lcom/android/mail/ui/ConversationListEmptyView;

    .line 510
    const v0, 0x7f0d0201

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGT:Landroid/view/View;

    .line 511
    const v0, 0x7f0d0203

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGU:Landroid/widget/TextView;

    .line 512
    const v0, 0x7f0d0204

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGV:Landroid/view/View;

    .line 513
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGV:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v0, 0x7f0d013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aGW:Landroid/view/View;

    .line 515
    const v0, 0x7f0d013c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/SwipeableListView;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    .line 516
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->setHeaderDividersEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->bz(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->a(Lcom/android/mail/ui/dj;)V

    .line 520
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->a(Lcom/android/mail/ui/dl;)V

    .line 521
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/SwipeableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 525
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/aw;->aHc:I

    if-nez v0, :cond_0

    .line 526
    const v0, 0x7f0d01b1

    iput v0, p0, Lcom/android/mail/ui/aw;->aHc:I

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yB()V

    .line 531
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    const v0, 0x7f0d013b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->ym()V

    .line 539
    if-eqz p3, :cond_2

    const-string v0, "list-state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const-string v2, "list-state"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 542
    :cond_2
    const v0, 0x7f0d013a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/MailSwipeRefreshLayout;

    iput-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    .line 544
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->b([I)V

    .line 547
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->a(Landroid/support/v4/widget/af;)V

    .line 548
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->aA(Landroid/view/View;)V

    .line 550
    return-object v1

    .line 544
    nop

    :array_0
    .array-data 4
        0x7f0a00bf
        0x7f0a00c0
        0x7f0a00c1
        0x7f0a00c2
    .end array-data
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 586
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->destroy()V

    .line 593
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/SwipeableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->b(Lcom/android/mail/ui/dE;)V

    .line 596
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aql:Lcom/android/mail/providers/o;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aql:Lcom/android/mail/providers/o;

    invoke-virtual {v0}, Lcom/android/mail/providers/o;->um()V

    .line 598
    iput-object v2, p0, Lcom/android/mail/ui/aw;->aql:Lcom/android/mail/providers/o;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGY:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atK:Lcom/android/mail/ui/aP;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGY:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/aP;->n(Landroid/database/DataSetObserver;)V

    .line 602
    iput-object v2, p0, Lcom/android/mail/ui/aw;->aGY:Landroid/database/DataSetObserver;

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 605
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->qD()V

    .line 606
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 607
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 659
    instance-of v0, p2, Lcom/android/mail/browse/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    check-cast p2, Lcom/android/mail/browse/bd;

    invoke-interface {p2}, Lcom/android/mail/browse/bd;->pB()Z

    :goto_2
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aw;->bo(Z)V

    .line 660
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 659
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "peek"

    iget-object v3, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationCheckedSet;->size()I

    move-result v3

    int-to-long v4, v3

    move-object v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "open_conv_from_list"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/mail/ui/aw;->cR(I)V

    goto :goto_2
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 634
    instance-of v0, p2, Lcom/android/mail/browse/ConversationItemView;

    if-nez v0, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 637
    :goto_0
    return v0

    :cond_0
    check-cast p2, Lcom/android/mail/browse/ConversationItemView;

    const-string v0, "long_press"

    invoke-virtual {p2, v0}, Lcom/android/mail/browse/ConversationItemView;->bh(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 691
    instance-of v2, p1, Lcom/android/mail/ui/SwipeableListView;

    if-eqz v2, :cond_6

    .line 692
    check-cast p1, Lcom/android/mail/ui/SwipeableListView;

    .line 694
    invoke-static {p1}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v2

    invoke-static {p2, v2}, Lcom/android/mail/utils/C;->m(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 695
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 696
    iget-boolean v2, p0, Lcom/android/mail/ui/aw;->aHd:Z

    if-eqz v2, :cond_1

    .line 697
    invoke-virtual {p1}, Lcom/android/mail/ui/SwipeableListView;->getSelectedItemPosition()I

    move-result v2

    .line 698
    if-gez v2, :cond_0

    .line 701
    invoke-virtual {p1}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v2

    .line 703
    :cond_0
    if-ltz v2, :cond_1

    .line 706
    invoke-direct {p0, v2}, Lcom/android/mail/ui/aw;->cR(I)V

    .line 707
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v2}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/aw;->bo(Z)V

    .line 711
    :cond_1
    iput-boolean v1, p0, Lcom/android/mail/ui/aw;->aHd:Z

    .line 729
    :cond_2
    :goto_0
    return v0

    .line 712
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 713
    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHd:Z

    goto :goto_0

    .line 716
    :cond_4
    const/16 v2, 0x13

    if-eq p2, v2, :cond_5

    const/16 v2, 0x14

    if-ne p2, v2, :cond_6

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 719
    invoke-virtual {p1}, Lcom/android/mail/ui/SwipeableListView;->getSelectedItemPosition()I

    move-result v0

    .line 720
    if-ltz v0, :cond_6

    .line 721
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v2, v0}, Lcom/android/mail/ui/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/android/mail/browse/u;

    if-eqz v2, :cond_6

    .line 723
    check-cast v0, Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 724
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v2, v0}, Lcom/android/mail/ui/av;->o(Lcom/android/mail/providers/Conversation;)V

    :cond_6
    move v0, v1

    .line 729
    goto :goto_0
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 755
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 757
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aHm:Lcom/android/mail/ui/aK;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->b(Lcom/android/mail/ui/aK;)V

    .line 759
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yz()V

    .line 760
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 734
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 736
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/aw;->aHb:Z

    .line 740
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->ym()V

    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pj()V

    .line 747
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yA()V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aHm:Lcom/android/mail/ui/aK;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Lcom/android/mail/ui/aK;)V

    .line 751
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 764
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 765
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "list-state"

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 767
    const-string v0, "choice-mode-key"

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->l(Landroid/os/Bundle;)V

    .line 773
    :cond_1
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/mail/ui/SwipeableListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1351
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/ui/SwipeableListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getView()Landroid/view/View;

    move-result-object v0

    .line 1368
    if-eqz v0, :cond_0

    .line 1370
    if-nez p2, :cond_1

    .line 1371
    iget v1, p0, Lcom/android/mail/ui/aw;->aHe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 4

    .prologue
    .line 777
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 778
    iget-object v0, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGO:Ljava/lang/Runnable;

    sget v2, Lcom/android/mail/ui/aw;->aGK:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "ConversationListFragment"

    invoke-interface {v0, v1}, Lcom/android/mail/a/d;->ba(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 784
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 785
    iget-object v0, p0, Lcom/android/mail/ui/aw;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    return-void
.end method

.method public final p(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    iget v0, p1, Lcom/android/mail/providers/Conversation;->position:I

    .line 898
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/providers/Conversation;I)V

    goto :goto_0
.end method

.method public final pF()Lcom/android/mail/ui/SwipeableListView;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    return-object v0
.end method

.method public final t(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/mail/ui/aw;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/aP;->q(Ljava/util/Collection;)V

    .line 1172
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    if-nez v1, :cond_0

    .line 503
    :goto_0
    return-object v0

    .line 488
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 490
    const-string v0, " mListAdapter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    const-string v0, " folder="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGP:Lcom/android/mail/c;

    iget-object v0, v0, Lcom/android/mail/c;->ajS:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    if-eqz v0, :cond_1

    .line 495
    const-string v0, " selectedPos="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->Al()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    const-string v0, " listSelectedPos="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    const-string v0, " isListInTouchMode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->isInTouchMode()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    :cond_1
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final wo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 799
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    .line 800
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mail/ui/ae;->wo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    iget-object v2, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v2}, Lcom/android/mail/ui/SwipeableListView;->Ak()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    :goto_1
    if-eqz v0, :cond_0

    .line 805
    sget-object v2, Lcom/android/mail/ui/aw;->mW:Ljava/lang/String;

    const-string v3, "CLF.isAnimating=true due to scrolling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 803
    goto :goto_1
.end method

.method public final yn()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->setEnabled(Z)V

    .line 270
    return-void
.end method

.method public final yo()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->setEnabled(Z)V

    .line 275
    return-void
.end method

.method public final yp()Lcom/android/mail/ui/ae;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    return-object v0
.end method

.method public final yq()V
    .locals 1

    .prologue
    .line 565
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->ys()V

    .line 569
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/aw;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public final yr()V
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-nez v0, :cond_0

    .line 581
    :goto_0
    return-void

    .line 580
    :cond_0
    sget-boolean v0, Lcom/android/mail/ui/aw;->anN:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mail/ui/aw;->setChoiceMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final ys()V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v0

    .line 812
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/SwipeableListView;->setItemChecked(IZ)V

    .line 815
    :cond_0
    return-void
.end method

.method public final yt()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 960
    return-void
.end method

.method public final yu()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1033
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    if-nez v0, :cond_2

    .line 1035
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mail/ui/aw;->aHj:Z

    if-eqz v0, :cond_1

    .line 1036
    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yv()V

    .line 1038
    :cond_1
    return-void

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v0}, Lcom/android/mail/ui/av;->vM()Lcom/android/mail/browse/u;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yz()V

    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0, v7}, Lcom/android/mail/ui/ae;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    if-nez v7, :cond_a

    move v0, v6

    :goto_1
    iget v1, p0, Lcom/android/mail/ui/aw;->aGZ:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/android/mail/ui/aw;->aGZ:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGQ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    :cond_4
    iput v0, p0, Lcom/android/mail/ui/aw;->aGZ:I

    if-eqz v7, :cond_c

    iget-boolean v0, p0, Lcom/android/mail/ui/aw;->aHb:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/mail/ui/aw;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "empty_state"

    const-string v2, "post_label_change"

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "cold_start_to_list"

    const-string v2, "cold_start_to_list"

    const-string v3, "from_launcher"

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/by;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uS()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "search_to_list"

    const-string v2, "search_to_list"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput-boolean v6, p0, Lcom/android/mail/ui/aw;->aHb:Z

    :cond_7
    :goto_2
    invoke-virtual {v7}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/aw;->aHa:I

    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aob:Lcom/android/mail/ui/as;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGM:Landroid/view/View;

    if-nez v1, :cond_d

    :cond_8
    :goto_4
    if-lez v0, :cond_9

    invoke-virtual {v7}, Lcom/android/mail/browse/u;->kc()V

    invoke-direct {p0}, Lcom/android/mail/ui/aw;->yA()V

    :cond_9
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v0}, Lcom/android/mail/ui/av;->wm()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGL:Lcom/android/mail/ui/av;

    invoke-interface {v1}, Lcom/android/mail/ui/av;->wn()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/aw;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v1}, Lcom/android/mail/ui/SwipeableListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, v8}, Lcom/android/mail/ui/aw;->d(Lcom/android/mail/providers/Conversation;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Lcom/android/mail/browse/u;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v7}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/mail/ui/aw;->aHa:I

    if-lez v0, :cond_7

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "empty_state"

    const-string v2, "post_delete"

    iget-object v3, p0, Lcom/android/mail/ui/aw;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_c
    iput v6, p0, Lcom/android/mail/ui/aw;->aHa:I

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/mail/ui/aw;->aGN:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013f

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method protected final yy()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/mail/ui/aw;->aHl:Lcom/android/mail/ui/MailSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailSwipeRefreshLayout;->i(Z)V

    .line 1191
    return-void
.end method
