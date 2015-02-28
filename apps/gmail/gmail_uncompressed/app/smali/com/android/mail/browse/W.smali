.class public Lcom/android/mail/browse/W;
.super Lcom/android/mail/utils/q;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/aM;


# static fields
.field private static final aqA:Ljava/lang/String;


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final aqk:Landroid/database/DataSetObserver;

.field private final aql:Lcom/android/mail/providers/o;

.field private aqm:Lcom/android/mail/ui/ac;

.field private final aqn:Landroid/os/Bundle;

.field private final aqo:Lcom/android/mail/providers/Conversation;

.field private final aqp:Lcom/android/mail/providers/Folder;

.field private aqq:Z

.field private aqr:Z

.field private aqs:Z

.field private aqt:Landroid/support/v4/view/ViewPager;

.field private aqu:Z

.field private aqv:Z

.field private aqw:Z

.field private aqx:I

.field private aqy:Landroid/os/Bundle;

.field private aqz:Z

.field private final c:Landroid/app/FragmentManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/browse/W;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-detachedmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/W;->aqA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p2, v1}, Lcom/android/mail/utils/q;-><init>(Landroid/app/FragmentManager;Z)V

    .line 49
    new-instance v0, Lcom/android/mail/browse/Y;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/Y;-><init>(Lcom/android/mail/browse/W;B)V

    iput-object v0, p0, Lcom/android/mail/browse/W;->aqk:Landroid/database/DataSetObserver;

    .line 50
    new-instance v0, Lcom/android/mail/browse/X;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/X;-><init>(Lcom/android/mail/browse/W;)V

    iput-object v0, p0, Lcom/android/mail/browse/W;->aql:Lcom/android/mail/providers/o;

    .line 65
    iput-boolean v1, p0, Lcom/android/mail/browse/W;->aqq:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/mail/browse/W;->aqr:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/mail/browse/W;->aqs:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/mail/browse/W;->aqw:Z

    .line 138
    iput-object p1, p0, Lcom/android/mail/browse/W;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/mail/browse/W;->c:Landroid/app/FragmentManager;

    .line 140
    invoke-static {p3}, Lcom/android/mail/ui/F;->o(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/W;->aqn:Landroid/os/Bundle;

    .line 141
    iput-object p5, p0, Lcom/android/mail/browse/W;->aqo:Lcom/android/mail/providers/Conversation;

    .line 142
    iput-object p3, p0, Lcom/android/mail/browse/W;->Nc:Lcom/android/mail/providers/Account;

    .line 143
    iput-object p4, p0, Lcom/android/mail/browse/W;->aqp:Lcom/android/mail/providers/Folder;

    .line 144
    iget-object v0, p0, Lcom/android/mail/browse/W;->Nc:Lcom/android/mail/providers/Account;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/browse/W;->aqu:Z

    .line 146
    iget-object v0, p0, Lcom/android/mail/browse/W;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/browse/W;->aqv:Z

    .line 148
    return-void
.end method

.method private az(Z)V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqr:Z

    if-ne v0, p1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    iput-boolean p1, p0, Lcom/android/mail/browse/W;->aqr:Z

    .line 350
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqr:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wA()V

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/browse/W;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private h(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqq:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqr:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qA()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wm()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 449
    :goto_0
    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqo:Lcom/android/mail/providers/Conversation;

    .line 452
    :cond_0
    return-object v0

    .line 448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qy()Lcom/android/mail/browse/u;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqr:Z

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-nez v1, :cond_1

    .line 190
    const-string v1, "ConvPager"

    const-string v2, "Pager adapter has a null controller. If the conversation view is going away, this is fine.  Otherwise, the state is inconsistent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final D(I)V
    .locals 5

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqz:Z

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 560
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 561
    const-string v1, "ConvPager"

    const-string v2, "pager adapter setting current conv: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 562
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v1, v0}, Lcom/android/mail/ui/ac;->l(Lcom/android/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public final E(I)V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public final a(IFI)V
    .locals 0

    .prologue
    .line 547
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 299
    invoke-super {p0, p1, p2}, Lcom/android/mail/utils/q;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    check-cast p1, Landroid/os/Bundle;

    .line 302
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 303
    sget-object v0, Lcom/android/mail/browse/W;->aqA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 304
    invoke-direct {p0, v0}, Lcom/android/mail/browse/W;->az(Z)V

    .line 307
    iput-object p1, p0, Lcom/android/mail/browse/W;->aqy:Landroid/os/Bundle;

    .line 309
    :cond_0
    const-string v0, "ConvPager"

    const-string v1, "OUT PagerAdapter.restoreState. this=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ac;)V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqw:Z

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    iget-object v2, p0, Lcom/android/mail/browse/W;->aqk:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ac;->n(Landroid/database/DataSetObserver;)V

    .line 503
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    iget-object v2, p0, Lcom/android/mail/browse/W;->aql:Lcom/android/mail/providers/o;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ac;->p(Landroid/database/DataSetObserver;)V

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    .line 506
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqw:Z

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    iget-object v2, p0, Lcom/android/mail/browse/W;->aqk:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ac;->m(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v1, p0, Lcom/android/mail/browse/W;->aql:Lcom/android/mail/providers/o;

    iget-object v2, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/o;->a(Lcom/android/mail/ui/by;)Lcom/android/mail/providers/Folder;

    .line 509
    if-nez v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/android/mail/browse/W;->notifyDataSetChanged()V

    .line 516
    :cond_1
    return-void

    .line 500
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aA(Z)V
    .locals 0

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/mail/browse/W;->aqz:Z

    .line 542
    return-void
.end method

.method public final aY()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 288
    const-string v0, "ConvPager"

    const-string v1, "IN PagerAdapter.saveState. this=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 289
    invoke-super {p0}, Lcom/android/mail/utils/q;->aY()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 290
    if-nez v0, :cond_0

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    :cond_0
    sget-object v1, Lcom/android/mail/browse/W;->aqA:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/mail/browse/W;->aqr:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    return-object v0
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 281
    const-string v0, "ConvPager"

    const-string v1, "IN PagerAdapter.setPrimaryItem, pos=%d, frag=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/utils/q;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mail/browse/W;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/W;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/W;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/Account;->j(Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/W;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, p2}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/android/mail/providers/Conversation;)I
    .locals 8

    .prologue
    const/4 v1, -0x2

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 456
    if-nez p1, :cond_0

    .line 486
    :goto_0
    return v1

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lcom/android/mail/browse/W;->h(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qA()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 463
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 464
    const-string v3, "ConvPager"

    const-string v4, "unable to find conversation in singleton mode. c=%s def=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 468
    :cond_1
    const-string v0, "ConvPager"

    const-string v1, "in CPA.getConversationPosition returning 0, conv=%s this=%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p0, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 470
    goto :goto_0

    .line 477
    :cond_2
    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mail/browse/u;->O(J)I

    move-result v0

    .line 478
    if-ltz v0, :cond_3

    .line 479
    const-string v1, "ConvPager"

    const-string v3, "pager adapter found repositioned convo %s at pos=%d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 484
    :goto_1
    const-string v1, "ConvPager"

    const-string v3, "in CPA.getConversationPosition (normal), conv=%s pos=%s this=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    aput-object p0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    .line 486
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final c(Landroid/app/Fragment;Z)V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0, p1, p2}, Lcom/android/mail/utils/q;->c(Landroid/app/Fragment;Z)V

    .line 443
    check-cast p1, Lcom/android/mail/ui/F;

    .line 444
    invoke-virtual {p1, p2}, Lcom/android/mail/ui/F;->bq(Z)V

    .line 445
    return-void
.end method

.method public final cc(I)Landroid/app/Fragment;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/mail/browse/W;->h(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string v0, "ConvPager"

    const-string v1, "pager cursor is null and position is non-zero: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qA()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 211
    iput v5, v0, Lcom/android/mail/providers/Conversation;->position:I

    .line 222
    :goto_0
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqu:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/browse/W;->aqn:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/ConversationViewFragment;

    move-result-object v1

    .line 223
    :goto_1
    const-string v2, "ConvPager"

    const-string v3, "IN PagerAdapter.getItem, frag=%s conv=%s this=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    aput-object p0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    :goto_2
    return-object v1

    .line 213
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    const-string v1, "ConvPager"

    const-string v2, "unable to seek to ConversationCursor pos=%d (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_2

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pi()V

    .line 219
    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 220
    iput p1, v0, Lcom/android/mail/providers/Conversation;->position:I

    goto :goto_0

    .line 222
    :cond_3
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqv:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mail/browse/W;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/i/g;->tV()I

    move-result v1

    if-lt v6, v1, :cond_4

    iget-object v1, p0, Lcom/android/mail/browse/W;->aqn:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/ConversationViewFragment;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqn:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/mail/ui/cV;->b(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/cV;

    move-result-object v1

    goto :goto_1
.end method

.method public final d(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/aM;)V

    .line 493
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    .line 494
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/aM;)V

    .line 497
    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 271
    instance-of v0, p1, Lcom/android/mail/ui/F;

    if-nez v0, :cond_0

    .line 272
    const-string v0, "ConvPager"

    const-string v1, "getItemPosition received unexpected item: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    :cond_0
    check-cast p1, Lcom/android/mail/ui/F;

    .line 276
    invoke-virtual {p1}, Lcom/android/mail/ui/F;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/W;->c(Lcom/android/mail/providers/Conversation;)I

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 249
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqw:Z

    if-eqz v1, :cond_2

    .line 250
    const-string v1, "ConvPager"

    invoke-static {v1, v4}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v1

    .line 252
    const-string v2, "ConvPager"

    const-string v3, "IN CPA.getCount stopListeningMode, returning lastKnownCount=%d. cursor=%s real count=%s"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/browse/W;->aqx:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v0

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 257
    :cond_0
    iget v0, p0, Lcom/android/mail/browse/W;->aqx:I

    .line 266
    :goto_1
    return v0

    .line 252
    :cond_1
    const-string v0, "N/A"

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v1

    .line 261
    invoke-direct {p0, v1}, Lcom/android/mail/browse/W;->h(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const-string v2, "ConvPager"

    const-string v3, "IN CPA.getCount, returning 1 (effective singleton). cursor=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 266
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqr:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqs:Z

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "ConvPager"

    const-string v1, "CPA ignoring dataset change generated during dataset change"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    :goto_0
    return-void

    .line 385
    :cond_0
    iput-boolean v5, p0, Lcom/android/mail/browse/W;->aqs:Z

    .line 396
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqr:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wm()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/W;->c(Lcom/android/mail/providers/Conversation;)I

    move-result v1

    .line 399
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v2

    .line 400
    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 403
    invoke-direct {p0, v5}, Lcom/android/mail/browse/W;->az(Z)V

    .line 404
    const-string v1, "ConvPager"

    const-string v2, "CPA: current conv is gone, reverting to detached mode. c=%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v1

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/W;->dq(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/F;

    .line 412
    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Lcom/android/mail/ui/F;->wW()V

    .line 436
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/android/mail/utils/q;->notifyDataSetChanged()V

    .line 437
    iput-boolean v4, p0, Lcom/android/mail/browse/W;->aqs:Z

    goto :goto_0

    .line 415
    :cond_2
    const-string v0, "ConvPager"

    const-string v2, "CPA: notifyDataSetChanged: fragment null, current item: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 422
    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 424
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/ui/F;->isUserVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-virtual {v2}, Lcom/android/mail/browse/u;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 427
    iput v1, v2, Lcom/android/mail/providers/Conversation;->position:I

    .line 428
    invoke-virtual {v0, v2}, Lcom/android/mail/ui/F;->f(Lcom/android/mail/providers/Conversation;)V

    .line 429
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/ac;->k(Lcom/android/mail/providers/Conversation;)V

    goto :goto_1

    .line 422
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/W;->dq(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/F;

    goto :goto_2

    .line 433
    :cond_5
    const-string v0, "ConvPager"

    const-string v1, "in CPA.notifyDataSetChanged, doing nothing. this=%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public final qw()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqq:Z

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/W;->aqq:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/mail/browse/W;->notifyDataSetChanged()V

    .line 160
    :cond_0
    return-void
.end method

.method public final qx()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqq:Z

    return v0
.end method

.method public final qz()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqy:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqy:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    iget-object v4, p0, Lcom/android/mail/browse/W;->c:Landroid/app/FragmentManager;

    iget-object v5, p0, Lcom/android/mail/browse/W;->aqy:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v0}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_5

    .line 332
    if-nez v1, :cond_4

    .line 333
    iget-object v0, p0, Lcom/android/mail/browse/W;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 335
    :goto_2
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_3
    move-object v1, v0

    .line 337
    goto :goto_1

    .line 338
    :cond_2
    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 340
    iget-object v0, p0, Lcom/android/mail/browse/W;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 342
    :cond_3
    iput-object v2, p0, Lcom/android/mail/browse/W;->aqy:Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public final stopListening()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 522
    iget-boolean v0, p0, Lcom/android/mail/browse/W;->aqw:Z

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    iget-object v1, p0, Lcom/android/mail/browse/W;->aqk:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ac;->n(Landroid/database/DataSetObserver;)V

    .line 533
    iget-object v0, p0, Lcom/android/mail/browse/W;->aql:Lcom/android/mail/providers/o;

    invoke-virtual {v0}, Lcom/android/mail/providers/o;->um()V

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/browse/W;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/W;->aqx:I

    .line 536
    iput-boolean v2, p0, Lcom/android/mail/browse/W;->aqw:Z

    .line 537
    const-string v0, "ConvPager"

    const-string v1, "CPA.stopListening, this=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    const-string v1, " detachedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, " singletonMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, " mController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqm:Lcom/android/mail/ui/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, " mPager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lcom/android/mail/browse/W;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, " mStopListening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-boolean v1, p0, Lcom/android/mail/browse/W;->aqw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, " mLastKnownCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget v1, p0, Lcom/android/mail/browse/W;->aqx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, " cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {p0}, Lcom/android/mail/browse/W;->qy()Lcom/android/mail/browse/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
