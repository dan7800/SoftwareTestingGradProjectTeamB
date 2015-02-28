.class public Lcom/google/android/gm/ui/GmailDrawerFragment;
.super Lcom/android/mail/ui/bt;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p;
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/people/accountswitcherview/N;
.implements Lcom/google/android/gms/people/accountswitcherview/Q;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private bbm:Lcom/google/android/gms/common/api/n;

.field private bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

.field private bqa:Lcom/google/android/gms/people/accountswitcherview/r;

.field private bqb:Lcom/google/android/gms/people/model/e;

.field private final bqc:Landroid/support/v4/f/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/n",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final bqd:Landroid/support/v4/f/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/n",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/ui/C;",
            ">;"
        }
    .end annotation
.end field

.field private final bqe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

.field private final bqg:Lcom/google/android/gm/ui/s;

.field private bqh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private bqi:Lcom/google/android/gms/people/model/d;

.field private bqj:Lcom/google/android/gm/ui/t;

.field private bqk:Lcom/google/android/gms/people/accountswitcherview/F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mail/ui/bt;-><init>()V

    .line 99
    new-instance v0, Landroid/support/v4/f/n;

    invoke-direct {v0}, Landroid/support/v4/f/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqc:Landroid/support/v4/f/n;

    .line 100
    new-instance v0, Landroid/support/v4/f/n;

    invoke-direct {v0}, Landroid/support/v4/f/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    .line 101
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    .line 105
    new-instance v0, Lcom/google/android/gm/ui/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/ui/s;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqg:Lcom/google/android/gm/ui/s;

    .line 120
    return-void
.end method

.method private Ir()V
    .locals 4

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 351
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->UY()Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    .line 353
    if-eqz v0, :cond_0

    .line 354
    iget-object v2, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Data buffer is closed for recent accounts"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    :cond_1
    return-void
.end method

