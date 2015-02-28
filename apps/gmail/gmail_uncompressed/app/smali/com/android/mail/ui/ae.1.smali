.class public final Lcom/android/mail/ui/ae;
.super Landroid/widget/SimpleCursorAdapter;
.source "SourceFile"


# static fields
.field private static aFB:I

.field private static aFC:I

.field private static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aFD:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aFE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aFF:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aFG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aFH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final aFI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mail/browse/aZ;",
            ">;"
        }
    .end annotation
.end field

.field private final aFJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mail/ui/LeaveBehindItem;",
            ">;"
        }
    .end annotation
.end field

.field private final aFK:Lcom/android/mail/ui/ConversationCheckedSet;

.field private aFL:Ljava/lang/Runnable;

.field protected aFM:J

.field private final aFN:Landroid/animation/Animator$AnimatorListener;

.field private aFO:Lcom/android/mail/ui/dk;

.field private final aFP:Lcom/android/mail/ui/dk;

.field private aFQ:Landroid/widget/Space;

.field private aFR:Landroid/view/View;

.field private aFS:Z

.field private aFT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final aFU:Lcom/android/mail/ui/SwipeableListView;

.field private final aFV:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mail/ui/LeaveBehindItem;",
            ">;"
        }
    .end annotation
.end field

.field private aFW:Z

.field private aFX:Z

.field private final aFY:Lcom/android/mail/providers/d;

.field private final aFZ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/mail/ui/aL;",
            ">;"
        }
    .end annotation
.end field

.field private final aGa:Lcom/android/mail/browse/Q;

.field private final aGb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/aL;",
            ">;"
        }
    .end annotation
.end field

.field private final aGc:Lcom/android/a/a;

.field private final akh:Lcom/android/mail/b/j;

.field private anX:Z

.field private final aob:Lcom/android/mail/ui/as;

