.class public Lcom/google/android/gm/ads/AdTeaserView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/aL;
.implements Lcom/android/mail/ui/dh;


# static fields
.field private static aZB:I

.field private static aZC:I

.field private static ant:I

.field private static aol:I


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aHx:I

.field private aME:Z

.field private aMj:Z

.field private aZA:Lcom/android/mail/browse/R;

.field private final aZD:Landroid/graphics/Bitmap;

.field private aZE:Z

.field private aZF:Z

.field private aZG:Z

.field private final aZH:Ljava/lang/Runnable;

.field private final aZI:Ljava/lang/Runnable;

.field private final aZJ:Lcom/google/android/gm/provider/e;

.field private final aZK:Lcom/google/android/gm/provider/e;

.field private final aZL:Ljava/lang/Runnable;

.field private final aZM:Ljava/lang/Runnable;

.field private final aZN:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/google/android/gm/provider/Advertisement;",
            ">;>;"
        }
    .end annotation
.end field

.field private aZp:Lcom/google/android/gm/provider/Advertisement;

.field private aZx:Landroid/net/Uri;

.field private aZy:Landroid/view/ViewGroup;

.field private aZz:Landroid/view/View;

.field private anZ:Lcom/android/mail/ui/ae;

.field private aob:Lcom/android/mail/ui/as;

.field private aop:Landroid/graphics/Bitmap;

.field private final aor:Lcom/android/mail/browse/M;

.field private aqI:Landroid/app/LoaderManager;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private auE:Lcom/android/mail/browse/ConversationItemView;

