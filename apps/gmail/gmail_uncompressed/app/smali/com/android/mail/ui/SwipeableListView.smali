.class public Lcom/android/mail/ui/SwipeableListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/mail/ui/dg;


# static fields
.field public static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aNB:Lcom/android/mail/ui/db;

.field private aNC:Z

.field private aND:Z

.field private aNE:Lcom/android/mail/ui/ConversationCheckedSet;

.field private aNF:I

.field private aNG:Lcom/android/mail/ui/dj;

.field private aNH:Z

.field private aNI:Lcom/android/mail/ui/dl;

.field private aNJ:J

.field private aqp:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/SwipeableListView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v3, p0, Lcom/android/mail/ui/SwipeableListView;->aNC:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/mail/ui/SwipeableListView;->aND:Z

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNJ:J

    .line 91
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 92
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    .line 93
    new-instance v2, Lcom/android/mail/ui/db;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/android/mail/ui/db;-><init>(Landroid/content/Context;Lcom/android/mail/ui/dg;FF)V

    iput-object v2, p0, Lcom/android/mail/ui/SwipeableListView;->aNB:Lcom/android/mail/ui/db;

    .line 95
    iput-boolean v3, p0, Lcom/android/mail/ui/SwipeableListView;->aNH:Z

    .line 96
    return-void
.end method


# virtual methods
.method public final Ad()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->bo(Z)V

    .line 379
    return-void
.end method

.method public final Ae()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->xt()V

    .line 295
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    invoke-interface {v0}, Lcom/android/mail/ui/dl;->yn()V

    .line 298
    :cond_0
    return-void
.end method

.method public final Af()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ae;

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xu()V

    .line 305
    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xG()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    invoke-interface {v0}, Lcom/android/mail/ui/dl;->yo()V

    .line 312
    :cond_1
    return-void
.end method

.method public final Ag()Lcom/android/mail/ui/LeaveBehindItem;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ae;

    .line 477
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xF()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ah()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aND:Z

    .line 130
    return-void
.end method

.method public final Ai()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aND:Z

    .line 137
    return-void
.end method

.method public final Aj()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    return v0
.end method

.method public final Ak()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNH:Z

    return v0
.end method

