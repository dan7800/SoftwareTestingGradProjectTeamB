.class public final Lcom/android/mail/browse/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/c/b;
.implements Lcom/android/mail/ui/aK;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aob:Lcom/android/mail/ui/as;

.field private final aqp:Lcom/android/mail/providers/Folder;

.field protected final atH:Lcom/android/mail/ui/ConversationCheckedSet;

.field private final atI:Lcom/android/mail/ui/av;

.field private atJ:Z

.field private final atK:Lcom/android/mail/ui/aP;

.field private atL:Lcom/android/mail/providers/d;

.field private atM:Landroid/view/MenuItem;

.field private final mContext:Landroid/content/Context;

.field private ol:Landroid/support/v7/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/aO;->atJ:Z

    .line 99
    iput-object p1, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    .line 100
    invoke-interface {p1}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->atI:Lcom/android/mail/ui/av;

    .line 101
    iput-object p2, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 102
    new-instance v0, Lcom/android/mail/browse/aP;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/aP;-><init>(Lcom/android/mail/browse/aO;)V

    iput-object v0, p0, Lcom/android/mail/browse/aO;->atL:Lcom/android/mail/providers/d;

    .line 108
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atL:Lcom/android/mail/providers/d;

    invoke-interface {p1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    .line 109
    iput-object p3, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    .line 110
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->mContext:Landroid/content/Context;

    .line 111
    invoke-interface {p1}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/aO;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/browse/aO;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/browse/aO;Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Account;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    return-object p1
.end method

.method private a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V
    .locals 6
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
    const/4 v5, 0x1

    .line 304
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "About to remove %d converations"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 305
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0, p1, p2, p3, v5}, Lcom/android/mail/ui/aP;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    .line 306
    return-void
.end method

.method private aL(Z)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, v2}, Lcom/android/mail/ui/aP;->a(Ljava/util/Collection;ZZ)V

    .line 318
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->rS()V

    .line 319
    return-void
.end method

.method private aM(Z)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 329
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    const-string v3, "priority"

    invoke-interface {v0, v2, v3, v1}, Lcom/android/mail/ui/aP;->b(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 333
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 334
    iput v1, v0, Lcom/android/mail/providers/Conversation;->priority:I

    goto :goto_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->rS()V

    .line 337
    return-void
.end method

.method private aN(Z)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    const-string v2, "starred"

    invoke-interface {v1, v0, v2, p1}, Lcom/android/mail/ui/aP;->b(Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 348
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 349
    iput-boolean p1, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    goto :goto_0

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->rS()V

    .line 352
    return-void
.end method

.method static synthetic b(Lcom/android/mail/browse/aO;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/browse/aO;)Lcom/android/mail/ui/aP;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    return-object v0
.end method

.method private cl(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0d0279

    const/4 v1, 0x1

    const v4, 0x7f0d0278

    .line 263
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v2

    .line 264
    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    .line 267
    if-ne p1, v5, :cond_0

    move v0, v1

    .line 275
    :goto_0
    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0, p1, v1, v6}, Lcom/android/mail/ui/aP;->a(IZLcom/android/mail/browse/be;)V

    .line 278
    if-ne p1, v4, :cond_4

    .line 279
    const v0, 0x7f110001

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/android/mail/browse/aO;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/android/mail/browse/k;->q(Ljava/lang/CharSequence;)Lcom/android/mail/browse/k;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/k;->b(Landroid/app/FragmentManager;)V

    .line 294
    :goto_2
    return-void

    .line 270
    :cond_0
    if-eqz v0, :cond_3

    const v3, 0x7f0d0276

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_3

    .line 271
    :cond_1
    if-ne p1, v4, :cond_2

    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aBT:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aBU:Z

    goto :goto_0

    .line 273
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_4
    if-ne p1, v5, :cond_5

    .line 281
    const v0, 0x7f110003

    goto :goto_1

    .line 283
    :cond_5
    const v0, 0x7f110002

    goto :goto_1

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0, p1, v6}, Lcom/android/mail/ui/aP;->a(ILcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto :goto_2
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/mail/browse/aO;->deactivate()V

    .line 573
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ConversationCheckedSet;->b(Lcom/android/mail/ui/aK;)V

    .line 574
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    .line 575
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0}, Lcom/android/mail/ui/aP;->ww()V

    .line 576
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atL:Lcom/android/mail/providers/d;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->atL:Lcom/android/mail/providers/d;

    .line 580
    :cond_0
    return-void
.end method

.method private rS()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v0}, Lcom/android/mail/ui/aP;->ww()V

    .line 253
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    iget-object v1, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    invoke-virtual {v1}, Landroid/support/v7/c/a;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/browse/aO;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    .line 260
    :cond_0
    return-void
