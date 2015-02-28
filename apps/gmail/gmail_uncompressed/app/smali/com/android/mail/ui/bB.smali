.class public Lcom/android/mail/ui/bB;
.super Landroid/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/mail/providers/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/c/b",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;>;",
        "Lcom/android/mail/providers/q;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private LB:Z

.field private aDl:Lcom/android/mail/providers/p;

.field private aJA:Lcom/android/mail/ui/bK;

.field private aJB:Lcom/android/mail/ui/bM;

.field private aJC:Lcom/android/mail/ui/bL;

.field private aJD:Lcom/android/mail/providers/e;

.field private aJE:I

.field private aJF:I

.field protected aJG:Lcom/android/mail/providers/Account;

.field private aJH:Lcom/android/mail/providers/Account;

.field private aJI:Lcom/android/mail/providers/Folder;

.field private aJJ:Z

.field private aJK:Z

.field private aJL:Z

.field protected aJM:Lcom/android/mail/ui/MiniDrawerView;

.field private aJN:Lcom/android/mail/ui/bO;

.field private aJO:I

.field private aJP:Landroid/animation/AnimatorListenerAdapter;

.field private aJQ:Landroid/animation/AnimatorListenerAdapter;

.field private aJR:Landroid/animation/AnimatorListenerAdapter;

.field private aJS:Landroid/animation/AnimatorListenerAdapter;

.field private aJn:Landroid/widget/ListView;

.field private aJo:Landroid/net/Uri;

.field protected aJp:Z

.field protected aJq:Z

.field private aJr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aJs:Lcom/android/mail/ui/bV;

.field private aJt:Lcom/android/mail/ui/O;

.field private aJu:Lcom/android/mail/ui/bs;

.field private aJv:Lcom/android/mail/utils/p;

.field private aJw:Lcom/android/mail/providers/Folder;

.field private aJx:Lcom/android/mail/providers/Folder;

.field private aJy:Lcom/android/mail/browse/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/browse/aw",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private aJz:Lcom/android/mail/ui/bF;

.field private akh:Lcom/android/mail/b/j;

.field protected aob:Lcom/android/mail/ui/as;

.field private aql:Lcom/android/mail/providers/o;

.field private atL:Lcom/android/mail/providers/d;

.field private axb:Lcom/android/a/a;

