.class public abstract Lcom/android/mail/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/ac;
.implements Lcom/android/mail/ui/bw;


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field protected Hb:Landroid/content/ContentResolver;

.field protected Nc:Lcom/android/mail/providers/Account;

.field private final aCN:Ljava/lang/String;

.field private final aCO:Ljava/lang/String;

.field private final aCP:Ljava/lang/String;

.field protected aCQ:Lcom/android/mail/providers/Folder;

.field private aCR:Z

.field protected aCS:Lcom/android/mail/ui/S;

.field protected final aCT:Lcom/android/mail/ui/MailActivity;

.field protected final aCU:Lcom/android/mail/ui/cN;

.field protected aCV:Lcom/android/mail/c;

.field protected aCW:Lcom/android/mail/providers/Conversation;

.field protected aCX:Lcom/android/mail/ui/cx;

.field private aCY:Landroid/net/Uri;

.field private final aCZ:Landroid/os/Bundle;

.field private final aDA:Lcom/android/mail/ui/w;

.field private final aDB:Lcom/android/mail/ui/y;

.field private final aDC:Lcom/android/mail/ui/t;

.field private aDD:Lcom/android/mail/ui/br;

.field protected aDE:Lcom/android/mail/ui/ak;

.field private aDF:Lcom/android/mail/providers/Folder;

.field private final aDG:I

.field private aDH:Z

.field private aDI:Lcom/android/mail/ui/dF;

.field protected aDJ:Z

.field private aDK:Landroid/content/DialogInterface$OnClickListener;

.field private aDL:I

.field private aDM:Z

.field private aDN:Lcom/android/mail/providers/Conversation;

.field private aDO:Ljava/lang/Runnable;

.field protected aDP:Landroid/support/v4/widget/DrawerLayout;

.field protected aDQ:Landroid/view/View;

.field protected aDR:Landroid/support/v7/app/t;

.field protected aDS:Landroid/widget/ListView;

.field protected aDT:Z

.field private aDU:Z

.field private final aDV:Lcom/android/mail/ui/C;

.field private aDW:Z

.field private final aDX:Lcom/android/mail/utils/l;

.field private final aDY:Landroid/database/DataSetObserver;

.field private final aDZ:Lcom/android/mail/ui/A;

.field private aDa:Lcom/android/mail/ui/da;

.field protected final aDb:Lcom/android/mail/ui/dD;

.field protected aDc:Z

.field private aDd:Lcom/android/mail/ui/ak;

.field private final aDe:Z

.field private aDf:Z

.field private final aDg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected aDh:Lcom/android/mail/browse/u;

.field private final aDi:Landroid/database/DataSetObservable;

.field private aDj:Ljava/lang/Runnable;

.field private aDk:[Lcom/android/mail/providers/Account;

.field private aDl:Lcom/android/mail/providers/p;

.field private aDm:Z

.field private final aDn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/B;",
            ">;"
        }
    .end annotation
.end field

.field private aDo:Lcom/android/mail/ui/D;

.field private final aDp:Landroid/database/DataSetObservable;

.field private final aDq:Landroid/database/DataSetObservable;

.field private final aDr:Landroid/database/DataSetObservable;

.field private final aDs:Landroid/database/DataSetObservable;

.field private final aDt:Landroid/database/DataSetObservable;

.field private final aDu:I

.field protected final aDv:Lcom/android/mail/ui/aI;

.field aDw:Lcom/android/mail/browse/aO;

.field protected aDx:Landroid/view/View;

.field protected aDy:Lcom/android/mail/ui/ActionableToastBar;

.field protected aDz:Lcom/android/mail/browse/Z;

.field protected aqp:Lcom/android/mail/providers/Folder;

.field private final atH:Lcom/android/mail/ui/ConversationCheckedSet;

.field private final ate:Lcom/android/mail/utils/aj;

.field private bQ:Z

.field private final c:Landroid/app/FragmentManager;

.field protected final mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const-string v0, "account"

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCN:Ljava/lang/String;

    .line 176
    const-string v0, "folder"

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCO:Ljava/lang/String;

    .line 182
    const-string v0, "ignore-initial-conversation-limit"

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCP:Ljava/lang/String;

    .line 189
    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aCR:Z

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    .line 207
    iput-object v3, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    .line 219
    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aDc:Z

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDf:Z

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDg:Ljava/util/Set;

    .line 239
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "List"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDi:Landroid/database/DataSetObservable;

    .line 242
    iput-object v3, p0, Lcom/android/mail/ui/a;->aDj:Ljava/lang/Runnable;

    .line 244
    new-array v0, v2, [Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDk:[Lcom/android/mail/providers/Account;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDn:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "Account"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDp:Landroid/database/DataSetObservable;

    .line 268
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "RecentFolder"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDq:Landroid/database/DataSetObservable;

    .line 270
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "AllAccounts"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDr:Landroid/database/DataSetObservable;

    .line 272
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "CurrentFolder"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDs:Landroid/database/DataSetObservable;

    .line 274
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "FolderOrAccount"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    .line 280
    new-instance v0, Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationCheckedSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    .line 300
    new-instance v0, Lcom/android/mail/ui/w;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/w;-><init>(Lcom/android/mail/ui/a;B)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDA:Lcom/android/mail/ui/w;

    .line 304
    new-instance v0, Lcom/android/mail/ui/y;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/y;-><init>(Lcom/android/mail/ui/a;B)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    .line 306
    new-instance v0, Lcom/android/mail/ui/t;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/t;-><init>(Lcom/android/mail/ui/a;B)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDC:Lcom/android/mail/ui/t;

    .line 468
    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aDJ:Z

    .line 475
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/a;->aDL:I

    .line 483
    iput-object v3, p0, Lcom/android/mail/ui/a;->aDN:Lcom/android/mail/providers/Conversation;

    .line 493
    iput-object v3, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    .line 502
    new-instance v0, Lcom/android/mail/ui/C;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/C;-><init>(Lcom/android/mail/ui/a;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDV:Lcom/android/mail/ui/C;

    .line 505
    new-instance v0, Lcom/android/mail/utils/l;

    invoke-direct {v0}, Lcom/android/mail/utils/l;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDX:Lcom/android/mail/utils/l;

    .line 509
    new-instance v0, Lcom/android/mail/ui/b;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/b;-><init>(Lcom/android/mail/ui/a;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDY:Landroid/database/DataSetObserver;

    .line 520
    new-instance v0, Lcom/android/mail/ui/A;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/A;-><init>(Lcom/android/mail/ui/a;B)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDZ:Lcom/android/mail/ui/A;

    .line 523
    iput-object p1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    .line 524
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    .line 525
    iput-object p2, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    .line 526
    invoke-virtual {p1}, Lcom/android/mail/ui/MailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    .line 527
    new-instance v0, Lcom/android/mail/ui/cN;

    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mail/ui/cN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    .line 528
    new-instance v0, Lcom/android/mail/ui/aI;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aI;-><init>(Lcom/android/mail/ui/aJ;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    .line 531
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Lcom/android/mail/ui/aK;)V

    .line 533
    iget-object v0, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 534
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/a;->aDu:I

    .line 535
    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/a;->aDG:I

    .line 536
    invoke-virtual {p1}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/aj;->c(Landroid/content/res/Resources;)Lcom/android/mail/utils/aj;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/ui/a;->ate:Lcom/android/mail/utils/aj;

    .line 537
    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    .line 538
    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aDU:Z

    .line 539
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/mail/ui/a;->aDG:I

    return v0
.end method

.method private a(ILcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/be;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1488
    invoke-static {p2}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v2

    .line 1489
    iget-object v3, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v4}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/mail/ui/aI;->a(ILjava/util/Collection;)Lcom/android/mail/providers/Conversation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/mail/ui/a;->r(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0d0276

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d0278

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d027a

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d0277

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d0284

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d0286

    if-eq p1, v2, :cond_0

    const v2, 0x7f0d027c

    if-ne p1, v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 1499
    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/mail/ui/n;

    invoke-direct {v0, p0, p2}, Lcom/android/mail/ui/n;-><init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;)V

    :goto_2
    return-object v0

    :cond_1
    move v2, v1

    .line 1489
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1499
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/providers/Conversation;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/mail/ui/a;->aDN:Lcom/android/mail/providers/Conversation;

    return-object p1
.end method

.method private a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z",
            "Lcom/android/mail/browse/be;",
            ")",
            "Lcom/android/mail/ui/br;"
        }
    .end annotation

    .prologue
    .line 3810
    new-instance v0, Lcom/android/mail/ui/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mail/ui/u;-><init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Z)V

    .line 3811
    invoke-virtual {v0, p4}, Lcom/android/mail/ui/u;->a(Lcom/android/mail/browse/be;)V

    .line 3812
    return-object v0
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/android/mail/providers/Folder;Lcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;ZZZZ",
            "Lcom/android/mail/providers/Folder;",
            "Lcom/android/mail/browse/be;",
            ")",
            "Lcom/android/mail/ui/br;"
        }
    .end annotation

    .prologue
    .line 3926
    new-instance v1, Lcom/android/mail/ui/x;

    const/4 v7, 0x1

    if-eqz p6, :cond_0

    const v8, 0x7f0d000e

    :goto_0
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/mail/ui/x;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;B)V

    .line 3928
    move-object/from16 v0, p8

    invoke-interface {v1, v0}, Lcom/android/mail/ui/br;->a(Lcom/android/mail/browse/be;)V

    .line 3929
    return-object v1

    .line 3926
    :cond_0
    const v8, 0x7f0d027d

    goto :goto_0
.end method