.field private final aqT:Landroid/support/v4/e/a;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 69
    sput v0, Lcom/android/mail/ui/ae;->aFB:I

    .line 70
    sput v0, Lcom/android/mail/ui/ae;->aFC:I

    .line 245
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/u;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/ui/as;Lcom/android/mail/ui/SwipeableListView;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/browse/u;",
            "Lcom/android/mail/ui/ConversationCheckedSet;",
            "Lcom/android/mail/ui/as;",
            "Lcom/android/mail/ui/SwipeableListView;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/aL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 254
    sget-object v4, Lcom/android/mail/providers/E;->aCx:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 95
    new-instance v0, Lcom/android/mail/ui/af;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/af;-><init>(Lcom/android/mail/ui/ae;)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFN:Landroid/animation/Animator$AnimatorListener;

    .line 155
    new-instance v0, Lcom/android/mail/ui/ag;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/ag;-><init>(Lcom/android/mail/ui/ae;)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFP:Lcom/android/mail/ui/dk;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    .line 174
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    .line 184
    new-instance v0, Lcom/android/mail/ui/ah;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/ah;-><init>(Lcom/android/mail/ui/ae;)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFY:Lcom/android/mail/providers/d;

    .line 199
    new-instance v0, Lcom/android/mail/browse/Q;

    invoke-direct {v0}, Lcom/android/mail/browse/Q;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aGa:Lcom/android/mail/browse/Q;

    .line 208
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aqT:Landroid/support/v4/e/a;

    .line 255
    iput-object p1, p0, Lcom/android/mail/ui/ae;->mContext:Landroid/content/Context;

    .line 256
    iput-object p3, p0, Lcom/android/mail/ui/ae;->aFK:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 257
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFY:Lcom/android/mail/providers/d;

    invoke-interface {p4}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ae;->q(Lcom/android/mail/providers/Account;)Z

    .line 258
    iput-object p4, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    .line 259
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004f

    invoke-virtual {v0, v1, p5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFQ:Landroid/widget/Space;

    .line 261
    iput-boolean v6, p0, Lcom/android/mail/ui/ae;->aFS:Z

    .line 262
    iput-object p5, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    .line 264
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yk()Lcom/android/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aGc:Lcom/android/a/a;

    .line 266
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/ui/ae;->aGc:Lcom/android/a/a;

    invoke-interface {v0, v1, v3}, Lcom/android/mail/ui/as;->a(Landroid/content/ContentResolver;Lcom/android/a/a;)Lcom/android/mail/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ae;->akh:Lcom/android/mail/b/j;

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->mHandler:Landroid/os/Handler;

    .line 270
    sget v0, Lcom/android/mail/ui/ae;->aFB:I

    if-ne v0, v2, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 272
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/ae;->aFB:I

    .line 273
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/mail/ui/ae;->aFC:I

    .line 275
    :cond_0
    if-eqz p6, :cond_1

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 282
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 286
    invoke-interface {v0, p0}, Lcom/android/mail/ui/aL;->j(Lcom/android/mail/ui/ae;)V

    goto :goto_1

    .line 278
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    goto :goto_0

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xH()V

    .line 289
    return-void
.end method

.method private S(J)Z
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/u;->N(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private U(J)Z
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private V(J)Z
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 750
    iput p1, p2, Lcom/android/mail/providers/Conversation;->position:I

    .line 751
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aZ;

    .line 752
    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0, p1, p3, p2}, Lcom/android/mail/ui/ae;->a(ILandroid/view/ViewGroup;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/aZ;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFN:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, p4}, Lcom/android/mail/browse/aZ;->b(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 758
    :cond_0
    return-object v0
.end method

.method private a(ILandroid/view/ViewGroup;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/aZ;
    .locals 10

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aZ;

    .line 791
    invoke-virtual {v0}, Lcom/android/mail/browse/aZ;->reset()V

    .line 792
    iget-object v2, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    iget-object v3, p0, Lcom/android/mail/ui/ae;->aFK:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v4, p0, Lcom/android/mail/ui/ae;->aqp:Lcom/android/mail/providers/Folder;

    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xC()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/mail/ui/ae;->anX:Z

    iget-boolean v7, p0, Lcom/android/mail/ui/ae;->aFW:Z

    iget-boolean v8, p0, Lcom/android/mail/ui/ae;->aFX:Z

    move-object v1, p3

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/browse/aZ;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;)V

    .line 794
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    iget-wide v2, p3, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/ae;Ljava/lang/Object;Ljava/util/HashSet;)V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/mail/browse/ConversationItemView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationItemView;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/dk;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/mail/ui/dk;)V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFO:Lcom/android/mail/ui/dk;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFO:Lcom/android/mail/ui/dk;

    invoke-interface {v0}, Lcom/android/mail/ui/dk;->xM()V

    .line 854
    :cond_0
    iput-object p1, p0, Lcom/android/mail/ui/ae;->aFO:Lcom/android/mail/ui/dk;

    .line 855
    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/android/mail/ui/dk;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/dk;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 465
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 466
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v2

    .line 469
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 470
    iget v4, v0, Lcom/android/mail/providers/Conversation;->position:I

    if-lt v4, v1, :cond_0

    iget v4, v0, Lcom/android/mail/providers/Conversation;->position:I

    if-gt v4, v2, :cond_0

    .line 471
    iget-object v4, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    iget-wide v6, v0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-wide v4, v0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-interface {p2}, Lcom/android/mail/ui/dk;->xM()V

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/dk;)V

    .line 484
    :goto_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 485
    return-void

    .line 482
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/dk;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/mail/ui/ae;Lcom/android/mail/providers/Account;)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ae;->q(Lcom/android/mail/providers/Account;)Z

    move-result v0

    return v0
.end method