.field private final axd:Lcom/android/mail/ui/bG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 123
    iput-boolean v2, p0, Lcom/android/mail/ui/bB;->aJp:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/bB;->aJq:Z

    .line 138
    sget-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    .line 183
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    .line 185
    iput-object v1, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    .line 187
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    .line 189
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    .line 195
    iput v2, p0, Lcom/android/mail/ui/bB;->aJE:I

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mail/ui/bB;->aJF:I

    .line 202
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    .line 204
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJI:Lcom/android/mail/providers/Folder;

    .line 206
    iput-object v1, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    .line 207
    iput-boolean v2, p0, Lcom/android/mail/ui/bB;->LB:Z

    .line 209
    new-instance v0, Lcom/android/mail/ui/bG;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bG;-><init>(Lcom/android/mail/ui/bB;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->axd:Lcom/android/mail/ui/bG;

    .line 234
    return-void
.end method

.method private static a(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Folder;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 288
    if-eqz p0, :cond_0

    .line 289
    const-string v1, "arg-parent-folder"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 292
    const-string v1, "arg-folder-list-uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 295
    const-string v1, "arg-excluded-folder-types"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 297
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/android/mail/ui/bB;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/mail/ui/bB;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/android/mail/ui/bB;

    invoke-direct {v0}, Lcom/android/mail/ui/bB;-><init>()V

    .line 272
    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bB;->setArguments(Landroid/os/Bundle;)V

    .line 273
    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bB;->t(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/providers/Folder;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/bB;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->LB:Z

    return v0
.end method

.method static synthetic a(Lcom/android/mail/ui/bB;Z)Z
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/mail/ui/bB;->aJJ:Z

    return p1
.end method

.method static synthetic b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJr:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/p;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    return-object v0
.end method

.method static synthetic d(Lcom/android/mail/ui/bB;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/bB;->LB:Z

    return v0
.end method

.method static synthetic e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/ui/bB;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/mail/ui/bB;->aJE:I

    return v0
.end method

.method static synthetic g(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bF;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    return-object v0
.end method

.method static synthetic h(Lcom/android/mail/ui/bB;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic j(Lcom/android/mail/ui/bB;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJJ:Z

    return v0
.end method

.method static synthetic k(Lcom/android/mail/ui/bB;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/mail/ui/bB;->aJF:I

    return v0
.end method

.method private l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 575
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    if-nez v0, :cond_1

    .line 576
    :cond_0
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/p;->l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/android/mail/ui/bB;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static m(Lcom/android/mail/providers/Folder;)Lcom/android/mail/ui/bB;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/android/mail/ui/bB;

    invoke-direct {v0}, Lcom/android/mail/ui/bB;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/providers/Folder;Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bB;->setArguments(Landroid/os/Bundle;)V

    .line 259
    return-object v0
.end method

.method static synthetic m(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bG;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->axd:Lcom/android/mail/ui/bG;

    return-object v0
.end method

.method static synthetic n(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJI:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method private n(Lcom/android/mail/providers/Folder;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1460
    if-nez p1, :cond_1

    .line 1461
    sget-object v1, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    .line 1462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    .line 1463
    sget-object v1, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v2, "FolderListFragment.setSelectedFolder(null) called!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    invoke-static {p1, v2}, Lcom/android/mail/ui/FolderItemView;->a(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Folder;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1477
    :cond_2
    iget v2, p0, Lcom/android/mail/ui/bB;->aJE:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v3, v3, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1479
    :cond_3
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1
    iput v1, p0, Lcom/android/mail/ui/bB;->aJE:I

    .line 1481
    iget v1, p1, Lcom/android/mail/providers/Folder;->type:I

    iput v1, p0, Lcom/android/mail/ui/bB;->aJF:I

    .line 1484
    :cond_4
    iput-object p1, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    .line 1485
    iget-object v1, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iput-object v1, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    .line 1486
    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    if-eqz v0, :cond_5

    .line 1488
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0}, Lcom/android/mail/ui/bK;->notifyDataSetChanged()V

    .line 1490
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MiniDrawerView;->refresh()V

    goto :goto_0

    .line 1479
    :cond_6
    const/4 v1, 0x3

    goto :goto_1
.end method

.method static synthetic o(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bV;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJs:Lcom/android/mail/ui/bV;

    return-object v0
.end method

.method static synthetic p(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJI:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic q(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic r(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic s(Lcom/android/mail/ui/bB;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/mail/ui/bB;->aJO:I

    return v0
.end method

.method private t(Lcom/android/mail/providers/Account;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1505
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 1507
    :goto_0
    iput-object p1, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    .line 1508
    if-eqz v0, :cond_3

    .line 1510
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJB:Lcom/android/mail/ui/bM;

    invoke-static {v0}, Lcom/android/mail/ui/bM;->a(Lcom/android/mail/ui/bM;)V

    .line 1512
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0, v4}, Lcom/android/mail/ui/bK;->d(Lcom/android/mail/c/b;)V

    .line 1516
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1517
    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1518
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1519
    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1520
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1524
    sget-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    .line 1525
    iput-object v4, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    .line 1528
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    if-eqz v0, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/bO;->a([Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V

    .line 1540
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1505
    goto :goto_0

    .line 1532
    :cond_3
    if-nez p1, :cond_1

    .line 1535
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v3, "FLF.setSelectedAccount(null) called! Destroying existing loader."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1536
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1537
    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1538
    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1
.end method

.method static synthetic zr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iput-object p1, p0, Lcom/android/mail/ui/bB;->aJI:Lcom/android/mail/providers/Folder;

    .line 650
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/mail/ui/O;->a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 654
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "switch_folder"

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 663
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/android/mail/ui/O;->a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public final bv(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 767
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 771
    :cond_0
    iput-boolean p1, p0, Lcom/android/mail/ui/bB;->aJL:Z

    .line 773
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/MiniDrawerView;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MiniDrawerView;->setAlpha(F)V

    .line 776
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, v4}, Lcom/android/mail/ui/MiniDrawerView;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MiniDrawerView;->setAlpha(F)V

    .line 781
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_0
.end method

.method public final bw(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x43960000    # 300.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 787
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 791
    :cond_0
    iput-boolean p1, p0, Lcom/android/mail/ui/bB;->aJL:Z

    .line 793
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    .line 795
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJL:Z

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAlpha()F

    move-result v0

    .line 798
    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 799
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v2, v3}, Lcom/android/mail/ui/MiniDrawerView;->setVisibility(I)V

    .line 802
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v2}, Lcom/android/mail/ui/MiniDrawerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJR:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 807
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJQ:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MiniDrawerView;->getAlpha()F

    move-result v0

    .line 814
    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 815
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 816
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 819
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v2}, Lcom/android/mail/ui/MiniDrawerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJP:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 824
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJS:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected cZ(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 604
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v4, "viewFolderOrChangeAccount(%d): %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v1, v5, v8

    invoke-static {v0, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    instance-of v0, v1, Lcom/android/mail/d/d;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 609
    check-cast v0, Lcom/android/mail/d/d;

    .line 611
    invoke-virtual {v0}, Lcom/android/mail/d/d;->getType()I

    move-result v4

    .line 612
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 615
    iget-object v0, v0, Lcom/android/mail/d/d;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bB;->s(Lcom/android/mail/providers/Account;)V

    move v0, v2

    move-object v1, v3

    .line 640
    :goto_0
    if-eqz v1, :cond_0

    .line 641
    if-ne v0, v7, :cond_7

    const-string v0, "recent"

    .line 642
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/providers/Folder;Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_2
    return-void

    .line 616
    :cond_1
    if-nez v4, :cond_2

    .line 618
    iget-object v1, v0, Lcom/android/mail/d/d;->aqp:Lcom/android/mail/providers/Folder;

    .line 619
    iget v0, v0, Lcom/android/mail/d/d;->axc:I

    iput v0, p0, Lcom/android/mail/ui/bB;->aJE:I

    .line 620
    iget v3, v1, Lcom/android/mail/providers/Folder;->type:I

    iput v3, p0, Lcom/android/mail/ui/bB;->aJF:I

    .line 621
    sget-object v3, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v4, "FLF.viewFolderOrChangeAccount folder=%s, type=%d"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v2

    iget v2, p0, Lcom/android/mail/ui/bB;->aJE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 623
    :cond_2
    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 626
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/mail/d/d;->onClick(Landroid/view/View;)V

    move v0, v2

    move-object v1, v3

    goto :goto_0

    .line 629
    :cond_4
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FolderListFragment: viewFolderOrChangeAccount(): Clicked on unset item in drawer. Offending item is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 633
    :cond_5
    instance-of v0, v1, Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_6

    .line 634
    check-cast v1, Lcom/android/mail/providers/Folder;

    move v0, v2

    goto :goto_0

    .line 637
    :cond_6
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v1, "viewFolderOrChangeAccount(): invalid item"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    move-object v1, v3

    .line 638
    goto :goto_0

    .line 641
    :cond_7
    const-string v0, "normal"

    goto :goto_1
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 1621
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getListView().getAdapter() instead which accounts for any header or footer views."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final k(Lcom/android/mail/providers/Account;)I
    .locals 1

    .prologue
    .line 582
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    if-nez v0, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 585
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/p;->k(Lcom/android/mail/providers/Account;)I

    move-result v0

    goto :goto_0
.end method

.method protected final n(Lcom/android/mail/providers/Account;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 590
    iput v3, p0, Lcom/android/mail/ui/bB;->aJE:I

    .line 591
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mail/ui/bB;->aJF:I

    .line 592
    iput-object p1, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    .line 593
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    invoke-direct {p0, v2}, Lcom/android/mail/ui/bB;->l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lcom/android/mail/ui/O;->a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 594
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "switch_account"

    const-string v2, "drawer_account_switch"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 595
    return-void
.end method

.method public final o(Lcom/android/mail/providers/Folder;)Z
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v3, 0x7f0c006d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 302
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 309
    instance-of v2, v0, Lcom/android/mail/ui/as;

    if-nez v2, :cond_1

    .line 310
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v2, "FolderListFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    check-cast v0, Lcom/android/mail/ui/as;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    .line 316
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/bB;->aJO:I

    .line 319
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 322
    new-instance v2, Lcom/android/a/k;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {v2, v0}, Lcom/android/a/k;-><init>(I)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->axb:Lcom/android/a/a;

    .line 326
    new-instance v0, Lcom/android/mail/b/j;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/bB;->axb:Lcom/android/a/a;

    invoke-direct {v0, v2, v3}, Lcom/android/mail/b/j;-><init>(Landroid/content/ContentResolver;Lcom/android/a/a;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->akh:Lcom/android/mail/b/j;

    .line 329
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zp()V

    .line 331
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/MiniDrawerView;->t(Lcom/android/mail/ui/bB;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zj()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bB;->bv(Z)V

    .line 338
    :goto_2
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v0

    .line 340
    new-instance v2, Lcom/android/mail/ui/bC;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/bC;-><init>(Lcom/android/mail/ui/bB;)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    .line 347
    if-eqz v0, :cond_6

    .line 349
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    invoke-virtual {v2, v0}, Lcom/android/mail/providers/o;->a(Lcom/android/mail/ui/by;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJw:Lcom/android/mail/providers/Folder;

    .line 358
    :goto_3
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    if-eqz v2, :cond_7

    .line 359
    new-instance v0, Lcom/android/mail/ui/bN;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/bN;-><init>(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    .line 360
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->vU()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 366
    :goto_4
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zh()Lcom/android/mail/ui/bF;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    .line 367
    new-instance v2, Lcom/android/mail/ui/bM;

    invoke-direct {v2, p0, v1}, Lcom/android/mail/ui/bM;-><init>(Lcom/android/mail/ui/bB;B)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJB:Lcom/android/mail/ui/bM;

    .line 370
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    invoke-virtual {v2, v3}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 372
    invoke-direct {p0, v0}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/providers/Folder;)V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    .line 377
    new-instance v2, Lcom/android/mail/ui/bD;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/bD;-><init>(Lcom/android/mail/ui/bB;)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    .line 383
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v2}, Lcom/android/mail/ui/as;->xZ()Lcom/android/mail/ui/bV;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJs:Lcom/android/mail/ui/bV;

    .line 384
    if-eqz v0, :cond_3

    .line 385
    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    .line 387
    iget-object v2, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v2, v0}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mail/ui/bB;->t(Lcom/android/mail/providers/Account;)V

    .line 389
    new-instance v2, Lcom/android/mail/ui/bE;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/bE;-><init>(Lcom/android/mail/ui/bB;)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    .line 401
    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    invoke-virtual {v2, v0}, Lcom/android/mail/providers/e;->b(Lcom/android/mail/ui/O;)[Lcom/android/mail/providers/Account;

    .line 403
    new-instance v0, Lcom/android/mail/ui/bL;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/bL;-><init>(Lcom/android/mail/ui/bB;B)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    .line 404
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/O;->i(Landroid/database/DataSetObserver;)V

    .line 406
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_3

    .line 408
    iget-object v2, p0, Lcom/android/mail/ui/bB;->axd:Lcom/android/mail/ui/bG;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/bs;->b(Landroid/support/v4/widget/k;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJu:Lcom/android/mail/ui/bs;

    .line 414
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zf()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 421
    new-instance v0, Lcom/android/mail/browse/aw;

    invoke-direct {v0}, Lcom/android/mail/browse/aw;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    .line 422
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    if-eqz v0, :cond_8

    .line 423
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJB:Lcom/android/mail/ui/bM;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/aw;->a([Landroid/widget/ListAdapter;)V

    .line 428
    :goto_5
    new-instance v0, Lcom/android/mail/providers/p;

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-direct {v0, v1, p0}, Lcom/android/mail/providers/p;-><init>(Lcom/android/mail/ui/cS;Lcom/android/mail/providers/q;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    .line 429
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aDl:Lcom/android/mail/providers/p;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/p;->a([Lcom/android/mail/providers/Account;)V

    .line 431
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bB;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 322
    :cond_4
    mul-int/2addr v0, v0

    mul-int/lit8 v0, v0, 0xa

    goto/16 :goto_1

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MiniDrawerView;->setVisibility(I)V

    goto/16 :goto_2

    .line 352
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 362
    :cond_7
    new-instance v2, Lcom/android/mail/ui/bI;

    iget-boolean v3, p0, Lcom/android/mail/ui/bB;->aJp:Z

    invoke-direct {v2, p0, v3}, Lcom/android/mail/ui/bI;-><init>(Lcom/android/mail/ui/bB;Z)V

    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    goto/16 :goto_4

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    new-array v2, v5, [Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJB:Lcom/android/mail/ui/bM;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/aw;->a([Landroid/widget/ListAdapter;)V

    goto :goto_5
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 685
    if-nez p1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJo:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJo:Landroid/net/Uri;

    .line 699
    :goto_0
    new-instance v1, Lcom/android/mail/c/c;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v2}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    sget-object v4, Lcom/android/mail/providers/Folder;->aqh:Lcom/android/mail/c/a;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/mail/c/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    goto :goto_0

    .line 693
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    goto :goto_0

    .line 696
    :cond_2
    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v1, "FLF.onCreateLoader() with weird type"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 697
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 467
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "arg-parent-folder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    const-string v0, "arg-folder-list-uri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJo:Landroid/net/Uri;

    :cond_0
    const-string v0, "arg-excluded-folder-types"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJr:Ljava/util/ArrayList;

    .line 469
    :cond_1
    const v0, 0x7f040079

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 470
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    .line 471
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/mail/ui/bB;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/ListView;)V

    .line 474
    if-eqz p3, :cond_2

    const-string v0, "flf-list-state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    const-string v2, "flf-list-state"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 477
    :cond_2
    if-eqz p3, :cond_4

    const-string v0, "flf-selected-folder"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    new-instance v0, Lcom/android/mail/utils/p;

    const-string v2, "flf-selected-folder"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    .line 480
    const-string v0, "flf-selected-item-type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/bB;->aJE:I

    .line 481
    const-string v0, "flf-selected-type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/bB;->aJF:I

    .line 486
    :cond_3
    :goto_0
    if-eqz p3, :cond_5

    .line 487
    const-string v0, "flf-inbox-present"

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/bB;->aJJ:Z

    .line 492
    :goto_1
    const v0, 0x7f0d01b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/MiniDrawerView;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    .line 495
    new-instance v0, Lcom/android/mail/ui/bH;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-direct {v0, v2, v3}, Lcom/android/mail/ui/bH;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJP:Landroid/animation/AnimatorListenerAdapter;

    .line 496
    new-instance v0, Lcom/android/mail/ui/bH;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-direct {v0, v2, v3}, Lcom/android/mail/ui/bH;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJQ:Landroid/animation/AnimatorListenerAdapter;

    .line 497
    new-instance v0, Lcom/android/mail/ui/bH;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-direct {v0, v2, v4}, Lcom/android/mail/ui/bH;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJR:Landroid/animation/AnimatorListenerAdapter;

    .line 498
    new-instance v0, Lcom/android/mail/ui/bH;

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-direct {v0, v2, v4}, Lcom/android/mail/ui/bH;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJS:Landroid/animation/AnimatorListenerAdapter;

    .line 500
    return-object v1

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    goto :goto_0

    .line 489
    :cond_5
    iput-boolean v3, p0, Lcom/android/mail/ui/bB;->aJJ:Z

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0}, Lcom/android/mail/ui/bK;->destroy()V

    .line 542
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/bB;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    invoke-virtual {v0}, Lcom/android/mail/providers/o;->um()V

    .line 545
    iput-object v2, p0, Lcom/android/mail/ui/bB;->aql:Lcom/android/mail/providers/o;

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 549
    iput-object v2, p0, Lcom/android/mail/ui/bB;->atL:Lcom/android/mail/providers/d;

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    invoke-virtual {v0}, Lcom/android/mail/providers/e;->um()V

    .line 553
    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    if-eqz v0, :cond_4

    .line 556
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/O;->j(Landroid/database/DataSetObserver;)V

    .line 557
    iput-object v2, p0, Lcom/android/mail/ui/bB;->aJC:Lcom/android/mail/ui/bL;

    .line 559
    :cond_4
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 561
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_5

    .line 564
    iget-object v1, p0, Lcom/android/mail/ui/bB;->axd:Lcom/android/mail/ui/bG;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bs;->c(Landroid/support/v4/widget/k;)V

    .line 567
    :cond_5
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 571
    invoke-virtual {p0, p3}, Lcom/android/mail/ui/bB;->cZ(I)V

    .line 572
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    check-cast p2, Lcom/android/mail/c/b;

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0, p2}, Lcom/android/mail/ui/bK;->d(Lcom/android/mail/c/b;)V

    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MiniDrawerView;->refresh()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0, p2}, Lcom/android/mail/ui/bK;->e(Lcom/android/mail/c/b;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/bK;->d(Lcom/android/mail/c/b;)V

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0, v2}, Lcom/android/mail/ui/bK;->e(Lcom/android/mail/c/b;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 520
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 525
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "flf-list-state"

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    if-eqz v0, :cond_1

    .line 529
    const-string v0, "flf-selected-folder"

    iget-object v1, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    invoke-virtual {v1}, Lcom/android/mail/utils/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    const-string v0, "flf-selected-item-type"

    iget v1, p0, Lcom/android/mail/ui/bB;->aJE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v0, "flf-selected-type"

    iget v1, p0, Lcom/android/mail/ui/bB;->aJF:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string v0, "flf-inbox-present"

    iget-boolean v1, p0, Lcom/android/mail/ui/bB;->aJJ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 510
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 514
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 515
    return-void
.end method

.method public final s(Lcom/android/mail/providers/Account;)V
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yl()V

    .line 672
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJv:Lcom/android/mail/utils/p;

    iget-object v1, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJH:Lcom/android/mail/providers/Account;

    invoke-direct {p0, v3}, Lcom/android/mail/ui/bB;->l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/ui/O;->a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/app/ListFragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    const-string v0, " folder="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJo:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, " parent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJx:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, " adapterCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    invoke-virtual {v0}, Lcom/android/mail/browse/aw;->getCount()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final uo()[Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJD:Lcom/android/mail/providers/e;

    invoke-virtual {v0}, Lcom/android/mail/providers/e;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/mail/providers/Account;

    goto :goto_0
.end method

.method public vg()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    invoke-virtual {v0}, Lcom/android/mail/ui/bF;->notifyDataSetChanged()V

    .line 751
    :cond_0
    return-void
.end method

.method public final x(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 839
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MiniDrawerView;->setAlpha(F)V

    .line 840
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MiniDrawerView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 843
    return-void
.end method

.method public final xJ()Lcom/android/mail/b/j;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/mail/ui/bB;->akh:Lcom/android/mail/b/j;

    return-object v0
.end method

.method protected zf()I
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJt:Lcom/android/mail/ui/O;

    invoke-interface {v0}, Lcom/android/mail/ui/O;->xh()I

    move-result v0

    return v0
.end method

.method public final zg()Lcom/android/a/a;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/mail/ui/bB;->axb:Lcom/android/a/a;

    return-object v0
.end method

.method protected zh()Lcom/android/mail/ui/bF;
    .locals 1

    .prologue
    .line 743
    new-instance v0, Lcom/android/mail/ui/bF;

    invoke-direct {v0}, Lcom/android/mail/ui/bF;-><init>()V

    return-object v0
.end method

.method public final zi()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    .line 759
    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->zj()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bB;->bv(Z)V

    .line 760
    return-void
.end method

.method public final zj()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zk()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJM:Lcom/android/mail/ui/MiniDrawerView;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    .line 833
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJn:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aG(Landroid/view/View;)V

    .line 836
    return-void
.end method

.method public zl()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1294
    iget-boolean v0, p0, Lcom/android/mail/ui/bB;->aJq:Z

    if-nez v0, :cond_4

    .line 1295
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    if-eqz v0, :cond_3

    .line 1296
    iget-object v3, p0, Lcom/android/mail/ui/bB;->aJz:Lcom/android/mail/ui/bF;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    array-length v6, v4

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    aget-object v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/android/mail/ui/bB;->k(Lcom/android/mail/providers/Account;)I

    iget-object v8, p0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    iget-object v9, v7, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/mail/ui/bB;->axb:Lcom/android/a/a;

    iget-object v11, p0, Lcom/android/mail/ui/bB;->akh:Lcom/android/mail/b/j;

    invoke-static {v8, v7, v9, v10, v11}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)Lcom/android/mail/d/d;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/mail/ui/bB;->mW:Ljava/lang/String;

    const-string v1, "buildAccountListDrawerItems() with null current account."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/mail/ui/bF;->u(Ljava/util/List;)V

    .line 1298
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    if-eqz v0, :cond_4

    .line 1299
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    invoke-virtual {p0}, Lcom/android/mail/ui/bB;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/bO;->a([Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V

    .line 1302
    :cond_4
    return-void
.end method

.method protected final zm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final zn()Lcom/android/mail/browse/aw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/mail/browse/aw",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJy:Lcom/android/mail/browse/aw;

    return-object v0
.end method

.method public final zo()Lcom/android/mail/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJA:Lcom/android/mail/ui/bK;

    invoke-interface {v0}, Lcom/android/mail/ui/bK;->zu()Lcom/android/mail/c/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zp()V
    .locals 1

    .prologue
    .line 1713
    new-instance v0, Lcom/android/mail/ui/bO;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bO;-><init>(Lcom/android/mail/ui/bB;)V

    iput-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    .line 1714
    return-void
.end method

.method protected zq()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/mail/ui/bB;->aJN:Lcom/android/mail/ui/bO;

    return-object v0
.end method