.method private a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 2756
    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2757
    invoke-virtual {v0, p1, p3, p2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2758
    return-void
.end method

.method private a(ILjava/util/Collection;ZILcom/android/mail/browse/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZI",
            "Lcom/android/mail/browse/be;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2097
    if-eqz p3, :cond_0

    .line 2099
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/mail/ui/a;->a(IZLcom/android/mail/browse/be;)V

    .line 2100
    iget-object v0, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, p4, v1}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 2102
    invoke-static {v0}, Lcom/android/mail/browse/k;->q(Ljava/lang/CharSequence;)Lcom/android/mail/browse/k;

    move-result-object v0

    .line 2103
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/k;->b(Landroid/app/FragmentManager;)V

    .line 2107
    :goto_0
    return-void

    .line 2105
    :cond_0
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0, v1}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 1

    .prologue
    .line 4152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDK:Landroid/content/DialogInterface$OnClickListener;

    .line 4153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/a;->aDL:I

    .line 4154
    return-void
.end method

.method private a(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->j(Lcom/android/mail/providers/Folder;)V

    .line 919
    if-eqz p2, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0, v1, p2}, Lcom/android/mail/c;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Ljava/lang/String;)Lcom/android/mail/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    .line 924
    :goto_0
    invoke-direct {p0}, Lcom/android/mail/ui/a;->wp()V

    .line 925
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0, v1}, Lcom/android/mail/c;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Lcom/android/mail/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/a;IZ)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/a;->h(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Landroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->x(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 137
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/MailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/providers/Folder;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZZ)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;ZZZ)V

    return-void
.end method

.method private a(Lcom/android/mail/ui/br;)V
    .locals 1

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDD:Lcom/android/mail/ui/br;

    if-eqz v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDD:Lcom/android/mail/ui/br;

    invoke-interface {v0}, Lcom/android/mail/ui/br;->wJ()V

    .line 3770
    :cond_0
    iput-object p1, p0, Lcom/android/mail/ui/a;->aDD:Lcom/android/mail/ui/br;

    .line 3771
    return-void
.end method

.method private a(Ljava/util/Collection;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1908
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "performing markConversationsRead"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1910
    if-eqz p4, :cond_0

    if-nez p2, :cond_0

    .line 1911
    new-instance v0, Lcom/android/mail/ui/s;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/s;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZZ)V

    .line 1918
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    :goto_0
    return-void

    .line 1924
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1925
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1926
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 1927
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1928
    const-string v4, "read"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1931
    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    .line 1932
    :cond_2
    const-string v4, "seen"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1936
    :cond_3
    const-string v4, "suppress_undo"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1937
    if-eqz p3, :cond_4

    .line 1938
    const-string v4, "viewed"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1940
    :cond_4
    iget-object v4, v0, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 1941
    invoke-virtual {v4, p2}, Lcom/android/mail/providers/ConversationInfo;->bi(Z)Z

    move-result v5

    .line 1942
    if-eqz v5, :cond_5

    .line 1943
    const-string v5, "conversationInfo"

    invoke-virtual {v4}, Lcom/android/mail/providers/ConversationInfo;->uN()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1945
    :cond_5
    iget-object v4, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v4, v0, v3}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;Landroid/content/ContentValues;)Lcom/android/mail/browse/z;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1948
    iput-boolean p2, v0, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 1949
    if-eqz p3, :cond_1

    .line 1950
    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uK()V

    goto :goto_1

    .line 1953
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->d(Ljava/util/Collection;)I

    goto :goto_0
.end method

.method private static a(Landroid/app/Fragment;)Z
    .locals 1

    .prologue
    .line 573
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Landroid/app/Fragment;)Z
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->b(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Lcom/android/mail/c/b;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v1, v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v5, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v0}, Lcom/android/mail/providers/Account;->i(Lcom/android/mail/providers/Account;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :cond_3
    iget-object v4, p0, Lcom/android/mail/ui/a;->aDg:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/a;Z)Z
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/mail/ui/a;->aDU:Z

    return p1
.end method

.method private a(Ljava/util/Collection;Ljava/lang/Runnable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2005
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->r(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v0}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v0

    .line 2009
    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2014
    :cond_0
    iput-object p2, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    .line 2015
    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;I)V

    .line 2016
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    move v0, v1

    .line 2019
    :goto_0
    return v0

    .line 2016
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2019
    goto :goto_0
.end method