.method private b(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 765
    iput p1, p2, Lcom/android/mail/providers/Conversation;->position:I

    .line 766
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aZ;

    .line 767
    if-nez v0, :cond_0

    .line 770
    invoke-direct {p0, p1, p3, p2}, Lcom/android/mail/ui/ae;->a(ILandroid/view/ViewGroup;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/aZ;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFN:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, p4}, Lcom/android/mail/browse/aZ;->a(Landroid/animation/Animator$AnimatorListener;Z)V

    .line 773
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    return-object v0
.end method

.method private cO(I)I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method static synthetic d(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mail/ui/ae;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mail/ui/ae;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mail/ui/ae;)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/as;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    return-object v0
.end method

.method private q(Lcom/android/mail/providers/Account;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x4000

    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aCc:Z

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/android/mail/providers/Settings;->aCc:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    invoke-virtual {p1, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aBS:I

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v3, v3, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 227
    :goto_0
    iput-object p1, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    .line 228
    iget-object v3, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/android/mail/providers/Settings;->aCc:Z

    iput-boolean v3, p0, Lcom/android/mail/ui/ae;->aFW:Z

    .line 229
    iget-object v3, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-boolean v3, v3, Lcom/android/mail/providers/Settings;->aCd:Z

    iput-boolean v3, p0, Lcom/android/mail/ui/ae;->aFX:Z

    .line 230
    iget-object v3, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mail/ui/ae;->anX:Z

    .line 232
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v5, v5, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v1, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBR:I

    if-nez v1, :cond_2

    const-string v1, "reply"

    :goto_2
    invoke-interface {v2, v3, v1}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v1, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "unset"

    :goto_3
    invoke-interface {v2, v3, v1}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    .line 242
    return v0

    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    :cond_1
    move v2, v1

    .line 232
    goto :goto_1

    .line 234
    :cond_2
    const-string v1, "reply_all"

    goto :goto_2

    .line 238
    :pswitch_0
    const-string v1, "older"

    goto :goto_3

    :pswitch_1
    const-string v1, "newer"

    goto :goto_3

    :pswitch_2
    const-string v1, "list"

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private xA()V
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->xF()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zE()V

    .line 655
    :cond_0
    return-void
.end method

.method private xC()I
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aBS:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private xH()V
    .locals 5

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    :cond_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1055
    iget-object v2, p0, Lcom/android/mail/ui/ae;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/android/mail/browse/u;

    invoke-interface {v0, v2, v1}, Lcom/android/mail/ui/aL;->a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V

    .line 1057
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->yE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->getPosition()I

    move-result v1

    move v2, v1

    move-object v1, v0

    .line 1065
    :goto_0
    if-eqz v1, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1067
    iget-object v4, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1069
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    .line 1070
    goto :goto_0
.end method

.method private xx()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private xy()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final T(J)V
    .locals 3

    .prologue
    .line 587
    iget-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 588
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->xz()V

    .line 591
    return-void
.end method

.method public final W(J)V
    .locals 3

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    :goto_0
    iget-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 917
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 919
    :cond_0
    return-void

    .line 911
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 914
    :cond_2
    sget-object v0, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    const-string v1, "Trying to clear a non-existant leave behind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/ui/aL;)I
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;II)Lcom/android/mail/ui/LeaveBehindItem;
    .locals 8

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xA()V

    .line 575
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->id:J

    iput-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 576
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mail/ui/ai;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/ai;-><init>(Lcom/android/mail/ui/ae;)V

    iput-object v0, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zG()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/mail/ui/ae;->aFM:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-wide v2, v2, Lcom/android/mail/providers/Conversation;->id:J

    iget-wide v4, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zE()V

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zH()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/ae;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->xu()V

    .line 578
    iget-object v0, p0, Lcom/android/mail/ui/ae;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b8

    iget-object v2, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 580
    iget-object v2, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    iget-object v6, p0, Lcom/android/mail/ui/ae;->aqp:Lcom/android/mail/providers/Folder;

    move v1, p3

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/ui/LeaveBehindItem;->a(ILcom/android/mail/providers/Account;Lcom/android/mail/ui/ae;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Folder;I)V

    .line 581
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    return-object v0
.end method

.method public final a(Ljava/util/Collection;Lcom/android/mail/ui/dk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/dk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ae;->a(Ljava/util/Collection;Lcom/android/mail/ui/dk;Ljava/util/HashSet;)V

    .line 440
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method public final ax(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/mail/ui/ae;->aFR:Landroid/view/View;

    .line 898
    return-void
.end method

.method public final ay(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    return-void
.end method

.method public final b(Ljava/util/Collection;Lcom/android/mail/ui/dk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/dk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ae;->a(Ljava/util/Collection;Lcom/android/mail/ui/dk;Ljava/util/HashSet;)V

    .line 456
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public final bm(Z)V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1180
    invoke-interface {v0, p1}, Lcom/android/mail/ui/aL;->bm(Z)V

    goto :goto_0

    .line 1182
    :cond_0
    return-void
.end method

.method public final br(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 671
    const/4 v0, 0x0

    .line 672
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget-object v3, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zC()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_0

    .line 681
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 682
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 684
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 686
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 687
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 689
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 692
    :cond_4
    iget-object v2, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 693
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 697
    :cond_5
    iget-object v2, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 698
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->yM()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    move v2, v0

    .line 701
    goto :goto_2

    .line 703
    :cond_6
    if-eqz v2, :cond_7

    .line 704
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 706
    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public final bs(Z)V
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/mail/ui/ae;->aFS:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lcom/android/mail/ui/ae;->aFS:Z

    .line 892
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 894
    :cond_0
    return-void
.end method

.method public final cN(I)I
    .locals 6

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1132
    sub-int v2, p1, v1

    .line 1133
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1134
    iget-object v4, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1137
    if-gt v4, v2, :cond_0

    .line 1138
    add-int/lit8 v0, v0, 0x1

    .line 1133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    return v0
.end method

.method public final changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1099
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1100
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xH()V

    .line 1101
    return-void
.end method

.method public final changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1106
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xH()V

    .line 1107
    return-void
.end method

.method public final d(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/mail/ui/ae;->aqp:Lcom/android/mail/providers/Folder;

    .line 906
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ae;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 307
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFY:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 308
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 319
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 321
    if-nez v1, :cond_1

    .line 322
    iget-boolean v0, p0, Lcom/android/mail/ui/ae;->aFS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 327
    :goto_1
    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/ae;->cO(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 807
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 814
    :cond_0
    :goto_0
    return-object v0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 810
    iget-boolean v0, p0, Lcom/android/mail/ui/ae;->aFS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFR:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFQ:Landroid/widget/Space;

    goto :goto_0

    .line 811
    :cond_3
    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 719
    :cond_0
    const-wide/16 v0, -0x1

    .line 742
    :goto_0
    return-wide v0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/ae;->cO(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 724
    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v1, p1, v0

    .line 735
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    .line 736
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 737
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->ph()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_3

    .line 739
    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    goto :goto_0

    .line 742
    :cond_3
    invoke-super {p0, v1}, Landroid/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 407
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 408
    const/4 v0, 0x2

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 410
    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->wo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/ae;->cO(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 423
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 561
    :goto_0
    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 492
    iget-boolean v0, p0, Lcom/android/mail/ui/ae;->aFS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFR:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFQ:Landroid/widget/Space;

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/ae;->cO(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 498
    if-eqz v0, :cond_3

    .line 499
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->yK()V

    .line 500
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 503
    :cond_3
    const-string v0, "AA.getView"

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cJ(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    .line 506
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 509
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pi()V

    .line 511
    iget-wide v4, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/ae;->V(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, v1, p3, v3}, Lcom/android/mail/ui/ae;->b(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_4
    iget-wide v4, v1, Lcom/android/mail/providers/Conversation;->id:J

    iget-object v6, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/mail/ui/ae;->b(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_5
    iget-wide v4, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/ae;->U(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, v1, p3, v3}, Lcom/android/mail/ui/ae;->a(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_6
    iget-wide v4, v1, Lcom/android/mail/providers/Conversation;->id:J

    iget-object v6, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ae;->cN(I)I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/mail/ui/ae;->a(ILcom/android/mail/providers/Conversation;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 522
    :cond_7
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 523
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uF()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_1
    if-eqz v4, :cond_9

    .line 524
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 525
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFN:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_0

    :cond_8
    move v4, v3

    .line 523
    goto :goto_1

    .line 530
    :cond_9
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 531
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uF()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    if-eqz v2, :cond_e

    .line 532
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 533
    iget-wide v2, v1, Lcom/android/mail/providers/Conversation;->id:J

    iget-wide v4, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 536
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_d

    .line 537
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->wo()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 538
    sget v1, Lcom/android/mail/ui/ae;->aFC:I

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->dd(I)V

    .line 547
    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 531
    goto :goto_2

    .line 540
    :cond_c
    sget v1, Lcom/android/mail/ui/ae;->aFC:I

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->dc(I)V

    goto :goto_3

    .line 544
    :cond_d
    sget v1, Lcom/android/mail/ui/ae;->aFB:I

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->dc(I)V

    goto :goto_3

    .line 552
    :cond_e
    if-eqz p2, :cond_10

    instance-of v2, p2, Lcom/android/mail/browse/aZ;

    if-nez v2, :cond_10

    .line 553
    sget-object v2, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    const-string v4, "Incorrect convert view received; nulling it out"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 554
    iget-object v2, p0, Lcom/android/mail/ui/ae;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/android/mail/ui/ae;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    .line 558
    :goto_4
    check-cast v0, Lcom/android/mail/browse/aZ;

    iget-object v2, p0, Lcom/android/mail/ui/ae;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/mail/browse/aZ;

    iget-object v3, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, v2, v3}, Lcom/android/mail/browse/aZ;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    :cond_f
    iget-object v2, p0, Lcom/android/mail/ui/ae;->aob:Lcom/android/mail/ui/as;

    iget-object v3, p0, Lcom/android/mail/ui/ae;->aFK:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v4, p0, Lcom/android/mail/ui/ae;->aqp:Lcom/android/mail/providers/Folder;

    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xC()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/mail/ui/ae;->anX:Z

    iget-boolean v7, p0, Lcom/android/mail/ui/ae;->aFW:Z

    iget-boolean v8, p0, Lcom/android/mail/ui/ae;->aFX:Z

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/browse/aZ;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;IZZZLcom/android/mail/ui/ae;)V

    .line 560
    invoke-static {}, Lcom/android/mail/utils/ag;->Bi()V

    goto/16 :goto_0

    .line 555
    :cond_10
    if-eqz p2, :cond_11

    move-object v0, p2

    .line 556
    check-cast v0, Lcom/android/mail/browse/aZ;

    invoke-virtual {v0}, Lcom/android/mail/browse/aZ;->reset()V

    :cond_11
    move-object v0, p2

    goto :goto_4
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x5

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 880
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFZ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 881
    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->yL()Z

    move-result v0

    .line 883
    sget-object v3, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    const-string v4, "AA.isEnabled(%d) = %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 886
    :goto_0
    return v0

    :cond_0
    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/ae;->U(J)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v4, p1

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/ae;->V(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1195
    invoke-interface {v0, p1}, Lcom/android/mail/ui/aL;->m(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1197
    :cond_0
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Lcom/android/mail/browse/aZ;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p1, v1}, Lcom/android/mail/browse/aZ;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    return-object v0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1090
    sget-object v0, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    const-string v1, "notifyDataSetChanged() called off the main thread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1093
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xH()V

    .line 1094
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 1095
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 942
    const-string v0, "last_deleting_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "last_deleting_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 944
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 945
    iget-object v3, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_0
    const-string v0, "leave_behind_item_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    const-string v0, "leave_behind_item_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindData;

    .line 951
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    const-string v2, "leave_behind_item_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/android/mail/ui/LeaveBehindData;->aKP:Lcom/android/mail/providers/Conversation;

    iget-object v4, v0, Lcom/android/mail/ui/LeaveBehindData;->aKQ:Lcom/android/mail/ui/ToastBarOperation;

    iget-object v5, v0, Lcom/android/mail/ui/LeaveBehindData;->aKP:Lcom/android/mail/providers/Conversation;

    iget v5, v5, Lcom/android/mail/providers/Conversation;->position:I

    iget v0, v0, Lcom/android/mail/ui/LeaveBehindData;->height:I

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;II)Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 922
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 923
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 923
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 926
    :cond_0
    const-string v0, "last_deleting_items"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 927
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 928
    iget-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 929
    const-string v1, "leave_behind_item_data"

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zD()Lcom/android/mail/ui/LeaveBehindData;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 931
    const-string v0, "leave_behind_item_id"

    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 934
    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zG()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mail/providers/Conversation;->id:J

    iget-wide v4, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 935
    :cond_3
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 939
    :cond_4
    return-void
.end method

.method public final pF()Lcom/android/mail/ui/SwipeableListView;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    return-object v0
.end method

.method public final qD()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1155
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->qD()V

    goto :goto_0

    .line 1157
    :cond_0
    return-void
.end method

.method public final qJ()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aqT:Landroid/support/v4/e/a;

    return-object v0
.end method

.method public final swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1112
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xH()V

    .line 1114
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v1, " mUndoingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 992
    const-string v1, " mSwipeUndoingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, " mDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, " mSwipeDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, " mLeaveBehindItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, " mFadeLeaveBehindItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v1, " mLastDeletingItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, " mAnimatingViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v1, " mPendingDestruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFO:Lcom/android/mail/ui/dk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wk()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1168
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->wk()V

    goto :goto_0

    .line 1170
    :cond_0
    return-void
.end method

.method public final wl()V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1174
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->wl()V

    goto :goto_0

    .line 1176
    :cond_0
    return-void
.end method

.method public final wo()Z
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xB()Lcom/android/mail/browse/Q;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGa:Lcom/android/mail/browse/Q;

    return-object v0
.end method

.method public final xD()V
    .locals 4

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->wo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFF:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 978
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 979
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 980
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFD:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 981
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFG:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 982
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFI:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 983
    sget-object v0, Lcom/android/mail/ui/ae;->mW:Ljava/lang/String;

    const-string v1, "AA.clearAnimationState forcibly cleared state, this=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final xE()Lcom/android/mail/browse/u;
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    return-object v0
.end method

.method public final xF()Lcom/android/mail/ui/LeaveBehindItem;
    .locals 4

    .prologue
    .line 1023
    iget-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xG()V
    .locals 1

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->xF()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zI()V

    .line 1038
    :cond_0
    return-void
.end method

.method public final xI()Lcom/android/a/a;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGc:Lcom/android/a/a;

    return-object v0
.end method

.method public final xJ()Lcom/android/mail/b/j;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/mail/ui/ae;->akh:Lcom/android/mail/b/j;

    return-object v0
.end method

.method public final xK()V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aGb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aL;

    .line 1162
    invoke-interface {v0}, Lcom/android/mail/ui/aL;->xK()V

    goto :goto_0

    .line 1164
    :cond_0
    return-void
.end method

.method public final xL()Z
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFK:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final xt()V
    .locals 2

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xA()V

    .line 293
    iget-object v0, p0, Lcom/android/mail/ui/ae;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public final xu()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/mail/ui/ae;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    sget v2, Lcom/android/mail/ui/ae;->aFC:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ae;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFL:Ljava/lang/Runnable;

    sget v2, Lcom/android/mail/ui/ae;->aFB:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final xv()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 346
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mail/ui/ae;->S(J)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 351
    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    :goto_1
    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    .line 355
    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    invoke-direct {p0, v2, v3}, Lcom/android/mail/ui/ae;->S(J)Z

    move-result v0

    or-int/2addr v1, v0

    .line 356
    iput-wide v6, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 359
    :cond_1
    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 361
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFP:Lcom/android/mail/ui/dk;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/dk;)V

    .line 364
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public final xw()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 367
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    :cond_0
    iget-wide v0, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFH:Ljava/util/HashSet;

    iget-wide v2, p0, Lcom/android/mail/ui/ae;->aFM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    iput-wide v4, p0, Lcom/android/mail/ui/ae;->aFM:J

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 378
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFP:Lcom/android/mail/ui/dk;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/dk;)V

    .line 380
    return-void
.end method

.method protected final xz()V
    .locals 10

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 623
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFU:Lcom/android/mail/ui/SwipeableListView;

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v2

    .line 625
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xx()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 630
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/LeaveBehindItem;

    .line 632
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->zG()Lcom/android/mail/providers/Conversation;

    move-result-object v4

    .line 633
    iget-wide v6, p0, Lcom/android/mail/ui/ae;->aFM:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, v4, Lcom/android/mail/providers/Conversation;->id:J

    iget-wide v8, p0, Lcom/android/mail/ui/ae;->aFM:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 634
    :cond_1
    iget v5, v4, Lcom/android/mail/providers/Conversation;->position:I

    if-lt v5, v1, :cond_2

    iget v5, v4, Lcom/android/mail/providers/Conversation;->position:I

    if-gt v5, v2, :cond_2

    .line 635
    iget-object v5, p0, Lcom/android/mail/ui/ae;->aFJ:Ljava/util/HashMap;

    iget-wide v6, v4, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {v0}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    goto :goto_1

    .line 642
    :cond_3
    invoke-direct {p0}, Lcom/android/mail/ui/ae;->xA()V

    .line 644
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 645
    iget-object v0, p0, Lcom/android/mail/ui/ae;->aFE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    :cond_5
    invoke-virtual {p0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 648
    return-void
.end method