.method static synthetic Is()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/model/d;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->b(Lcom/google/android/gms/people/model/d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/GmailDrawerFragment;Lcom/google/android/gms/people/model/e;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqb:Lcom/google/android/gms/people/model/e;

    iput-object p1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqb:Lcom/google/android/gms/people/model/e;

    invoke-virtual {p1}, Lcom/google/android/gms/people/model/e;->getCount()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqc:Landroid/support/v4/f/n;

    invoke-virtual {v0}, Landroid/support/v4/f/n;->clear()V

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/model/e;->eU(I)Lcom/google/android/gms/people/model/d;

    move-result-object v4

    sget-object v5, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v6, "load owner: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqc:Landroid/support/v4/f/n;

    invoke-interface {v4}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->zl()V

    invoke-static {v2}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gms/people/model/e;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 380
    invoke-virtual {p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v0

    .line 382
    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->zn()Lcom/android/mail/browse/aw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    const-string v3, "default_list"

    .line 393
    :goto_0
    if-eqz p2, :cond_0

    .line 394
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "account_switcher"

    const-string v2, "nav_mode"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 397
    :cond_0
    return-void

    .line 385
    :cond_1
    if-ne v0, v3, :cond_2

    .line 386
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    const-string v3, "account_list"

    goto :goto_0

    .line 389
    :cond_2
    sget-object v1, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v2, "Unknown navigation mode: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    const-string v3, "error"

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/people/model/e;)V
    .locals 1

    .prologue
    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/e;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gms/people/model/e;->close()V

    .line 306
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/i;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/people/model/d;)V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->Ir()V

    .line 371
    check-cast p1, Lcom/google/android/gm/ui/C;

    invoke-virtual {p1}, Lcom/google/android/gm/ui/C;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->s(Lcom/android/mail/providers/Account;)V

    .line 372
    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/r;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/people/model/d;)V
    .locals 3

    .prologue
    .line 519
    if-nez p1, :cond_1

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    .line 524
    iput-object p1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    .line 525
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/people/accountswitcherview/r;->a(Ljava/util/List;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/model/d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    .line 527
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/people/model/d;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/r;->S(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/F;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqk:Lcom/google/android/gms/people/accountswitcherview/F;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    const v0, 0x7f04002e

    invoke-virtual {p1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 140
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    check-cast p2, Landroid/widget/FrameLayout;

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 143
    new-instance v0, Lcom/google/android/gm/ui/B;

    invoke-direct {v0, p0, v4}, Lcom/google/android/gm/ui/B;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 144
    const/16 v0, 0x37

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 145
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/F;

    invoke-direct {v0}, Lcom/google/android/gms/people/accountswitcherview/F;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqk:Lcom/google/android/gms/people/accountswitcherview/F;

    .line 146
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqk:Lcom/google/android/gms/people/accountswitcherview/F;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->UZ()V

    .line 149
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/common/api/n;)V

    .line 150
    new-instance v0, Lcom/google/android/gm/ui/D;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    iget-object v3, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/ui/D;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Landroid/support/v4/f/n;)V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    .line 151
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/i;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/N;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/Q;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    new-instance v1, Lcom/google/android/gm/ui/A;

    invoke-direct {v1, v4}, Lcom/google/android/gm/ui/A;-><init>(B)V

    new-instance v2, Lcom/google/android/gm/ui/y;

    invoke-direct {v2, v4}, Lcom/google/android/gm/ui/y;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/T;Lcom/google/android/gms/people/accountswitcherview/R;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->setNavigationMode(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 3

    .prologue
    .line 259
    sget-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v1, "GoogleApiClient connection failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;Z)V

    .line 377
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/model/d;)V
    .locals 6

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/GmailDrawerFragment;->b(Lcom/google/android/gms/people/model/d;)V

    .line 365
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "account_switcher"

    const-string v2, "recents"

    const-string v3, "sanv_click"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 366
    return-void
.end method

.method protected final cZ(I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    .line 314
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getNavigationMode()I

    move-result v1

    .line 316
    if-nez v1, :cond_0

    .line 317
    invoke-super {p0, p1}, Lcom/android/mail/ui/bt;->cZ(I)V

    .line 341
    :goto_0
    return-void

    .line 318
    :cond_0
    if-ne v1, v4, :cond_4

    .line 319
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/r;->getItemViewType(I)I

    move-result v1

    .line 322
    if-nez v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/r;->eR(I)Lcom/google/android/gms/people/model/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->c(Lcom/google/android/gms/people/model/d;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->b(Lcom/google/android/gms/people/model/d;)V

    .line 325
    const-string v3, "account_click"

    .line 336
    :goto_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "account_switcher"

    const-string v2, "account_list"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 326
    :cond_1
    if-ne v1, v4, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/a;->h(Landroid/app/Activity;)V

    .line 328
    const-string v3, "add_accounts_click"

    goto :goto_1

    .line 329
    :cond_2
    if-ne v1, v2, :cond_3

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "authorities"

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gmail-ls"

    aput-object v3, v2, v5

    const-string v3, "com.google.android.gm.email.provider"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_2
    const-string v3, "manage_accounts_click"

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v2, "No sync settings activity found."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 333
    :cond_3
    const-string v3, "error"

    goto :goto_1

    .line 339
    :cond_4
    sget-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v2, "Unknown navigation mode: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final dz(I)V
    .locals 3

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v1, "GoogleApiClient connection suspended"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/mail/ui/bt;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqg:Lcom/google/android/gm/ui/s;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bs;->b(Landroid/support/v4/widget/k;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/gms/people/t;

    invoke-direct {v0}, Lcom/google/android/gms/people/t;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->US()Lcom/google/android/gms/people/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/t;->UT()Lcom/google/android/gms/people/s;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/people/q;->cgG:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/bt;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/i;->close()V

    .line 227
    :cond_0
    iput-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    .line 229
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/r;->disconnect()V

    .line 233
    :cond_1
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqb:Lcom/google/android/gms/people/model/e;

    invoke-static {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->a(Lcom/google/android/gms/people/model/e;)V

    .line 241
    iput-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqb:Lcom/google/android/gms/people/model/e;

    .line 242
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqg:Lcom/google/android/gm/ui/s;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/bs;->c(Landroid/support/v4/widget/k;)V

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onDestroyView()V

    .line 220
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onPause()V

    .line 198
    invoke-direct {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->Ir()V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/mail/i/g;->h(Ljava/util/Set;)V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/android/mail/i/g;->tU()Ljava/util/Set;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 190
    iget-object v1, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onStart()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 177
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    .line 208
    :cond_1
    invoke-super {p0}, Lcom/android/mail/ui/bt;->onStop()V

    .line 209
    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->mW:Ljava/lang/String;

    const-string v1, "GoogleApiClient connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/people/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/g;->UN()Lcom/google/android/gms/people/g;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/people/q;->cgI:Lcom/google/android/gms/people/f;

    iget-object v2, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/people/f;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/g;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ui/o;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/o;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 249
    :cond_0
    return-void
.end method

.method public final vg()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->Ir()V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->zl()V

    .line 536
    return-void
.end method

.method protected final zh()Lcom/android/mail/ui/bF;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zl()V
    .locals 16

    .prologue
    const/4 v4, 0x0

    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v6, 0x0

    .line 424
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->aJq:Z

    if-eqz v1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->uo()[Lcom/android/mail/providers/Account;

    move-result-object v7

    .line 429
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, v7

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->zm()Ljava/lang/String;

    move-result-object v9

    .line 431
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "rebuildAccountList: current=%s"

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v9, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    invoke-virtual {v1}, Landroid/support/v4/f/n;->clear()V

    .line 440
    array-length v10, v7

    move v5, v6

    move-object v3, v4

    :goto_1
    if-ge v5, v10, :cond_3

    aget-object v11, v7, v5

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqc:Landroid/support/v4/f/n;

    invoke-virtual {v11}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/d;

    .line 443
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v12, "account = %s, owner=%s"

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v11, v13, v6

    aput-object v1, v13, v14

    invoke-static {v2, v12, v13}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    new-instance v2, Lcom/google/android/gm/ui/C;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqc:Landroid/support/v4/f/n;

    invoke-virtual {v11}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/d;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/gm/ui/GmailDrawerFragment;->k(Lcom/android/mail/providers/Account;)I

    move-result v12

    invoke-direct {v2, v1, v11, v12}, Lcom/google/android/gm/ui/C;-><init>(Lcom/google/android/gms/people/model/d;Lcom/android/mail/providers/Account;I)V

    .line 447
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    invoke-virtual {v11}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v2}, Landroid/support/v4/f/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v11}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v3, v2

    .line 440
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqe:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v4

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    sget-object v7, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v9, "selectedAccount = %s, account = %s"

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v3, v10, v6

    aput-object v1, v10, v14

    invoke-static {v7, v9, v10}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 462
    :cond_5
    if-nez v4, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    invoke-virtual {v4, v1}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/d;

    move-object v4, v1

    goto :goto_2

    .line 466
    :cond_6
    if-nez v2, :cond_f

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqd:Landroid/support/v4/f/n;

    invoke-virtual {v2, v1}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/d;

    :goto_3
    move-object v2, v1

    .line 469
    goto :goto_2

    .line 474
    :cond_7
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v5, v2

    :cond_8
    :goto_4
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/model/d;

    .line 475
    sget-object v9, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v10, "owner = %s"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gm/ui/C;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gm/ui/C;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    if-eqz v3, :cond_9

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 479
    :cond_9
    if-nez v4, :cond_a

    move-object v4, v1

    .line 482
    goto :goto_4

    .line 483
    :cond_a
    if-nez v5, :cond_8

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v5, v1

    .line 485
    goto :goto_4

    .line 488
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v7, Lcom/google/android/gm/ui/r;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/google/android/gm/ui/r;-><init>(B)V

    new-instance v9, Lcom/google/android/gm/ui/p;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/android/gm/ui/p;-><init>(B)V

    invoke-direct {v1, v2, v7, v9}, Lcom/google/android/gms/people/accountswitcherview/r;-><init>(Landroid/content/Context;Lcom/google/android/gms/people/accountswitcherview/v;Lcom/google/android/gms/people/accountswitcherview/t;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v1}, Lcom/google/android/gms/people/accountswitcherview/r;->UX()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/people/accountswitcherview/r;->a(Lcom/google/android/gms/people/accountswitcherview/i;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    invoke-virtual {v1}, Lcom/google/android/gms/people/accountswitcherview/r;->UW()V

    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/ui/GmailDrawerFragment;->c(Lcom/google/android/gms/people/model/d;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqa:Lcom/google/android/gms/people/accountswitcherview/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqh:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/people/accountswitcherview/r;->S(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqf:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/model/d;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqj:Lcom/google/android/gm/ui/t;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqj:Lcom/google/android/gm/ui/t;

    move-object v0, v3

    check-cast v0, Lcom/google/android/gm/ui/C;

    move-object v1, v0

    move-object v0, v4

    check-cast v0, Lcom/google/android/gm/ui/C;

    move-object v2, v0

    move-object v0, v5

    check-cast v0, Lcom/google/android/gm/ui/C;

    move-object v3, v0

    invoke-virtual {v7, v1, v2, v3}, Lcom/google/android/gm/ui/t;->a(Lcom/google/android/gm/ui/C;Lcom/google/android/gm/ui/C;Lcom/google/android/gm/ui/C;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v5

    move-object v1, v4

    .line 492
    :goto_5
    sget-object v4, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v5, "Owner\'s buffer is closed. recent1=%s, recent2=%s"

    new-array v7, v15, [Ljava/lang/Object;

    if-eqz v1, :cond_d

    check-cast v1, Lcom/google/android/gm/ui/C;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v7, v6

    if-eqz v2, :cond_e

    move-object v1, v2

    check-cast v1, Lcom/google/android/gm/ui/C;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    aput-object v1, v7, v14

    invoke-static {v4, v3, v5, v7}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_d
    const-string v1, "null"

    goto :goto_6

    :cond_e
    const-string v1, "null"

    goto :goto_7

    .line 489
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v4

    goto :goto_5

    :cond_f
    move-object v1, v2

    goto/16 :goto_3
.end method

.method protected final zp()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Lcom/google/android/gm/ui/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/ui/t;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V

    iput-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqj:Lcom/google/android/gm/ui/t;

    .line 541
    return-void
.end method

.method protected final zq()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/gm/ui/GmailDrawerFragment;->bqj:Lcom/google/android/gm/ui/t;

    return-object v0
.end method