.method static synthetic b(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/ConversationCheckedSet;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    return-object v0
.end method

.method private b(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1812
    if-nez p2, :cond_0

    move v0, v1

    .line 1813
    :goto_0
    invoke-virtual {p1}, Lcom/android/mail/providers/Conversation;->uH()I

    move-result v4

    .line 1814
    if-le v4, v3, :cond_1

    if-lez v0, :cond_1

    if-ge v0, v4, :cond_1

    move v2, v3

    .line 1817
    :goto_1
    sget-object v5, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v6, "markConversationMessagesUnread(conv=%s), numMessages=%d, unreadCount=%d, subsetIsUnread=%b"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1820
    if-nez v2, :cond_2

    .line 1823
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, ". . doing full mark unread"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1824
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;ZZZ)V

    .line 1864
    :goto_2
    return-void

    .line 1812
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1814
    goto :goto_1

    .line 1826
    :cond_2
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1827
    invoke-static {p3}, Lcom/android/mail/providers/ConversationInfo;->c([B)Lcom/android/mail/providers/ConversationInfo;

    move-result-object v0

    .line 1828
    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, ". . doing subset mark unread, originalConversationInfo = %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1831
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string v4, "read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/mail/browse/u;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1834
    if-eqz p3, :cond_4

    .line 1835
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string v4, "conversationInfo"

    invoke-virtual {v0, v2, v4, p3}, Lcom/android/mail/browse/u;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1840
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    const/4 v2, 0x0

    .line 1842
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1843
    if-nez v2, :cond_5

    .line 1844
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1846
    :cond_5
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    sget-object v6, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v7, ". . Adding op: read=0, uri=%s"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v1

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 1851
    :cond_6
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v5, ". . operations = %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v0, v5, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1852
    new-instance v0, Lcom/android/mail/ui/q;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/q;-><init>(Lcom/android/mail/ui/a;)V

    iget-object v1, p0, Lcom/android/mail/ui/a;->Hb:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/mail/ui/q;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->j(Lcom/android/mail/providers/Folder;)V

    return-void
.end method

.method private b(Landroid/app/Fragment;)Z
    .locals 1

    .prologue
    .line 3398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/mail/ui/a;Lcom/android/mail/c/b;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/mail/providers/Account;->b(Lcom/android/mail/c/b;)[Lcom/android/mail/providers/Account;

    move-result-object v5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    sget-object v7, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v8, "updateAccounts(%s)"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v0, v9, v3

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v7, p0, Lcom/android/mail/ui/a;->aDg:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v8, v8, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    aget-object v0, v5, v3

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v4}, Lcom/android/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/a;->n(Lcom/android/mail/providers/Account;)V

    :cond_3
    iput-object v5, p0, Lcom/android/mail/ui/a;->aDk:[Lcom/android/mail/providers/Account;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDr:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    array-length v0, v5

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/mail/providers/t;->vi()Lcom/android/mail/providers/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/t;->vk()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v7, v5

    move v4, v3

    :goto_4
    if-ge v4, v7, :cond_7

    aget-object v1, v5, v4

    iget-object v8, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move-object v1, v0

    move v0, v2

    goto :goto_3

    :cond_8
    move-object v1, v0

    move v0, v3

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/android/mail/ui/a;Z)Z
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/mail/ui/a;->aDW:Z

    return p1
.end method

.method static synthetic c(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/C;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDV:Lcom/android/mail/ui/C;

    return-object v0
.end method

.method private d(Lcom/android/mail/providers/Account;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2366
    if-nez p1, :cond_0

    .line 2367
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "AAC ignoring null (presumably invalid) account restoration"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2393
    :goto_0
    return-void

    .line 2371
    :cond_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AbstractActivityController.setAccount(): account = %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2372
    iput-object p1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    .line 2374
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/mail/a/d;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 2379
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->invalidateOptionsMenu()V

    .line 2380
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    invoke-virtual {v1}, Lcom/android/mail/ui/da;->Ac()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/da;->w(Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    invoke-virtual {v0}, Lcom/android/mail/ui/da;->deactivate()V

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/android/mail/ui/da;->a(Landroid/content/Context;Lcom/android/mail/ui/a;)Z

    .line 2381
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDC:Lcom/android/mail/ui/t;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v5, v0, v1}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 2383
    invoke-static {}, Lcom/android/mail/providers/t;->vi()Lcom/android/mail/providers/t;

    move-result-object v0

    .line 2384
    if-eqz v0, :cond_2

    .line 2385
    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/t;->bU(Ljava/lang/String;)V

    .line 2387
    :cond_2
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-nez v0, :cond_3

    .line 2388
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "AAC ignoring account with null settings."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2391
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDp:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 2392
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vQ()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/mail/ui/a;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/br;)V

    return-void
.end method

.method static synthetic e(Lcom/android/mail/ui/a;)Lcom/android/mail/utils/l;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDX:Lcom/android/mail/utils/l;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDi:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mail/ui/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDn:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mail/ui/a;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/mail/ui/a;->aDu:I

    return v0
.end method

.method private h(IZ)V
    .locals 2

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setHomeAsUpIndicator(I)V

    .line 2332
    :goto_0
    return-void

    .line 2330
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/t;->setHomeAsUpIndicator(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/android/mail/ui/a;)Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDN:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method private i(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 1015
    if-nez p1, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aCR:Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDs:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private j(Lcom/android/mail/providers/Folder;)V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1033
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1034
    :cond_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "AAC.setFolder(%s): Bad input"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v4, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1078
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "AAC.setFolder(%s): Input matches mFolder"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_4

    move v0, v1

    .line 1042
    :goto_1
    sget-object v3, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v4, "AbstractActivityController.setFolder(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1043
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 1047
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/providers/Folder;)V

    .line 1048
    iput-object p1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    .line 1053
    iget-object v3, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    iget-object v4, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v3, v4}, Lcom/android/mail/ui/S;->d(Lcom/android/mail/providers/Folder;)V

    .line 1060
    invoke-virtual {v1, v7}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1061
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    invoke-virtual {v1, v7, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1065
    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1069
    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1071
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1072
    const-string v3, "account"

    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1073
    const-string v3, "folder"

    iget-object v4, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1074
    const-string v3, "ignore-initial-conversation-limit"

    iget-boolean v4, p0, Lcom/android/mail/ui/a;->aDm:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1076
    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aDm:Z

    .line 1077
    iget-object v2, p0, Lcom/android/mail/ui/a;->aDA:Lcom/android/mail/ui/w;

    invoke-virtual {v1, v6, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1041
    goto :goto_1

    .line 1063
    :cond_5
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    invoke-virtual {v1, v7, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method static synthetic k(Lcom/android/mail/ui/a;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    return v0
.end method

.method static synthetic l(Lcom/android/mail/ui/a;)Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDH:Z

    return v0
.end method

.method static synthetic m(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDq:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic n(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDp:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic o(Lcom/android/mail/ui/a;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    const-string v1, "SyncErrorDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mail/browse/ba;->rZ()Lcom/android/mail/browse/ba;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    const-string v2, "SyncErrorDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/android/mail/ui/a;)V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/a;->a(Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method static synthetic q(Lcom/android/mail/ui/a;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDW:Z

    return v0
.end method

.method static synthetic r(Lcom/android/mail/ui/a;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDU:Z

    return v0
.end method

.method private r(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1975
    iget-object v1, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    .line 1976
    if-eq v1, v0, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-static {p1, v1}, Lcom/android/mail/providers/Conversation;->a(Ljava/util/Collection;Lcom/android/mail/providers/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/w;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDA:Lcom/android/mail/ui/w;

    return-object v0
.end method

.method static synthetic t(Lcom/android/mail/ui/a;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private vV()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDO:Ljava/lang/Runnable;

    .line 1210
    :cond_0
    return-void
.end method

.method private vY()V
    .locals 3

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAg:I

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget v1, v1, Lcom/android/mail/providers/Folder;->type:I

    invoke-static {v0, v1}, Lcom/android/mail/ui/bu;->Q(II)Lcom/android/mail/ui/bu;

    move-result-object v0

    .line 1678
    invoke-virtual {v0, p0}, Lcom/android/mail/ui/bu;->a(Lcom/android/mail/ui/bw;)V

    .line 1679
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EmptyFolderDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/bu;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1681
    :cond_0
    return-void
.end method

.method private wp()V
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDo:Lcom/android/mail/ui/D;

    if-eqz v0, :cond_0

    .line 3253
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDo:Lcom/android/mail/ui/D;

    invoke-virtual {v0}, Lcom/android/mail/ui/D;->cancel()Z

    .line 3254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDo:Lcom/android/mail/ui/D;

    .line 3256
    :cond_0
    return-void
.end method

.method private x(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 4086
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDE:Lcom/android/mail/ui/ak;

    if-eqz v0, :cond_0

    .line 4087
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDE:Lcom/android/mail/ui/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ak;->cancel(Z)Z

    .line 4089
    :cond_0
    new-instance v0, Lcom/android/mail/ui/ak;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/mail/ui/ak;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDE:Lcom/android/mail/ui/ak;

    .line 4090
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDE:Lcom/android/mail/ui/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4091
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/mail/ui/MailActivity;)Lcom/android/mail/ui/ActionableToastBar;
    .locals 1

    .prologue
    .line 1377
    const v0, 0x7f0d01aa

    invoke-virtual {p1, v0}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ActionableToastBar;

    return-object v0
.end method

.method public final a(ILcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
    .locals 3

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;Lcom/android/mail/providers/Folder;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/providers/Folder;",
            "Z",
            "Lcom/android/mail/browse/be;",
            ")",
            "Lcom/android/mail/ui/br;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 3936
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3937
    new-instance v0, Lcom/android/mail/ui/FolderOperation;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/mail/ui/FolderOperation;-><init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3938
    new-instance v0, Lcom/android/mail/ui/x;

    const v7, 0x7f0d0277

    iget-object v8, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, v4

    invoke-direct/range {v0 .. v9}, Lcom/android/mail/ui/x;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;B)V

    .line 3940
    invoke-interface {v0, p4}, Lcom/android/mail/ui/br;->a(Lcom/android/mail/browse/be;)V

    .line 3941
    return-object v0
.end method

.method public final a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Lcom/android/mail/ui/br;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2119
    new-instance v0, Lcom/android/mail/ui/d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/d;-><init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    .line 2126
    invoke-direct {p0, p2, v0}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/lang/Runnable;)Z

    .line 2130
    if-nez p4, :cond_1

    .line 2131
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2132
    iget-object v2, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v2, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->m(Lcom/android/mail/providers/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2133
    iget-object v2, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v2, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->n(Lcom/android/mail/providers/Conversation;)V

    goto :goto_0

    .line 2138
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2139
    if-eqz v0, :cond_2

    .line 2140
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "AAC.requestDelete: ListFragment is handling delete."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2141
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/ui/aw;->b(ILjava/util/Collection;Lcom/android/mail/ui/br;)V

    .line 2148
    :goto_1
    return-void

    .line 2146
    :cond_2
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "ACC.requestDelete: performing remove action ourselves"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2147
    invoke-interface {p3}, Lcom/android/mail/ui/br;->wJ()V

    goto :goto_1
.end method

.method public final a(IZLcom/android/mail/browse/be;)V
    .locals 6

    .prologue
    .line 4119
    if-eqz p2, :cond_0

    .line 4120
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v3

    .line 4125
    :goto_0
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v4

    .line 4127
    iput p1, p0, Lcom/android/mail/ui/a;->aDL:I

    .line 4128
    iput-boolean p2, p0, Lcom/android/mail/ui/a;->aDM:Z

    .line 4129
    new-instance v0, Lcom/android/mail/ui/j;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/j;-><init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDK:Landroid/content/DialogInterface$OnClickListener;

    .line 4137
    return-void

    .line 4122
    :cond_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Will act upon %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4123
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-static {v0}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v3

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/browse/ConversationMessage;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2038
    iget-boolean v0, p1, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    if-ne v0, p2, :cond_0

    .line 2065
    :goto_0
    return-void

    .line 2042
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/mail/browse/ConversationMessage;->ax(Z)V

    .line 2048
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationMessage;->qm()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 2049
    :goto_1
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v3

    .line 2050
    iget-boolean v4, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    if-eq v0, v4, :cond_2

    .line 2051
    iput-boolean v0, v3, Lcom/android/mail/providers/Conversation;->azc:Z

    .line 2052
    iget-object v4, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v3, v3, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    const-string v5, "starred"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/mail/browse/u;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2056
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2057
    const-string v3, "starred"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2059
    new-instance v1, Lcom/android/mail/ui/c;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/c;-><init>(Lcom/android/mail/ui/a;)V

    iget-object v2, p0, Lcom/android/mail/ui/a;->Hb:Landroid/content/ContentResolver;

    iget-object v3, p1, Lcom/android/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mail/ui/c;->b(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2048
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2057
    goto :goto_2
.end method

.method public final a(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Conversation;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1776
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wd()V

    .line 1780
    iput-boolean v6, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    .line 1781
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-nez v0, :cond_0

    .line 1782
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "markConversationMessagesUnread(id=%d), deferring"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1784
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDn:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mail/ui/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mail/ui/p;-><init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    :goto_0
    return-void

    .line 1792
    :cond_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "markConversationMessagesUnread(id=%d), performing"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1793
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_0
.end method

.method protected a(Lcom/android/mail/providers/Conversation;Z)V
    .locals 1

    .prologue
    .line 2586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/providers/Conversation;Z)V

    .line 2587
    return-void
.end method

.method protected final a(Lcom/android/mail/providers/Folder;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-static {p1}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    .line 890
    invoke-direct {p0, v1, v0}, Lcom/android/mail/ui/a;->h(IZ)V

    .line 891
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->L(I)V

    .line 893
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bJ()V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    .line 902
    :cond_2
    if-eqz p1, :cond_7

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 903
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    iget-object v0, v0, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    .line 908
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v1, p1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/a;->bo(Z)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v1}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/c;)V

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/cN;->a(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wf()V

    .line 909
    return-void

    .line 905
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 3

    .prologue
    .line 3292
    new-instance v0, Lcom/android/mail/browse/aO;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/mail/browse/aO;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ConversationCheckedSet;Lcom/android/mail/providers/Folder;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    .line 3293
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3294
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->ws()V

    .line 3296
    :cond_1
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ae;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3260
    if-eqz p1, :cond_0

    .line 3261
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AAC.onAnimationEnd. cursor=%s adapter=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3264
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-nez v0, :cond_2

    .line 3265
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "null ConversationCursor in onAnimationEnd"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3281
    :cond_1
    :goto_0
    return-void

    .line 3268
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3269
    const-string v0, "ConvCursor"

    const-string v1, "Stopped animating: try sync"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3270
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->pn()V

    .line 3273
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3274
    const-string v0, "ConvCursor"

    const-string v1, "Stopped animating: refresh"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3275
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->refresh()Z

    .line 3277
    :cond_4
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDH:Z

    if-eqz v0, :cond_1

    .line 3278
    iput-boolean v4, p0, Lcom/android/mail/ui/a;->aDH:Z

    .line 3279
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDq:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4448
    return-void
.end method

.method protected a(Ljava/util/Collection;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2031
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0, p2, p1}, Lcom/android/mail/ui/aI;->a(ILjava/util/Collection;)Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 2032
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "showNextConversation: showing %s next."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2033
    invoke-virtual {p0, v0, v4}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 2034
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Collection;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {p1, v0}, Lcom/android/mail/ui/FolderOperation;->a(Ljava/util/Collection;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 3100
    :goto_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "onFolderChangesCommit: isDestructive = %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3101
    if-eqz v1, :cond_1

    .line 3102
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 3103
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/mail/providers/Conversation;->azn:Z

    goto :goto_1

    .line 3097
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 3107
    :cond_1
    if-eqz p4, :cond_2

    const v0, 0x7f0d027c

    iget-object v2, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-direct {p0, v0, v2}, Lcom/android/mail/ui/a;->a(ILcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/be;

    move-result-object v8

    .line 3113
    :goto_2
    if-eqz v1, :cond_6

    .line 3122
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3123
    const/4 v1, 0x0

    .line 3126
    const/4 v0, 0x0

    .line 3127
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/FolderOperation;

    .line 3128
    iget-boolean v4, v0, Lcom/android/mail/ui/FolderOperation;->aKh:Z

    if-eqz v4, :cond_3

    .line 3129
    iget-object v0, v0, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    move-object v2, v0

    goto :goto_3

    .line 3107
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 3131
    :cond_3
    const/4 v0, 0x1

    move v1, v0

    .line 3133
    goto :goto_3

    .line 3135
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    move-object v7, v2

    .line 3142
    :goto_4
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/android/mail/providers/Folder;Lcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    .line 3144
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0, p3}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    .line 3150
    :goto_5
    return-void

    .line 3138
    :cond_5
    iget-object v7, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    goto :goto_4

    .line 3146
    :cond_6
    iget-object v7, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/util/Collection;ZZZZLcom/android/mail/providers/Folder;Lcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/br;)V

    .line 3148
    invoke-interface {v0}, Lcom/android/mail/ui/br;->wJ()V

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->ww()V

    goto :goto_5
.end method

.method public final a(Ljava/util/Collection;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1887
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "markConversationsRead(targets=%s)"

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1889
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-nez v0, :cond_1

    .line 1890
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "markConversationsRead(targets=%s), deferring"

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDn:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mail/ui/r;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mail/ui/r;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    :goto_0
    return-void

    .line 1902
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;ZZZ)V

    goto :goto_0
.end method

.method public final a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 807
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    if-eqz p1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    if-nez p1, :cond_2

    .line 815
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bJ()V

    goto :goto_0

    .line 819
    :cond_2
    if-eqz p3, :cond_3

    .line 820
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    if-eqz p2, :cond_4

    const-string v1, "account"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_1
    if-eqz p3, :cond_5

    const-string v1, "folder"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_2
    iput-object v7, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDA:Lcom/android/mail/ui/w;

    invoke-virtual {v1, v6, v0, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_6

    .line 825
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->pF()Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDS:Landroid/widget/ListView;

    .line 831
    :goto_3
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 833
    iput-boolean v5, p0, Lcom/android/mail/ui/a;->aDT:Z

    .line 834
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->L(I)V

    goto :goto_0

    .line 820
    :cond_4
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    const-string v3, "AAC.preloadConvList(): Got an empty folder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 828
    :cond_6
    iput-object v7, p0, Lcom/android/mail/ui/a;->aDS:Landroid/widget/ListView;

    goto :goto_3

    .line 837
    :cond_7
    if-eqz p1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method protected final b(Lcom/android/mail/ui/ae;)Lcom/android/mail/ui/ab;
    .locals 1

    .prologue
    .line 3955
    new-instance v0, Lcom/android/mail/ui/e;

    invoke-direct {v0, p0, p1}, Lcom/android/mail/ui/e;-><init>(Lcom/android/mail/ui/a;Lcom/android/mail/ui/ae;)V

    return-object v0
.end method

.method protected abstract b(Lcom/android/mail/c;)V
.end method

.method protected b(Lcom/android/mail/providers/Conversation;Z)V
    .locals 4

    .prologue
    .line 2590
    if-eqz p1, :cond_0

    .line 2591
    sget-object v0, Lcom/android/mail/utils/ag;->aQL:Lcom/android/mail/f/a;

    invoke-virtual {v0}, Lcom/android/mail/f/a;->start()V

    .line 2594
    :cond_0
    const-string v0, "AbstractActivityController"

    const-string v1, "showConversation(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/MailLogService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2596
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/a;->k(Lcom/android/mail/providers/Conversation;)V

    .line 2597
    return-void
.end method

.method protected final b(Lcom/android/mail/providers/Folder;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3984
    iget v4, p1, Lcom/android/mail/providers/Folder;->aAi:I

    .line 3985
    invoke-static {v4}, Lcom/android/mail/providers/E;->cE(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4027
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3988
    :pswitch_1
    invoke-static {v4}, Lcom/android/mail/providers/E;->cF(I)I

    move-result v3

    .line 3993
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 3996
    :goto_1
    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/mail/providers/Folder;->aAb:I

    if-gtz v0, :cond_1

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 3998
    :goto_2
    if-nez v0, :cond_0

    .line 4001
    new-instance v3, Lcom/android/mail/ui/f;

    invoke-direct {v3, p0, p1}, Lcom/android/mail/ui/f;-><init>(Lcom/android/mail/ui/a;Lcom/android/mail/providers/Folder;)V

    .line 4002
    const v0, 0x7f090047

    move v6, v0

    move-object v7, v3

    .line 4021
    :goto_3
    iget-object v8, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/mail/utils/ag;->n(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    move v3, v1

    move v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    move-object v2, v8

    move-object v3, v7

    move-object v4, v9

    move v5, v6

    move v6, p2

    move v7, v1

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3993
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3996
    goto :goto_2

    .line 4005
    :pswitch_2
    new-instance v3, Lcom/android/mail/ui/g;

    invoke-direct {v3, p0}, Lcom/android/mail/ui/g;-><init>(Lcom/android/mail/ui/a;)V

    .line 4006
    const v0, 0x7f090153

    move v6, v0

    move-object v7, v3

    .line 4007
    goto :goto_3

    .line 4011
    :pswitch_3
    new-instance v3, Lcom/android/mail/ui/h;

    invoke-direct {v3, p0}, Lcom/android/mail/ui/h;-><init>(Lcom/android/mail/ui/a;)V

    .line 4012
    const v0, 0x7f090154

    move v6, v0

    move-object v7, v3

    .line 4013
    goto :goto_3

    .line 4015
    :pswitch_4
    new-instance v3, Lcom/android/mail/ui/i;

    invoke-direct {v3, p0}, Lcom/android/mail/ui/i;-><init>(Lcom/android/mail/ui/a;)V

    .line 4016
    const v0, 0x7f090155

    move v6, v0

    move-object v7, v3

    .line 4017
    goto :goto_3

    .line 3985
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 0

    .prologue
    .line 3301
    return-void
.end method

.method public final b(Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Ljava/lang/String;I)I

    .line 1763
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->ww()V

    .line 1764
    return-void
.end method

.method public final b(Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Ljava/lang/String;Z)I

    .line 1756
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->ww()V

    .line 1757
    return-void
.end method

.method protected final declared-synchronized bl(Z)V
    .locals 2

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-boolean v1, p0, Lcom/android/mail/ui/a;->aCR:Z

    invoke-static {v0, p1, v1}, Lcom/android/mail/utils/ag;->a(Landroid/database/Cursor;ZZ)V

    .line 1173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aCR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_0
    monitor-exit p0

    return-void

    .line 1169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bm(Z)V
    .locals 2

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/android/mail/ui/a;->aDx:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/a;->bl(Z)V

    .line 1183
    invoke-direct {p0}, Lcom/android/mail/ui/a;->vV()V

    .line 1186
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1188
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->bm(Z)V

    .line 1190
    :cond_0
    return-void

    .line 1179
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bn(Z)V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/android/mail/ui/a;->vV()V

    .line 1199
    return-void
.end method

.method public final bo(Z)V
    .locals 1

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2345
    if-eqz v0, :cond_0

    .line 2346
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/aw;->bo(Z)V

    .line 2348
    :cond_0
    return-void
.end method

.method public final c(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/Z;->c(Landroid/database/DataSetObserver;)V

    .line 2795
    return-void
.end method

.method public c(Lcom/android/mail/providers/Conversation;Z)V
    .locals 2

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2666
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2667
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xK()V

    .line 2671
    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->bo(Z)V

    .line 2672
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 2673
    return-void
.end method

.method protected c(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 552
    return-void
.end method

.method public c(Lcom/android/mail/providers/Folder;Z)Z
    .locals 1

    .prologue
    .line 4452
    const/4 v0, 0x0

    return v0
.end method

.method public abstract cH(I)Z
.end method

.method public cI(I)V
    .locals 2

    .prologue
    .line 2298
    invoke-static {p1}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->k(Lcom/android/mail/providers/Conversation;)V

    .line 2303
    :cond_0
    if-eqz p1, :cond_1

    .line 2304
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wf()V

    .line 2307
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2310
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->g(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    .line 2311
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/a;->h(IZ)V

    .line 2312
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->L(I)V

    .line 2313
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vX()V

    .line 2315
    :cond_2
    return-void
.end method

.method public final cJ(I)Lcom/android/mail/ui/br;
    .locals 3

    .prologue
    .line 3788
    new-instance v0, Lcom/android/mail/ui/u;

    iget-object v1, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/mail/ui/u;-><init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Z)V

    .line 3789
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/mail/ui/br;->a(Lcom/android/mail/browse/be;)V

    .line 3790
    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/br;)V

    .line 3791
    return-object v0
.end method

.method public final cM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1728
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->N(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1729
    iget-object v1, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->bJ()V

    .line 1739
    :cond_0
    :goto_0
    return v0

    .line 1731
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {v1}, Lcom/android/mail/ui/cx;->wb()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v0}, Lcom/android/mail/browse/aO;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1736
    const/4 v0, 0x0

    goto :goto_0

    .line 1739
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wb()Z

    move-result v0

    goto :goto_0
.end method

.method public final cU()V
    .locals 1

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0}, Landroid/support/v7/app/t;->cU()V

    .line 1396
    :cond_0
    return-void
.end method

.method public final ch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2247
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "search_to_list"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    .line 2248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2249
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2252
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2253
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/cx;->de(I)V

    .line 2257
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/MailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2258
    return-void
.end method

.method public final ci(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/database/DataSetObserver;)V
    .locals 4

    .prologue
    .line 2800
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/Z;->d(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    :goto_0
    return-void

    .line 2801
    :catch_0
    move-exception v0

    .line 2803
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "unregisterConversationLoadedObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/providers/p;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/android/mail/ui/a;->aDl:Lcom/android/mail/providers/p;

    .line 1004
    return-void
.end method

.method public final e(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDp:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 758
    return-void
.end method

.method public final e(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 4080
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 4081
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->aAo:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->x(Landroid/net/Uri;)V

    .line 4083
    :cond_0
    return-void
.end method

.method public final f(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDp:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 767
    return-void
.end method

.method public final g(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDr:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 772
    return-void
.end method

.method public final h(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDr:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 777
    return-void
.end method

.method public h(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Z)V

    .line 953
    return-void
.end method

.method public final h(Lcom/android/mail/providers/Conversation;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1875
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1876
    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "AAC is in peek mode, not marking seen. conv=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1880
    :goto_0
    return v0

    .line 1879
    :cond_0
    new-array v2, v1, [Lcom/android/mail/providers/Conversation;

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;ZZ)V

    move v0, v1

    .line 1880
    goto :goto_0
.end method

.method public final i(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 792
    return-void
.end method

.method protected i(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2559
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/mail/providers/Conversation;->position:I

    if-gez v0, :cond_0

    .line 2562
    iput v1, p1, Lcom/android/mail/providers/Conversation;->position:I

    .line 2564
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 2565
    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->bQ:Z

    return v0
.end method

.method public final j(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDt:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 797
    return-void
.end method

.method protected final j(Lcom/android/mail/providers/Conversation;)V
    .locals 1

    .prologue
    .line 2576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 2577
    return-void
.end method

.method public final k(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDq:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 963
    return-void
.end method

.method public k(Lcom/android/mail/providers/Conversation;)V
    .locals 3

    .prologue
    .line 2707
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    iget-object v1, p1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2709
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yr()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    .line 2714
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/aI;->q(Lcom/android/mail/providers/Conversation;)V

    .line 2715
    iput-object p1, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    .line 2717
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_3

    .line 2718
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/S;->k(Lcom/android/mail/providers/Conversation;)V

    .line 2719
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->invalidateOptionsMenu()V

    .line 2721
    :cond_3
    return-void

    .line 2709
    :cond_4
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AAC.clearDetachedMode(): CLF = null on tablet!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected final k(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/mail/ui/a;->aDF:Lcom/android/mail/providers/Folder;

    .line 1095
    return-void
.end method

.method public final l(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDq:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 972
    return-void
.end method

.method public l(Lcom/android/mail/providers/Conversation;)V
    .locals 0

    .prologue
    .line 2731
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/a;->k(Lcom/android/mail/providers/Conversation;)V

    .line 2732
    return-void
.end method

.method public final m(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDi:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 2763
    return-void
.end method

.method public m(Lcom/android/mail/providers/Account;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 684
    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "AAC.switchToDefaultAccount(%s)"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 685
    iget-object v2, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v2}, Lcom/android/mail/ui/dD;->AK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 690
    const-string v1, "extra-account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 691
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/MailActivity;->setResult(ILandroid/content/Intent;)V

    .line 692
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 703
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-nez v2, :cond_1

    move v2, v0

    .line 696
    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 698
    :goto_2
    if-eqz v0, :cond_3

    .line 699
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vS()V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 695
    goto :goto_1

    :cond_2
    move v0, v1

    .line 696
    goto :goto_2

    .line 702
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/a;->n(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public final n(Landroid/database/DataSetObserver;)V
    .locals 4

    .prologue
    .line 2768
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDi:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    :goto_0
    return-void

    .line 2769
    :catch_0
    move-exception v0

    .line 2771
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "unregisterConversationListObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public n(Lcom/android/mail/providers/Account;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 706
    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "AAC.changeAccount(%s)"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 708
    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-nez v2, :cond_2

    move v2, v0

    .line 709
    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 712
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p1, v2}, Lcom/android/mail/providers/Account;->i(Lcom/android/mail/providers/Account;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 748
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    .line 708
    goto :goto_0

    :cond_3
    move v0, v1

    .line 709
    goto :goto_1

    .line 716
    :cond_4
    if-nez p1, :cond_5

    .line 717
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "AAC.changeAccount(null) called."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 720
    :cond_5
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    .line 721
    iget-object v3, p0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mail/ui/l;

    invoke-direct {v4, p0, v2}, Lcom/android/mail/ui/l;-><init>(Lcom/android/mail/ui/a;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    if-eqz v0, :cond_6

    .line 728
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/a;->bo(Z)V

    .line 732
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/providers/Account;)V

    .line 734
    invoke-direct {p0}, Lcom/android/mail/ui/a;->wp()V

    .line 735
    if-eqz v0, :cond_7

    .line 736
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vS()V

    .line 739
    :cond_7
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 746
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/MailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public final o(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDs:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 2779
    return-void
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1110
    packed-switch p1, :pswitch_data_0

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1113
    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDC:Lcom/android/mail/ui/t;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0

    .line 1123
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    .line 1126
    :goto_1
    if-eqz v0, :cond_0

    .line 1127
    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->x(Landroid/net/Uri;)V

    goto :goto_0

    .line 1125
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1132
    :pswitch_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0, p2, p3}, Lcom/android/mail/ui/MailActivity;->setResult(ILandroid/content/Intent;)V

    .line 1134
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto :goto_0

    .line 1135
    :cond_3
    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1139
    const-string v0, "extra-folder"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1140
    const-string v1, "extra-account"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Account;

    .line 1141
    if-eqz v0, :cond_4

    .line 1142
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->h(Lcom/android/mail/providers/Folder;)V

    .line 1143
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_0

    .line 1144
    :cond_4
    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/a;->m(Lcom/android/mail/providers/Account;)V

    .line 1146
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_0

    .line 1151
    :pswitch_3
    if-ne p2, v1, :cond_0

    .line 1152
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/cx;->ct(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1406
    const v1, 0x7f0d01a9

    if-ne v0, v1, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1410
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wc()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0200d7

    const/16 v4, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1299
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/mail/ui/S;

    iget-object v2, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mail/ui/S;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/mail/ui/S;->a(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ac;Landroid/support/v7/app/a;)V

    invoke-virtual {v0, v8}, Landroid/support/v7/app/a;->k(Z)V

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    invoke-virtual {v0}, Lcom/android/mail/ui/S;->xl()V

    .line 1300
    :cond_0
    sget-boolean v0, Lcom/android/mail/MailLogService;->ajX:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/mail/ui/m;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/m;-><init>(Lcom/android/mail/ui/a;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDj:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1302
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->setDefaultKeyMode(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->Hb:Landroid/content/ContentResolver;

    .line 1304
    new-instance v0, Lcom/android/mail/ui/da;

    invoke-direct {v0}, Lcom/android/mail/ui/da;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    .line 1305
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cN;->d(Lcom/android/mail/ui/as;)V

    .line 1306
    iget-object v0, p0, Lcom/android/mail/ui/a;->ate:Lcom/android/mail/utils/aj;

    invoke-virtual {v0, p0}, Lcom/android/mail/utils/aj;->c(Lcom/android/mail/ui/O;)V

    .line 1308
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDx:Landroid/view/View;

    .line 1309
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDx:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1312
    new-instance v0, Landroid/support/v7/app/t;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/t;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    .line 1314
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDV:Lcom/android/mail/ui/C;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/k;)V

    .line 1315
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/graphics/drawable/Drawable;)V

    .line 1321
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0}, Landroid/support/v7/app/t;->cV()V

    .line 1322
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/t;->setHomeAsUpIndicator(I)V

    .line 1333
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 1334
    new-instance v0, Lcom/android/mail/browse/Z;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/mail/browse/Z;-><init>(Lcom/android/mail/ui/cS;Lcom/android/mail/ui/ac;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    .line 1335
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/MailActivity;)Lcom/android/mail/ui/ActionableToastBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    .line 1336
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4, v4}, Landroid/support/v7/app/a;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/S;->a(Lcom/android/mail/ui/dD;)V

    .line 1338
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDX:Lcom/android/mail/utils/l;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/l;->aF(Landroid/view/View;)V

    .line 1340
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1342
    new-instance v0, Lcom/android/mail/ui/cx;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-direct {v0, v1, p0, v6, p1}, Lcom/android/mail/ui/cx;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ac;Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    .line 1344
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/dy;)V

    .line 1350
    if-eqz p1, :cond_8

    .line 1351
    const-string v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    const-string v0, "saved-account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/providers/Account;)V

    .line 1354
    :cond_3
    const-string v0, "saved-folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1355
    const-string v0, "saved-folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1356
    const-string v1, "saved-query"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V

    .line 1359
    :cond_4
    const-string v0, "saved-action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1360
    const-string v0, "saved-action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/a;->aDL:I

    .line 1362
    :cond_5
    const-string v0, "saved-action-from-selected"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDM:Z

    .line 1363
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/dD;->o(Landroid/os/Bundle;)V

    .line 1368
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDC:Lcom/android/mail/ui/t;

    invoke-virtual {v0, v8, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1370
    return-void

    .line 1324
    :cond_7
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    .line 1325
    invoke-virtual {v0, v5}, Landroid/support/v7/app/a;->setHomeAsUpIndicator(I)V

    .line 1326
    const v1, 0x7f09018d

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->setHomeActionContentDescription(I)V

    .line 1327
    invoke-virtual {v0, v9}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_0

    .line 1364
    :cond_8
    if-eqz v6, :cond_6

    .line 1365
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "IN AAC.handleIntent. action=%s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "account"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "account"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Account;->bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/providers/Account;)V

    :cond_9
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_6

    const-string v0, "conversationUri"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    const-string v0, "notification"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/mail/a/d;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "notification_click"

    if-eqz v7, :cond_c

    const-string v2, "conversation"

    :goto_2
    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a
    if-eqz v7, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AD()V

    :goto_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "folderUri"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "folderUri"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_4
    const-string v2, "ignore-initial-conversation-limit"

    invoke-virtual {v6, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mail/ui/a;->aDm:Z

    const-string v2, "folderUri"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "conversationUri"

    const-string v2, "conversationUri"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x22

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDC:Lcom/android/mail/ui/t;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v9, v0, v1}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "conversation_list"

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    goto :goto_3

    :cond_e
    const-string v0, "folder"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "folder"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->bN(Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    goto :goto_4

    :cond_f
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Couldn\'t find a folder URI in the extras: %s"

    new-array v4, v9, [Ljava/lang/Object;

    if-nez v0, :cond_10

    const-string v0, "null"

    :goto_6
    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "account"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v8, p0, Lcom/android/mail/ui/a;->aDJ:Z

    const-string v0, "query"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    new-instance v2, Lcom/android/mail/ui/cz;

    invoke-direct {v2, v1, v8}, Lcom/android/mail/ui/cz;-><init>(Lcom/android/mail/ui/cx;B)V

    new-array v1, v9, [Ljava/lang/String;

    aput-object v0, v1, v8

    invoke-virtual {v2, v1}, Lcom/android/mail/ui/cz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "account"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/providers/Account;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "query"

    const-string v2, "query"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wh()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AF()V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AE()V

    goto/16 :goto_5

    :cond_13
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Missing account extra from search intent.  Finishing"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    goto/16 :goto_5
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const/4 v0, 0x0

    .line 1466
    :goto_0
    return v0

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1464
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    invoke-virtual {v1}, Lcom/android/mail/ui/S;->xi()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1465
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/S;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1466
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onDataSetChanged()V
    .locals 2

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->ww()V

    invoke-direct {p0, v0}, Lcom/android/mail/ui/a;->b(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->bl(Z)V

    .line 3208
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDi:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 3209
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->o(Lcom/android/mail/browse/u;)V

    .line 3210
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2268
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/u;->b(Lcom/android/mail/browse/y;)V

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDX:Lcom/android/mail/utils/l;

    invoke-virtual {v0, v2}, Lcom/android/mail/utils/l;->a(Lcom/android/mail/utils/m;)V

    .line 2272
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDX:Lcom/android/mail/utils/l;

    invoke-virtual {v0, v2}, Lcom/android/mail/utils/l;->aF(Landroid/view/View;)V

    .line 2274
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->onDestroy()V

    .line 2275
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    invoke-virtual {v0}, Lcom/android/mail/ui/S;->onDestroy()V

    .line 2276
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    invoke-virtual {v0}, Lcom/android/mail/ui/cN;->destroy()V

    .line 2277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->bQ:Z

    .line 2278
    iget-object v0, p0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDj:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2279
    iput-object v2, p0, Lcom/android/mail/ui/a;->aDj:Ljava/lang/Runnable;

    .line 2280
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {v0}, Lcom/android/mail/ui/cx;->onDestroy()V

    .line 2281
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .prologue
    const v9, 0x7f0d0281

    const v8, 0x7f0d0280

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1530
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/t;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    const-string v2, "drawer_toggle"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1668
    :cond_0
    :goto_0
    return v6

    .line 1536
    :cond_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action_bar/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v5}, Lcom/android/mail/ui/dD;->AA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 1539
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1540
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "AbstractController.onOptionsItemSelected(%d) called."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1542
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-static {v0}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v2

    .line 1544
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_4

    move-object v0, v3

    .line 1547
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/a;->cH(I)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/a;->bo(Z)V

    .line 1548
    iget-object v4, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-direct {p0, v1, v4}, Lcom/android/mail/ui/a;->a(ILcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/be;

    move-result-object v5

    .line 1554
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_22

    iget-object v4, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-static {v4}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/browse/u;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1557
    const v4, 0x7f0d0276

    if-ne v1, v4, :cond_7

    .line 1558
    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aBU:Z

    if-eqz v0, :cond_6

    move v3, v6

    .line 1559
    :goto_3
    const v4, 0x7f110002

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZILcom/android/mail/browse/be;)V

    move v0, v6

    .line 1635
    :goto_4
    if-nez v0, :cond_2

    .line 1637
    const v0, 0x102002c

    if-ne v1, v0, :cond_19

    .line 1638
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wc()Z

    move v0, v6

    .line 1663
    :cond_2
    :goto_5
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v1}, Lcom/android/mail/browse/aO;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v1, p1}, Lcom/android/mail/browse/aO;->k(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    move v6, v0

    goto/16 :goto_0

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    goto :goto_1

    :cond_5
    move v4, v7

    .line 1547
    goto :goto_2

    :cond_6
    move v3, v7

    .line 1558
    goto :goto_3

    .line 1561
    :cond_7
    const v4, 0x7f0d0277

    if-ne v1, v4, :cond_8

    .line 1562
    const v0, 0x7f0d0277

    iget-object v3, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v2, v3, v7, v5}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Lcom/android/mail/providers/Folder;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto :goto_4

    .line 1565
    :cond_8
    const v4, 0x7f0d0278

    if-ne v1, v4, :cond_a

    .line 1566
    if-eqz v0, :cond_9

    iget-boolean v0, v0, Lcom/android/mail/providers/Settings;->aBT:Z

    if-eqz v0, :cond_9

    move v3, v6

    .line 1567
    :goto_6
    const v4, 0x7f110001

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZILcom/android/mail/browse/be;)V

    move v0, v6

    .line 1569
    goto :goto_4

    :cond_9
    move v3, v7

    .line 1566
    goto :goto_6

    .line 1569
    :cond_a
    const v0, 0x7f0d0279

    if-ne v1, v0, :cond_b

    .line 1571
    const v4, 0x7f110003

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZILcom/android/mail/browse/be;)V

    move v0, v6

    goto :goto_4

    .line 1573
    :cond_b
    const v0, 0x7f0d027a

    if-ne v1, v0, :cond_c

    .line 1575
    invoke-direct {p0, v1, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto :goto_4

    .line 1576
    :cond_c
    const v0, 0x7f0d027f

    if-ne v1, v0, :cond_d

    .line 1577
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-static {v0}, Lcom/android/mail/providers/Conversation;->g(Lcom/android/mail/providers/Conversation;)Ljava/util/Collection;

    move-result-object v0

    const-string v2, "priority"

    invoke-virtual {p0, v0, v2, v6}, Lcom/android/mail/ui/a;->b(Ljava/util/Collection;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_4

    .line 1579
    :cond_d
    if-ne v1, v8, :cond_f

    .line 1580
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uW()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1581
    invoke-direct {p0, v8, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-virtual {p0, v8, v2, v0, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto/16 :goto_4

    .line 1585
    :cond_e
    const-string v0, "priority"

    invoke-virtual {p0, v2, v0, v7}, Lcom/android/mail/ui/a;->b(Ljava/util/Collection;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_4

    .line 1588
    :cond_f
    if-ne v1, v9, :cond_10

    .line 1589
    invoke-direct {p0, v9, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v0

    invoke-virtual {p0, v9, v2, v0, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto/16 :goto_4

    .line 1591
    :cond_10
    const v0, 0x7f0d0284

    if-ne v1, v0, :cond_11

    .line 1592
    const v0, 0x7f0d0284

    const v3, 0x7f0d0284

    invoke-direct {p0, v3, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto/16 :goto_4

    .line 1595
    :cond_11
    const v0, 0x7f0d0285

    if-ne v1, v0, :cond_12

    .line 1599
    const v0, 0x7f0d0285

    const v3, 0x7f0d0285

    invoke-direct {p0, v3, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto/16 :goto_4

    .line 1602
    :cond_12
    const v0, 0x7f0d0286

    if-ne v1, v0, :cond_13

    .line 1603
    const v0, 0x7f0d0286

    const v3, 0x7f0d0286

    invoke-direct {p0, v3, v2, v7, v5}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;ZLcom/android/mail/browse/be;)Lcom/android/mail/ui/br;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v7}, Lcom/android/mail/ui/a;->a(ILjava/util/Collection;Lcom/android/mail/ui/br;Z)V

    move v0, v6

    goto/16 :goto_4

    .line 1606
    :cond_13
    const v0, 0x7f0d027c

    if-eq v1, v0, :cond_14

    const v0, 0x7f0d027d

    if-ne v1, v0, :cond_17

    .line 1607
    :cond_14
    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v5, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    const v0, 0x7f0d027c

    if-ne v1, v0, :cond_16

    move v0, v6

    :goto_7
    invoke-static {v4, v2, v7, v5, v0}, Lcom/android/mail/ui/bT;->a(Lcom/android/mail/providers/Account;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;Z)Lcom/android/mail/ui/bT;

    move-result-object v0

    .line 1609
    if-eqz v0, :cond_15

    .line 1610
    iget-object v2, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v2}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/ui/bT;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_15
    move v0, v6

    .line 1612
    goto/16 :goto_4

    :cond_16
    move v0, v7

    .line 1607
    goto :goto_7

    .line 1612
    :cond_17
    const v0, 0x7f0d027e

    if-ne v1, v0, :cond_18

    .line 1613
    new-instance v0, Lcom/android/mail/ui/o;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/o;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v6

    goto/16 :goto_4

    :cond_18
    move v0, v7

    .line 1630
    goto/16 :goto_4

    .line 1639
    :cond_19
    const v0, 0x7f0d010f

    if-ne v1, v0, :cond_1a

    .line 1640
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    move v0, v6

    goto/16 :goto_5

    .line 1641
    :cond_1a
    const v0, 0x7f0d028c

    if-ne v1, v0, :cond_1b

    .line 1642
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->we()V

    move v0, v6

    goto/16 :goto_5

    .line 1643
    :cond_1b
    const v0, 0x7f0d0288

    if-ne v1, v0, :cond_1c

    .line 1644
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wa()V

    move v0, v6

    goto/16 :goto_5

    .line 1645
    :cond_1c
    const v0, 0x7f0d026c

    if-ne v1, v0, :cond_1d

    .line 1646
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->e(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    move v0, v6

    goto/16 :goto_5

    .line 1647
    :cond_1d
    const v0, 0x7f0d026d

    if-ne v1, v0, :cond_1e

    .line 1648
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v2}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/MailActivity;->a(Lcom/android/mail/providers/Account;I)V

    move v0, v6

    goto/16 :goto_5

    .line 1649
    :cond_1e
    const v0, 0x7f0d0289

    if-ne v1, v0, :cond_1f

    .line 1650
    invoke-direct {p0}, Lcom/android/mail/ui/a;->vY()V

    move v0, v6

    goto/16 :goto_5

    .line 1651
    :cond_1f
    const v0, 0x7f0d028a

    if-ne v1, v0, :cond_20

    .line 1652
    invoke-direct {p0}, Lcom/android/mail/ui/a;->vY()V

    move v0, v6

    goto/16 :goto_5

    .line 1653
    :cond_20
    const v0, 0x7f0d028d

    if-ne v1, v0, :cond_21

    .line 1654
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {v0, v6}, Lcom/android/mail/ui/cx;->de(I)V

    move v0, v6

    goto/16 :goto_5

    :cond_21
    move v0, v7

    .line 1657
    goto/16 :goto_5

    :cond_22
    move v0, v7

    goto/16 :goto_4
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 2171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDc:Z

    .line 2172
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    invoke-virtual {v0}, Lcom/android/mail/ui/da;->deactivate()V

    .line 2173
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCS:Lcom/android/mail/ui/S;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/S;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2167
    return-void
.end method

.method public final onRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1439
    iget-object v0, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    const-string v1, "SyncErrorDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1441
    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    if-eqz v0, :cond_1

    .line 1449
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    .line 1451
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2404
    const-string v0, "saved-detached-conv-uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    .line 2405
    const-string v0, "saved-conversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    const-string v0, "saved-conversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2408
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->i(Lcom/android/mail/providers/Conversation;)V

    .line 2411
    :cond_0
    const-string v0, "saved-toast-bar-op"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    const-string v0, "saved-toast-bar-op"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ToastBarOperation;

    .line 2413
    if-eqz v0, :cond_1

    .line 2414
    invoke-virtual {v0}, Lcom/android/mail/ui/ToastBarOperation;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 2415
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 2421
    :cond_1
    :goto_0
    const-string v0, "saved-hierarchical-folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDF:Lcom/android/mail/providers/Folder;

    .line 2422
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2423
    if-eqz v0, :cond_2

    .line 2424
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2431
    :cond_2
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    .line 2437
    :goto_1
    iget v0, p0, Lcom/android/mail/ui/a;->aDL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 2438
    iget v0, p0, Lcom/android/mail/ui/a;->aDL:I

    iget-boolean v1, p0, Lcom/android/mail/ui/a;->aDM:Z

    iget v2, p0, Lcom/android/mail/ui/a;->aDL:I

    iget-object v3, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-direct {p0, v2, v3}, Lcom/android/mail/ui/a;->a(ILcom/android/mail/providers/Conversation;)Lcom/android/mail/browse/be;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/a;->a(IZLcom/android/mail/browse/be;)V

    .line 2443
    :cond_3
    const-string v0, "m-inbox"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCQ:Lcom/android/mail/providers/Folder;

    .line 2445
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 2446
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    const-string v1, "saved-conversation-list-scroll-positions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2448
    return-void

    .line 2416
    :cond_4
    invoke-virtual {v0}, Lcom/android/mail/ui/ToastBarOperation;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v0, v2}, Lcom/android/mail/ui/a;->d(Lcom/android/mail/providers/Folder;Z)V

    goto :goto_0

    .line 2431
    :cond_5
    const-string v0, "saved-selected-set"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationCheckedSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->c(Lcom/android/mail/ui/ConversationCheckedSet;)V

    goto :goto_1
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDa:Lcom/android/mail/ui/da;

    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/android/mail/ui/da;->a(Landroid/content/Context;Lcom/android/mail/ui/a;)Z

    .line 2183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDf:Z

    .line 2185
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "EmptyFolderDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/bu;->a(Lcom/android/mail/ui/bw;)V

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->invalidateOptionsMenu()V

    .line 2190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/dD;->p(Landroid/os/Bundle;)V

    .line 2195
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    .line 2196
    const-string v0, "saved-account"

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_1

    .line 2199
    const-string v0, "saved-folder"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2202
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    invoke-static {v0}, Lcom/android/mail/c;->a(Lcom/android/mail/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2203
    const-string v0, "saved-query"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    iget-object v1, v1, Lcom/android/mail/c;->ajT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2206
    const-string v0, "saved-conversation"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2208
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2209
    const-string v0, "saved-selected-set"

    iget-object v1, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2211
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0}, Lcom/android/mail/ui/ActionableToastBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 2212
    const-string v0, "saved-toast-bar-op"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->xn()Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2214
    :cond_5
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2215
    if-eqz v0, :cond_6

    .line 2216
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ae;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2219
    :cond_6
    iget v0, p0, Lcom/android/mail/ui/a;->aDL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2220
    const-string v0, "saved-action"

    iget v1, p0, Lcom/android/mail/ui/a;->aDL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2221
    const-string v0, "saved-action-from-selected"

    iget-boolean v1, p0, Lcom/android/mail/ui/a;->aDM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2223
    :cond_7
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 2224
    const-string v0, "saved-detached-conv-uri"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2227
    :cond_8
    const-string v0, "saved-hierarchical-folder"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDF:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDf:Z

    .line 2230
    const-string v0, "m-inbox"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCQ:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2232
    const-string v0, "saved-conversation-list-scroll-positions"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCZ:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2235
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/cx;->n(Landroid/os/Bundle;)V

    .line 2236
    return-void
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDf:Z

    .line 1430
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDY:Landroid/database/DataSetObserver;

    invoke-static {v0}, Lcom/android/mail/utils/NotificationActionUtils;->q(Landroid/database/DataSetObserver;)V

    .line 1432
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainActivity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v2}, Lcom/android/mail/ui/dD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/a/d;->ba(Ljava/lang/String;)V

    .line 1435
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDY:Landroid/database/DataSetObserver;

    invoke-static {v0}, Lcom/android/mail/utils/NotificationActionUtils;->r(Landroid/database/DataSetObserver;)V

    .line 2263
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 3365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/ActionableToastBar;->j(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3368
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0}, Lcom/android/mail/ui/ActionableToastBar;->wo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3381
    :cond_0
    :goto_0
    return-void

    .line 3373
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0}, Lcom/android/mail/ui/ActionableToastBar;->xo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3378
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDy:Lcom/android/mail/ui/ActionableToastBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 2352
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2355
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->bl(Z)V

    .line 2359
    :cond_0
    return-void
.end method

.method public final p(Landroid/database/DataSetObserver;)V
    .locals 4

    .prologue
    .line 2784
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDs:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2790
    :goto_0
    return-void

    .line 2785
    :catch_0
    move-exception v0

    .line 2787
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "unregisterFolderObserver called for an observer that hasn\'t been registered"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public pC()V
    .locals 2

    .prologue
    .line 3287
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/a;->a(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 3288
    return-void
.end method

.method public final pm()V
    .locals 6

    .prologue
    .line 3154
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3155
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 3156
    const-string v1, "ConvCursor"

    const-string v2, "onRefreshRequired: delay until animating done. cursor=%s adapter=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3165
    :cond_0
    :goto_1
    return-void

    .line 3156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3162
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3163
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->refresh()Z

    goto :goto_1
.end method

.method public final pn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3184
    sget-object v1, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v2, "Received refresh ready callback for folder %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3187
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->bQ:Z

    if-eqz v0, :cond_1

    .line 3188
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "ignoring onRefreshReady on destroyed AAC"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3203
    :goto_1
    return-void

    .line 3184
    :cond_0
    const-string v0, "-1"

    goto :goto_0

    .line 3192
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3194
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->sync()V

    .line 3201
    :goto_2
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDv:Lcom/android/mail/ui/aI;

    invoke-virtual {v0}, Lcom/android/mail/ui/aI;->yI()V

    .line 3202
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wv()V

    goto :goto_1

    .line 3197
    :cond_2
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AAC.onRefreshReady suppressing sync() due to animation. cursor=%s aa=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public final q(Ljava/util/Collection;)V
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
    .line 1966
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/a;->a(Ljava/util/Collection;Ljava/lang/Runnable;)Z

    .line 1967
    return-void
.end method

.method public final qC()Z
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->qC()Z

    move-result v0

    return v0
.end method

.method public final qE()V
    .locals 1

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->qE()V

    .line 3386
    return-void
.end method

.method protected final sF()Lcom/android/mail/ui/dF;
    .locals 2

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2633
    const-string v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dF;

    .line 2634
    if-eqz v0, :cond_0

    .line 2636
    iput-object v0, p0, Lcom/android/mail/ui/a;->aDI:Lcom/android/mail/ui/dF;

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDI:Lcom/android/mail/ui/dF;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v1, "mCurrentConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v1, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->c(Ljava/lang/StringBuilder;)V

    .line 548
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uo()[Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDk:[Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public final vK()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public final vL()Lcom/android/mail/c;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCV:Lcom/android/mail/c;

    return-object v0
.end method

.method public final vM()Lcom/android/mail/browse/u;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    return-object v0
.end method

.method protected final vN()Lcom/android/mail/ui/aw;
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    const-string v1, "tag-conversation-list"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/android/mail/ui/a;->a(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Lcom/android/mail/ui/aw;

    .line 592
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final vO()Lcom/android/mail/ui/bB;
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/android/mail/ui/a;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lcom/android/mail/ui/a;->a(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    check-cast v0, Lcom/android/mail/ui/bB;

    .line 612
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract vP()Z
.end method

.method final vQ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 661
    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->ui()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wi()V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->sF()Lcom/android/mail/ui/dF;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mail/ui/dF;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->uh()Z

    move-result v1

    .line 668
    if-eqz v1, :cond_4

    .line 669
    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dF;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/dF;->p(Lcom/android/mail/providers/Account;)V

    goto :goto_0

    .line 674
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wi()V

    goto :goto_0

    .line 676
    :cond_4
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wj()V

    goto :goto_0
.end method

.method public final vR()Lcom/android/mail/ui/cN;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCU:Lcom/android/mail/ui/cN;

    return-object v0
.end method

.method protected final vS()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 983
    .line 984
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDl:Lcom/android/mail/providers/p;

    if-eqz v0, :cond_3

    .line 985
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDl:Lcom/android/mail/providers/p;

    iget-object v3, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/p;->l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_3

    .line 987
    invoke-virtual {p0, v0, v2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Folder;Z)V

    move v0, v1

    .line 991
    :goto_0
    if-nez v0, :cond_0

    .line 992
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Starting a LOADER_ACCOUNT_INBOX for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 993
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDB:Lcom/android/mail/ui/y;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mail/ui/a;->a(ILandroid/app/LoaderManager$LoaderCallbacks;Landroid/os/Bundle;)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 996
    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AC()V

    .line 999
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final vT()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method public final vU()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDF:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method public final vW()V
    .locals 1

    .prologue
    .line 1382
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDR:Landroid/support/v7/app/t;

    invoke-virtual {v0}, Landroid/support/v7/app/t;->cT()V

    .line 1388
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDW:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final vX()V
    .locals 1

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bJ()V

    goto :goto_0
.end method

.method public final vZ()V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->kd()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 1686
    :cond_0
    return-void
.end method

.method public final wA()V
    .locals 3

    .prologue
    .line 4164
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 4165
    if-eqz v0, :cond_1

    .line 4166
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yq()V

    .line 4171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/ui/a;->aCY:Landroid/net/Uri;

    .line 4172
    return-void

    .line 4167
    :cond_1
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDe:Z

    if-eqz v0, :cond_0

    .line 4169
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AAC.setDetachedMode(): CLF = null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public wB()Z
    .locals 1

    .prologue
    .line 4188
    const/4 v0, 0x0

    return v0
.end method

.method public final wC()Lcom/android/mail/ui/bs;
    .locals 1

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDV:Lcom/android/mail/ui/C;

    return-object v0
.end method

.method public final wD()Z
    .locals 1

    .prologue
    .line 4376
    const/4 v0, 0x1

    return v0
.end method

.method public final wE()Z
    .locals 1

    .prologue
    .line 4381
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDW:Z

    return v0
.end method

.method protected final wF()V
    .locals 3

    .prologue
    .line 4385
    new-instance v0, Lcom/android/mail/ui/k;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/k;-><init>(Lcom/android/mail/ui/a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4437
    return-void
.end method

.method public final wG()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDZ:Lcom/android/mail/ui/A;

    return-object v0
.end method

.method protected wa()V
    .locals 2

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    :goto_0
    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1720
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->bJ()V

    goto :goto_0

    .line 1722
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->K(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract wb()Z
.end method

.method protected abstract wc()Z
.end method

.method protected wd()V
    .locals 2

    .prologue
    .line 1806
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/providers/Conversation;Z)V

    .line 1807
    return-void
.end method

.method public final we()V
    .locals 3

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2073
    if-eqz v0, :cond_0

    .line 2078
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yy()V

    .line 2080
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDd:Lcom/android/mail/ui/ak;

    if-eqz v0, :cond_2

    .line 2081
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDd:Lcom/android/mail/ui/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ak;->cancel(Z)Z

    .line 2083
    :cond_2
    new-instance v0, Lcom/android/mail/ui/ak;

    iget-object v1, p0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->aAh:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/mail/ui/ak;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDd:Lcom/android/mail/ui/ak;

    .line 2084
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDd:Lcom/android/mail/ui/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected abstract wf()V
.end method

.method public final wg()V
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDz:Lcom/android/mail/browse/Z;

    invoke-virtual {v0}, Lcom/android/mail/browse/Z;->stopListening()V

    .line 2336
    return-void
.end method

.method protected final wh()Z
    .locals 1

    .prologue
    .line 2535
    iget-boolean v0, p0, Lcom/android/mail/ui/a;->aDJ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->xq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected wi()V
    .locals 2

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AG()V

    .line 2605
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mail/ui/dF;->a(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/dF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDI:Lcom/android/mail/ui/dF;

    .line 2606
    return-void
.end method

.method protected wj()V
    .locals 1

    .prologue
    .line 2622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/a;->aDI:Lcom/android/mail/ui/dF;

    .line 2623
    return-void
.end method

.method public final wk()V
    .locals 2

    .prologue
    .line 2677
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2678
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2679
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->wk()V

    .line 2681
    :cond_0
    return-void
.end method

.method public final wl()V
    .locals 2

    .prologue
    .line 2685
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 2686
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2687
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->wl()V

    .line 2689
    :cond_0
    return-void
.end method

.method public final wm()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public wn()Z
    .locals 1

    .prologue
    .line 2736
    const/4 v0, 0x0

    return v0
.end method

.method public final wo()Z
    .locals 2

    .prologue
    .line 3169
    const/4 v0, 0x0

    .line 3170
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v1

    .line 3171
    if-eqz v1, :cond_0

    .line 3172
    invoke-virtual {v1}, Lcom/android/mail/ui/aw;->wo()Z

    move-result v0

    .line 3174
    :cond_0
    return v0
.end method

.method public final wq()Lcom/android/mail/ui/ConversationCheckedSet;
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    return-object v0
.end method

.method protected final wr()V
    .locals 1

    .prologue
    .line 3313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/a;->bo(Z)V

    .line 3314
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v0}, Lcom/android/mail/browse/aO;->deactivate()V

    .line 3317
    :cond_0
    return-void
.end method

.method protected final ws()V
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mail/ui/a;->wL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDP:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDQ:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->M(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v0}, Lcom/android/mail/browse/aO;->rU()V

    .line 3327
    :cond_1
    return-void
.end method

.method protected final wt()V
    .locals 1

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/android/mail/ui/a;->atH:Lcom/android/mail/ui/ConversationCheckedSet;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    if-eqz v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDw:Lcom/android/mail/browse/aO;

    invoke-virtual {v0}, Lcom/android/mail/browse/aO;->rU()V

    .line 3338
    :cond_0
    return-void
.end method

.method public final wu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3349
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_0

    .line 3351
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "AbstractActivityController.startSearch(): null account"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3361
    :goto_0
    return-void

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->ug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3355
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCX:Lcom/android/mail/ui/cx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cx;->de(I)V

    goto :goto_0

    .line 3358
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->xg()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected wv()V
    .locals 2

    .prologue
    .line 3756
    const-string v0, "android.intent.action.SEARCH"

    iget-object v1, p0, Lcom/android/mail/ui/a;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/a;->aDJ:Z

    .line 3758
    return-void

    .line 3756
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ww()V
    .locals 1

    .prologue
    .line 3946
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 3947
    if-nez v0, :cond_0

    .line 3951
    :goto_0
    return-void

    .line 3950
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yt()V

    goto :goto_0
.end method

.method public final wx()V
    .locals 1

    .prologue
    .line 4104
    invoke-static {}, Lcom/android/mail/browse/R;->qj()V

    .line 4106
    invoke-virtual {p0}, Lcom/android/mail/ui/a;->vN()Lcom/android/mail/ui/aw;

    move-result-object v0

    .line 4107
    if-eqz v0, :cond_0

    .line 4108
    invoke-virtual {v0}, Lcom/android/mail/ui/aw;->yp()Lcom/android/mail/ui/ae;

    move-result-object v0

    .line 4109
    if-eqz v0, :cond_0

    .line 4110
    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetInvalidated()V

    .line 4113
    :cond_0
    return-void
.end method

.method public final wy()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 4141
    iget-object v0, p0, Lcom/android/mail/ui/a;->aDK:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public final wz()Lcom/android/mail/utils/aj;
    .locals 1

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/android/mail/ui/a;->ate:Lcom/android/mail/utils/aj;

    return-object v0
.end method