.end method

.method private rT()V
    .locals 5

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationCheckedSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/c/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Lcom/android/mail/ui/aK;)V

    .line 357
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 358
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 359
    iput-object p1, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    .line 360
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->rT()V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const v8, 0x7f0d0284

    const v7, 0x7f0d0281

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    .line 122
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atI:Lcom/android/mail/ui/av;

    invoke-interface {v0, v3}, Lcom/android/mail/ui/av;->bo(Z)V

    .line 123
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 125
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v1

    const-string v5, "menu_item"

    const-string v6, "cab_mode"

    invoke-interface {v1, v5, v0, v6}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    const v1, 0x7f0d0278

    if-ne v0, v1, :cond_1

    .line 130
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "Delete selected from CAB menu"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    const v0, 0x7f0d0278

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    .line 238
    :cond_0
    :goto_0
    return v3

    .line 132
    :cond_1
    const v1, 0x7f0d0279

    if-ne v0, v1, :cond_2

    .line 133
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "Discard drafts selected from CAB menu"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    const v0, 0x7f0d0279

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    goto :goto_0

    .line 135
    :cond_2
    const v1, 0x7f0d027a

    if-ne v0, v1, :cond_3

    .line 136
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "Discard outbox selected from CAB menu"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    const v0, 0x7f0d027a

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    goto :goto_0

    .line 138
    :cond_3
    const v1, 0x7f0d0276

    if-ne v0, v1, :cond_4

    .line 139
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "Archive selected from CAB menu"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    const v0, 0x7f0d0276

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    goto :goto_0

    .line 141
    :cond_4
    const v1, 0x7f0d0277

    if-ne v0, v1, :cond_5

    .line 142
    const v0, 0x7f0d0277

    iget-object v1, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    iget-object v5, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-interface {v4, v5, v6, v3, v2}, Lcom/android/mail/ui/aP;->a(Ljava/util/Collection;Lcom/android/mail/providers/Folder;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto :goto_0

    .line 145
    :cond_5
    if-ne v0, v7, :cond_6

    .line 146
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v1, v7}, Lcom/android/mail/ui/aP;->cJ(I)Lcom/android/mail/ui/br;

    move-result-object v1

    invoke-direct {p0, v7, v0, v1}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto :goto_0

    .line 148
    :cond_6
    if-ne v0, v8, :cond_7

    .line 149
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    invoke-interface {v1, v8}, Lcom/android/mail/ui/aP;->cJ(I)Lcom/android/mail/ui/br;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    const v1, 0x7f0d0285

    if-ne v0, v1, :cond_8

    .line 154
    const v0, 0x7f0d0285

    iget-object v1, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    const v4, 0x7f0d0285

    invoke-interface {v2, v4}, Lcom/android/mail/ui/aP;->cJ(I)Lcom/android/mail/ui/br;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto/16 :goto_0

    .line 157
    :cond_8
    const v1, 0x7f0d0286

    if-ne v0, v1, :cond_9

    .line 158
    const v0, 0x7f0d0286

    iget-object v1, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/aO;->atK:Lcom/android/mail/ui/aP;

    const v4, 0x7f0d0286

    invoke-interface {v2, v4}, Lcom/android/mail/ui/aP;->cJ(I)Lcom/android/mail/ui/br;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/browse/aO;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    goto/16 :goto_0

    .line 161
    :cond_9
    const v1, 0x7f0d028b

    if-ne v0, v1, :cond_a

    .line 162
    invoke-direct {p0, v3}, Lcom/android/mail/browse/aO;->aL(Z)V

    goto/16 :goto_0

    .line 163
    :cond_a
    const v1, 0x7f0d00d8

    if-ne v0, v1, :cond_b

    .line 164
    invoke-direct {p0, v4}, Lcom/android/mail/browse/aO;->aL(Z)V

    goto/16 :goto_0

    .line 165
    :cond_b
    const v1, 0x7f0d0136

    if-ne v0, v1, :cond_c

    .line 166
    invoke-direct {p0, v3}, Lcom/android/mail/browse/aO;->aN(Z)V

    goto/16 :goto_0

    .line 167
    :cond_c
    const v1, 0x7f0d0287

    if-ne v0, v1, :cond_d

    .line 168
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0d028b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->aL(Z)V

    goto/16 :goto_0

    .line 171
    :cond_d
    const v1, 0x7f0d028e

    if-ne v0, v1, :cond_f

    .line 172
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 173
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "We are in a starred folder, removing the star"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    const v0, 0x7f0d028e

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    goto/16 :goto_0

    .line 176
    :cond_e
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "Not in a starred folder."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    invoke-direct {p0, v4}, Lcom/android/mail/browse/aO;->aN(Z)V

    goto/16 :goto_0

    .line 179
    :cond_f
    const v1, 0x7f0d027c

    if-eq v0, v1, :cond_10

    const v1, 0x7f0d027d

    if-ne v0, v1, :cond_16

    .line 180
    :cond_10
    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    .line 183
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x1000

    invoke-virtual {v1, v5}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 185
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :cond_11
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 186
    if-nez v1, :cond_12

    .line 187
    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    move-object v1, v0

    goto :goto_1

    .line 188
    :cond_12
    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azj:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    iget-object v0, p0, Lcom/android/mail/browse/aO;->mContext:Landroid/content/Context;

    const v1, 0x7f09014e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 196
    :cond_13
    invoke-static {v1}, Lcom/android/mail/providers/t;->w(Landroid/net/Uri;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 201
    :cond_14
    iget-object v1, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v7, 0x7f0d027c

    if-ne v1, v7, :cond_15

    move v1, v3

    :goto_2
    invoke-static {v0, v5, v3, v6, v1}, Lcom/android/mail/ui/bT;->a(Lcom/android/mail/providers/Account;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;Z)Lcom/android/mail/ui/bT;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/bT;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    move v1, v4

    .line 201
    goto :goto_2

    .line 209
    :cond_16
    const v1, 0x7f0d027e

    if-ne v0, v1, :cond_17

    .line 210
    new-instance v0, Lcom/android/mail/browse/aQ;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/aQ;-><init>(Lcom/android/mail/browse/aO;)V

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/aQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 227
    :cond_17
    const v1, 0x7f0d027f

    if-ne v0, v1, :cond_18

    .line 228
    invoke-direct {p0, v3}, Lcom/android/mail/browse/aO;->aM(Z)V

    goto/16 :goto_0

    .line 229
    :cond_18
    const v1, 0x7f0d0280

    if-ne v0, v1, :cond_1a

    .line 230
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 231
    const v0, 0x7f0d0280

    invoke-direct {p0, v0}, Lcom/android/mail/browse/aO;->cl(I)V

    goto/16 :goto_0

    .line 233
    :cond_19
    invoke-direct {p0, v4}, Lcom/android/mail/browse/aO;->aM(Z)V

    goto/16 :goto_0

    :cond_1a
    move v3, v4

    .line 236
    goto/16 :goto_0
.end method

.method public final b(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->rT()V

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 10

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v5

    .line 368
    const/4 v4, 0x0

    .line 369
    const/4 v3, 0x0

    .line 370
    const/4 v2, 0x0

    .line 371
    const/4 v1, 0x0

    .line 372
    const/4 v0, 0x0

    .line 377
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 378
    iget-boolean v7, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    if-nez v7, :cond_0

    .line 379
    const/4 v5, 0x1

    .line 381
    :cond_0
    iget-boolean v7, v0, Lcom/android/mail/providers/Conversation;->aza:Z

    if-eqz v7, :cond_1

    .line 382
    const/4 v4, 0x1

    .line 384
    :cond_1
    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uE()Z

    move-result v7

    if-nez v7, :cond_2

    .line 385
    const/4 v3, 0x1

    .line 387
    :cond_2
    iget-boolean v7, v0, Lcom/android/mail/providers/Conversation;->azg:Z

    if-eqz v7, :cond_3

    .line 388
    const/4 v2, 0x1

    .line 390
    :cond_3
    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azi:Z

    if-nez v0, :cond_1d

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_1
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_6

    :cond_4
    move v1, v0

    .line 395
    goto :goto_0

    :cond_5
    move v0, v1

    .line 398
    :cond_6
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 399
    :goto_2
    const v6, 0x7f0d0136

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 400
    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    const/4 v6, 0x1

    :goto_3
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    const v6, 0x7f0d028e

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 402
    if-nez v5, :cond_e

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_4
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    const v1, 0x7f0d028b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 404
    if-nez v4, :cond_f

    const/4 v1, 0x1

    :goto_5
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    const v1, 0x7f0d00d8

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 406
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    const v1, 0x7f0d0277

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 412
    const v1, 0x7f0d027c

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 413
    const v1, 0x7f0d027e

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 414
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    .line 418
    :goto_6
    iget-object v4, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x4000

    invoke-virtual {v4, v5}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 420
    :goto_7
    iget-object v5, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/high16 v9, 0x10000

    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 422
    :goto_8
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    const v4, 0x7f0d027d

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 427
    iget-object v5, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    iget-object v4, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 431
    iget-object v1, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0900a2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v8, v8, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 434
    :cond_7
    const v1, 0x7f0d0276

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 435
    if-eqz v4, :cond_8

    .line 436
    iget-object v1, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_9
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 440
    :cond_8
    const v1, 0x7f0d0284

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 441
    if-nez v2, :cond_14

    iget-object v1, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_a
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 444
    const v1, 0x7f0d0285

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 445
    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :goto_b
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 448
    const v1, 0x7f0d0286

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 449
    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    const v0, 0x7f0d0281

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_9

    .line 455
    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_d
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    :cond_9
    const v0, 0x7f0d027f

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 459
    if-eqz v3, :cond_18

    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_e
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    const v0, 0x7f0d0280

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 462
    if-nez v3, :cond_19

    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 465
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 466
    :goto_10
    const v1, 0x7f0d027a

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/aO;->atM:Landroid/view/MenuItem;

    .line 467
    iget-object v1, p0, Lcom/android/mail/browse/aO;->atM:Landroid/view/MenuItem;

    if-eqz v1, :cond_a

    .line 468
    iget-object v1, p0, Lcom/android/mail/browse/aO;->atM:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    :cond_a
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 472
    :goto_11
    const v1, 0x7f0d0278

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 473
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 477
    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/mail/browse/aO;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uV()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/mail/browse/aO;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 479
    :goto_12
    const v1, 0x7f0d0279

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_b

    .line 481
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 484
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 398
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 400
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 402
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 404
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 414
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 418
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 420
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 436
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 441
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 445
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 449
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 455
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 459
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 462
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 465
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 470
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11

    .line 477
    :cond_1c
    const/4 v0, 0x0

    goto :goto_12

    :cond_1d
    move v0, v1

    goto/16 :goto_1
.end method

.method public final c(Landroid/support/v7/c/a;)V
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    .line 493
    iget-boolean v0, p0, Lcom/android/mail/browse/aO;->atJ:Z

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->destroy()V

    .line 498
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/av;->bo(Z)V

    .line 500
    :cond_0
    return-void
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atI:Lcom/android/mail/ui/av;

    invoke-interface {v0}, Lcom/android/mail/ui/av;->wl()V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/aO;->atJ:Z

    .line 555
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->finish()V

    .line 558
    :cond_0
    return-void
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/mail/browse/aO;->atJ:Z

    return v0
.end method

.method public final k(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    invoke-virtual {p0, v0, p1}, Lcom/android/mail/browse/aO;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final pC()V
    .locals 3

    .prologue
    .line 509
    sget-object v0, Lcom/android/mail/browse/aO;->mW:Ljava/lang/String;

    const-string v1, "onSetEmpty called."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    invoke-direct {p0}, Lcom/android/mail/browse/aO;->destroy()V

    .line 511
    return-void
.end method

.method public final rU()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/aO;->atI:Lcom/android/mail/ui/av;

    invoke-interface {v0}, Lcom/android/mail/ui/av;->wk()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/aO;->atJ:Z

    .line 543
    iget-object v0, p0, Lcom/android/mail/browse/aO;->ol:Landroid/support/v7/c/a;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/mail/browse/aO;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0, p0}, Lcom/android/mail/ui/as;->b(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;

    goto :goto_0
.end method