.field private azx:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 88
    sput v0, Lcom/google/android/gm/ads/AdTeaserView;->aol:I

    .line 89
    sput v0, Lcom/google/android/gm/ads/AdTeaserView;->ant:I

    .line 91
    sput v0, Lcom/google/android/gm/ads/AdTeaserView;->aZC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ads/AdTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/ads/AdTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-boolean v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aMj:Z

    .line 85
    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 86
    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 95
    iput v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aHx:I

    .line 101
    iput-boolean v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->mHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    .line 108
    iput-boolean v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aME:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZG:Z

    .line 120
    iput-boolean v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->azx:Z

    .line 217
    new-instance v0, Lcom/google/android/gm/ads/h;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/h;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZH:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/google/android/gm/ads/i;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/i;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aor:Lcom/android/mail/browse/M;

    .line 245
    new-instance v0, Lcom/google/android/gm/ads/j;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/j;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZI:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/google/android/gm/ads/k;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/k;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZJ:Lcom/google/android/gm/provider/e;

    .line 341
    new-instance v0, Lcom/google/android/gm/ads/l;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/l;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZK:Lcom/google/android/gm/provider/e;

    .line 412
    new-instance v0, Lcom/google/android/gm/ads/m;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/m;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZL:Ljava/lang/Runnable;

    .line 449
    new-instance v0, Lcom/google/android/gm/ads/n;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/n;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZM:Ljava/lang/Runnable;

    .line 620
    new-instance v0, Lcom/google/android/gm/ads/g;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/g;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZN:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    const-class v1, Lcom/google/android/gm/ads/AdTeaserView;

    monitor-enter v1

    .line 139
    :try_start_0
    sget v2, Lcom/google/android/gm/ads/AdTeaserView;->aol:I

    if-ne v2, v3, :cond_0

    .line 140
    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/ads/AdTeaserView;->aol:I

    .line 141
    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/ads/AdTeaserView;->ant:I

    .line 143
    const v2, 0x7f0b004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/ads/AdTeaserView;->aZB:I

    .line 144
    const v2, 0x7f0b0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/ads/AdTeaserView;->aZC:I

    .line 147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZD:Landroid/graphics/Bitmap;

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Dh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdTeaserView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aHx:I

    const-string v1, "animatedHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v1, Lcom/google/android/gm/ads/AdTeaserView;->ant:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/gm/ads/o;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ads/o;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZM:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method private Di()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xL()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZG:Z

    .line 510
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZG:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdTeaserView;->setAlpha(F)V

    .line 511
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 510
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdTeaserView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aop:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/android/mail/browse/R;)Lcom/android/mail/browse/R;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZA:Lcom/android/mail/browse/R;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdTeaserView;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZp:Lcom/google/android/gm/provider/Advertisement;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->reset()V

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/ConversationItemView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView;->pG()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ads/AdTeaserView;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/Advertisement;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZp:Lcom/google/android/gm/provider/Advertisement;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/ads/AdTeaserView;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZG:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gm/ads/AdTeaserView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/ads/AdTeaserView;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/gm/ads/AdTeaserView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Dh()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/gm/ads/AdTeaserView;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/ui/ae;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/google/android/gm/provider/e;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZJ:Lcom/google/android/gm/provider/e;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gm/ads/AdTeaserView;)Lcom/android/mail/browse/R;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZA:Lcom/android/mail/browse/R;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gm/ads/AdTeaserView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZD:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/gm/ads/AdTeaserView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZx:Landroid/net/Uri;

    return-object v0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 616
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 617
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdTeaserView;->setAnimatedHeight(I)V

    .line 618
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view has already been bound to a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 480
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    const/16 v1, 0x5dc

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZN:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 482
    if-eqz p2, :cond_1

    const-string v0, "AdTeaserView"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const-string v0, "AdTeaserView"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 484
    const-string v1, "reported-shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    .line 488
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aME:Z

    .line 489
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 278
    iput-boolean v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aMj:Z

    .line 280
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->u(Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, "^sq_ig_i_promo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqp:Lcom/android/mail/providers/Folder;

    .line 293
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZA:Lcom/android/mail/browse/R;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iget v0, v0, Lcom/google/android/gm/provider/Advertisement;->bcs:I

    if-ne v0, v6, :cond_2

    .line 298
    iput-boolean v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aMj:Z

    goto :goto_0

    .line 302
    :cond_2
    iput-boolean v6, p0, Lcom/google/android/gm/ads/AdTeaserView;->aMj:Z

    .line 306
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->azx:Z

    if-nez v0, :cond_0

    .line 307
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    if-nez v0, :cond_3

    .line 308
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_ad_teaser"

    const-wide/16 v4, 0x0

    move-object v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 310
    :cond_3
    iput-boolean v6, p0, Lcom/google/android/gm/ads/AdTeaserView;->azx:Z

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aob:Lcom/android/mail/ui/as;

    .line 175
    iput-object p2, p0, Lcom/google/android/gm/ads/AdTeaserView;->Nc:Lcom/android/mail/providers/Account;

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->es(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZx:Landroid/net/Uri;

    .line 179
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->pM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    new-instance v0, Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_2
    return-void
.end method

.method public final bm(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x5dc

    .line 525
    const-string v0, "AdTeaserView"

    const-string v1, "onConversationListVisibilityChanged: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    iput-boolean p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aME:Z

    .line 529
    if-nez p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 532
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqI:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZN:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 534
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    const-string v0, "AdTeaserView"

    const-string v1, "dismiss() called when mShowingLeaveBehind was %b"

    new-array v2, v7, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Dh()V

    .line 410
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "ad_teaser"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 396
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->reset()V

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationItemView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 400
    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationItemView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iput-boolean v7, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    .line 407
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    sget v1, Lcom/google/android/gm/ads/AdTeaserView;->aZC:I

    invoke-static {v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->p(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    .line 409
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZL:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/gm/ads/AdTeaserView;->aZB:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lcom/android/mail/ui/ae;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    if-eq v0, p1, :cond_0

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->azx:Z

    .line 469
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 470
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 549
    const-string v1, "reported-shown"

    iget-boolean v2, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    const-string v1, "AdTeaserView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->AH()V

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZH:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZp:Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/google/android/gm/ads/s;->a(Lcom/google/android/gm/provider/Advertisement;Lcom/android/mail/providers/Account;)Lcom/google/android/gm/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v1, p0}, Lcom/android/mail/ui/ae;->a(Lcom/android/mail/ui/aL;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/ads/AdTeaserView;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v2}, Lcom/android/mail/ui/as;->yi()Lcom/android/mail/ui/bZ;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/mail/ui/bZ;->a(Landroid/app/Fragment;I)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 154
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    const v1, 0x7f0d00e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    const v1, 0x7f0d021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0903a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    new-instance v2, Lcom/google/android/gm/ads/f;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ads/f;-><init>(Lcom/google/android/gm/ads/AdTeaserView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 168
    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    const v0, 0x7f0d021d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aHx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 608
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aHx:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ads/AdTeaserView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final pE()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public final pK()Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZy:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/mail/ui/di;->aE(Landroid/view/View;)Lcom/android/mail/ui/di;

    move-result-object v0

    return-object v0
.end method

.method public final pL()F
    .locals 1

    .prologue
    .line 461
    sget v0, Lcom/google/android/gm/ads/AdTeaserView;->aol:I

    int-to-float v0, v0

    return v0
.end method

.method public final qD()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZL:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZM:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 499
    :cond_0
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0

    .prologue
    .line 601
    iput p1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aHx:I

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdTeaserView;->requestLayout()V

    .line 603
    return-void
.end method

.method public final wk()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Di()V

    .line 516
    return-void
.end method

.method public final wl()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Di()V

    .line 521
    return-void
.end method

.method public final xK()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aMj:Z

    return v0
.end method

.method public final yK()V
    .locals 8

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->reset()V

    .line 323
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZz:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationItemView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v5, v0, Lcom/android/mail/providers/Settings;->aBS:I

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->auE:Lcom/android/mail/browse/ConversationItemView;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZA:Lcom/android/mail/browse/R;

    iget-object v2, p0, Lcom/google/android/gm/ads/AdTeaserView;->aob:Lcom/android/mail/ui/as;

    iget-object v3, p0, Lcom/google/android/gm/ads/AdTeaserView;->aor:Lcom/android/mail/browse/M;

    iget-object v4, p0, Lcom/google/android/gm/ads/AdTeaserView;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v6, p0, Lcom/google/android/gm/ads/AdTeaserView;->anZ:Lcom/android/mail/ui/ae;

    iget-object v7, p0, Lcom/google/android/gm/ads/AdTeaserView;->aop:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v7}, Lcom/android/mail/browse/ConversationItemView;->a(Lcom/android/mail/browse/R;Lcom/android/mail/ui/as;Lcom/android/mail/browse/M;Lcom/android/mail/providers/Folder;ILcom/android/mail/ui/ae;Landroid/graphics/Bitmap;)V

    .line 331
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Di()V

    .line 334
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZF:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aME:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZK:Lcom/google/android/gm/provider/e;

    iget-object v1, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZp:Lcom/google/android/gm/provider/Advertisement;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZK:Lcom/google/android/gm/provider/e;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final yL()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public final yM()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/gm/ads/AdTeaserView;->aZE:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/google/android/gm/ads/AdTeaserView;->Dh()V

    .line 540
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