.method public final Al()I
    .locals 6

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getLastVisiblePosition()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 435
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 436
    instance-of v2, v0, Lcom/android/mail/browse/u;

    if-eqz v2, :cond_0

    .line 437
    check-cast v0, Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 438
    iget-wide v2, v0, Lcom/android/mail/providers/Conversation;->id:J

    iget-wide v4, p0, Lcom/android/mail/ui/SwipeableListView;->aNJ:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 443
    :goto_1
    return v1

    .line 434
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 443
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final a(Lcom/android/mail/browse/ConversationItemView;Lcom/android/mail/providers/Conversation;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 333
    iget-wide v4, p2, Lcom/android/mail/providers/Conversation;->id:J

    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/SwipeableListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 341
    :goto_0
    if-ne v2, v1, :cond_1

    move v1, v0

    .line 345
    :goto_1
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 347
    instance-of v3, v0, Lcom/android/mail/browse/aZ;

    if-eqz v3, :cond_0

    .line 348
    check-cast v0, Lcom/android/mail/browse/aZ;

    invoke-virtual {v0}, Lcom/android/mail/browse/aZ;->rY()Lcom/android/mail/browse/ConversationItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 350
    iget-wide v6, v0, Lcom/android/mail/providers/Conversation;->id:J

    .line 351
    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, v1

    .line 358
    :goto_2
    return v0

    .line 337
    :catch_0
    move-exception v2

    .line 339
    sget-object v3, Lcom/android/mail/ui/SwipeableListView;->mW:Ljava/lang/String;

    const-string v6, "Exception finding position; using alternate strategy"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v1

    goto :goto_0

    .line 345
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2
.end method

.method public final a(Lcom/android/mail/browse/ConversationItemView;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    invoke-interface {v0}, Lcom/android/mail/ui/dl;->yo()V

    .line 234
    :cond_0
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    iget v2, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    iget-object v5, p0, Lcom/android/mail/ui/SwipeableListView;->aqp:Lcom/android/mail/providers/Folder;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 236
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationItemView;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v4

    .line 237
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationItemView;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    invoke-virtual {p0, p1, v4}, Lcom/android/mail/ui/SwipeableListView;->a(Lcom/android/mail/browse/ConversationItemView;Lcom/android/mail/providers/Conversation;)I

    move-result v5

    iput v5, v2, Lcom/android/mail/providers/Conversation;->position:I

    .line 238
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/mail/ui/ae;

    .line 239
    if-nez v2, :cond_2

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget v5, v4, Lcom/android/mail/providers/Conversation;->position:I

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationItemView;->getHeight()I

    move-result v6

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;II)Lcom/android/mail/ui/LeaveBehindItem;

    .line 243
    invoke-virtual {v2}, Lcom/android/mail/ui/ae;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/u;

    .line 244
    invoke-static {v4}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v5

    .line 248
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v6

    const-string v7, "list_swipe"

    iget v8, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    iget v6, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    const v7, 0x7f0d0277

    if-ne v6, v7, :cond_5

    .line 251
    new-instance v6, Lcom/android/mail/ui/FolderOperation;

    iget-object v7, p0, Lcom/android/mail/ui/SwipeableListView;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    .line 252
    invoke-virtual {v4}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/providers/Folder;->s(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 254
    iget-object v6, v6, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v6, v6, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v6, v6, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mail/providers/FolderList;->p(Ljava/util/Collection;)Lcom/android/mail/providers/FolderList;

    move-result-object v6

    .line 256
    invoke-virtual {v4, v6}, Lcom/android/mail/providers/Conversation;->a(Lcom/android/mail/providers/FolderList;)V

    .line 257
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 258
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v8, p0, Lcom/android/mail/ui/SwipeableListView;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v8, v8, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v8, v8, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 261
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {v7, v8, v6}, Lcom/android/mail/browse/u;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 263
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/mail/browse/u;->b(Ljava/util/Collection;Landroid/content/ContentValues;)V

    .line 264
    invoke-static {v4}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/android/mail/browse/u;->c(Ljava/util/Collection;Landroid/content/ContentValues;)I

    .line 272
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNG:Lcom/android/mail/ui/dj;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNG:Lcom/android/mail/ui/dj;

    invoke-interface {v0, v5}, Lcom/android/mail/ui/dj;->t(Ljava/util/Collection;)V

    .line 275
    :cond_4
    invoke-virtual {v2}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 276
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/ConversationCheckedSet;->m(Lcom/android/mail/providers/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/ConversationCheckedSet;->n(Lcom/android/mail/providers/Conversation;)V

    .line 281
    invoke-virtual {v4}, Lcom/android/mail/providers/Conversation;->uF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->bo(Z)V

    goto/16 :goto_0

    .line 265
    :cond_5
    iget v3, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    const v6, 0x7f0d0276

    if-ne v3, v6, :cond_6

    .line 266
    invoke-virtual {v0, v5}, Lcom/android/mail/browse/u;->i(Ljava/util/Collection;)I

    goto :goto_1

    .line 267
    :cond_6
    iget v3, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    const v6, 0x7f0d0278

    if-ne v3, v6, :cond_7

    .line 268
    invoke-virtual {v0, v5}, Lcom/android/mail/browse/u;->j(Ljava/util/Collection;)I

    goto :goto_1

    .line 269
    :cond_7
    iget v3, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    const v6, 0x7f0d027a

    if-ne v3, v6, :cond_3

    .line 270
    invoke-virtual {v0, v5}, Lcom/android/mail/browse/u;->h(Ljava/util/Collection;)I

    goto :goto_1
.end method

.method public final a(Lcom/android/mail/ui/dj;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->aNG:Lcom/android/mail/ui/dj;

    .line 145
    return-void
.end method

.method public final a(Lcom/android/mail/ui/dl;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->aNI:Lcom/android/mail/ui/dl;

    .line 485
    return-void
.end method

.method public final a(Lcom/android/mail/ui/dh;)Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNC:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/mail/ui/dh;->pE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/android/mail/ui/dh;)V
    .locals 0

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Lcom/android/mail/ui/dh;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method

.method public final bo(Z)V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ae;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->br(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public final bz(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/mail/ui/SwipeableListView;->aNC:Z

    .line 123
    return-void
.end method

.method public final c(Ljava/util/Collection;Lcom/android/mail/ui/dk;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/dk;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 319
    if-nez p1, :cond_0

    .line 320
    sget-object v0, Lcom/android/mail/ui/SwipeableListView;->mW:Ljava/lang/String;

    const-string v2, "SwipeableListView.destroyItems: null conversations."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 329
    :goto_0
    return v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ae;

    .line 324
    if-nez v0, :cond_1

    .line 325
    sget-object v0, Lcom/android/mail/ui/SwipeableListView;->mW:Ljava/lang/String;

    const-string v2, "SwipeableListView.destroyItems: Cannot destroy: adapter is null."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/mail/ui/ae;->a(Ljava/util/Collection;Lcom/android/mail/ui/dk;)V

    .line 329
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->aNE:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 153
    return-void
.end method

.method public final di(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/android/mail/ui/SwipeableListView;->aNF:I

    .line 141
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getChildCount()I

    move-result v2

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 188
    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    if-ge v1, v2, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 196
    instance-of v1, v0, Lcom/android/mail/browse/aZ;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Lcom/android/mail/browse/aZ;

    invoke-virtual {v0}, Lcom/android/mail/browse/aZ;->rY()Lcom/android/mail/browse/ConversationItemView;

    move-result-object v0

    .line 202
    :cond_0
    :goto_1
    return-object v0

    .line 190
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 102
    iget-object v1, p0, Lcom/android/mail/ui/SwipeableListView;->aNB:Lcom/android/mail/ui/db;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/db;->A(F)V

    .line 103
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 104
    iget-object v1, p0, Lcom/android/mail/ui/SwipeableListView;->aNB:Lcom/android/mail/ui/db;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/db;->B(F)V

    .line 105
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    const-string v0, "MailBlankFragment"

    const-string v1, "START CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 113
    const-string v0, "MailBlankFragment"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "FINISH CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNH:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aND:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNB:Lcom/android/mail/ui/db;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/db;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNH:Z

    .line 398
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNH:Z

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    instance-of v3, v0, Lcom/android/mail/ui/as;

    if-eqz v3, :cond_2

    .line 401
    check-cast v0, Lcom/android/mail/ui/as;

    .line 402
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/mail/ui/as;->a(Lcom/android/mail/ui/ae;)V

    .line 407
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 396
    goto :goto_0

    .line 404
    :cond_2
    sget-object v3, Lcom/android/mail/ui/SwipeableListView;->mW:Ljava/lang/String;

    const-string v4, "unexpected context=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/mail/ui/SwipeableListView;->aND:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNB:Lcom/android/mail/ui/db;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/db;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchModeChanged(Z)V

    .line 449
    if-nez p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getSelectedItemPosition()I

    move-result v0

    .line 457
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 464
    :cond_0
    return-void
.end method

.method public final p(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->aqp:Lcom/android/mail/providers/Folder;

    .line 161
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 372
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/SwipeableListView;->bo(Z)V

    .line 373
    return v0
.end method

.method public final s(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->id:J

    iput-wide v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNJ:J

    goto :goto_0
.end method

.method public final t(Lcom/android/mail/providers/Conversation;)Z
    .locals 4

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNJ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/mail/ui/SwipeableListView;->aNJ:J

    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v(Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/mail/ui/SwipeableListView;->Nc:Lcom/android/mail/providers/Account;

    .line 157
    return-void
.end method

.method public final xt()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/mail/ui/SwipeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ae;

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xt()V

    .line 472
    :cond_0
    return-void
.end method
