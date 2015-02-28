.class public Lcom/google/android/gm/ui/SectionedInboxTeaserView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/aL;
.implements Lcom/android/mail/ui/dh;


# static fields
.field private static aJj:[F

.field private static ant:I

.field private static aol:I

.field private static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aDu:I

.field private aHx:I

.field private aHy:Landroid/view/View;

.field private final aIQ:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private aMj:Z

.field private aMk:Lcom/android/mail/ui/bV;

.field private final aWK:Lcom/google/android/gm/persistence/b;

.field private anZ:Lcom/android/mail/ui/ae;

.field private aqI:Landroid/app/LoaderManager;

.field private bqD:Z

.field private bqE:Landroid/view/View;

.field private bqF:Landroid/view/View;

.field private bqG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/ui/N;",
            ">;"
        }
    .end annotation
.end field

.field private bqH:Z

.field private final bqI:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation
.end field

.field private vk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->mW:Ljava/lang/String;

    .line 89
    sput v1, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aol:I

    .line 90
    sput v1, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->ant:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    .line 75
    iput v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->vk:I

    .line 77
    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    .line 86
    iput-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 87
    iput-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 98
    iput v3, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHx:I

    .line 100
    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqH:Z

    .line 685
    new-instance v0, Lcom/google/android/gm/ui/L;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ui/L;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 761
    new-instance v0, Lcom/google/android/gm/ui/M;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ui/M;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqI:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    const-class v1, Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    monitor-enter v1

    .line 177
    :try_start_0
    sget v2, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aol:I

    if-ne v2, v3, :cond_0

    .line 178
    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aol:I

    .line 179
    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->ant:I

    .line 183
    :cond_0
    sget-object v2, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aJj:[F

    if-nez v2, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 186
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/4 v4, 0x5

    aput v2, v3, v4

    const/4 v4, 0x6

    aput v2, v3, v4

    const/4 v4, 0x7

    aput v2, v3, v4

    sput-object v3, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aJj:[F

    .line 193
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    .line 197
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aDu:I

    .line 199
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic HX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->mW:Ljava/lang/String;

    return-object v0
.end method

.method private S(II)Lcom/google/android/gm/ui/N;
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 246
    const v0, 0x7f0d01b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    const v0, 0x7f0d01b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    const v0, 0x7f0d01b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    const v1, 0x7f0d01ba

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    new-instance v3, Lcom/google/android/gm/ui/N;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gm/ui/N;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3
.end method

.method private a(Lcom/google/android/gm/ui/N;)V
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/google/android/gm/ui/N;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAe:I

    invoke-static {v1, v0}, Lcom/android/mail/utils/ag;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lcom/google/android/gm/ui/N;->Iz()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/ui/N;->IA()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lcom/google/android/gm/ui/N;->zR()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->ba(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/SectionedInboxTeaserView;Lcom/google/android/gm/ui/N;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->a(Lcom/google/android/gm/ui/N;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v0, v1}, Lcom/google/android/gm/ay;->h(Landroid/content/Context;Lcom/android/mail/providers/Account;)V

    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/b;->G(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fz()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/ui/bV;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMk:Lcom/android/mail/ui/bV;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/ui/ae;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->anZ:Lcom/android/mail/ui/ae;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqI:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aqI:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aDu:I

    return v0
.end method

.method private i(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/N;

    .line 290
    iget-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, p1, v2}, Lcom/google/android/gm/provider/T;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 291
    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->zQ()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0d01b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, -0x1000000

    or-int/2addr v5, v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v3, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aJj:[F

    invoke-direct {v1, v3, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 297
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 298
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->Iz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aqI:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view has already been bound to a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 570
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aqI:Landroid/app/LoaderManager;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 571
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    .line 235
    iput-object p2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMk:Lcom/android/mail/ui/bV;

    .line 236
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 13

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    .line 330
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->u(Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string v1, "^sq_ig_i_personal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/b;->E(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqH:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "^sq_ig_i_social"

    const v1, 0x7f0200fc

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->i(Ljava/lang/String;I)V

    const-string v0, "^sq_ig_i_promo"

    const v1, 0x7f0200fb

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->i(Ljava/lang/String;I)V

    const-string v0, "^sq_ig_i_notification"

    const v1, 0x7f0200fd

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->i(Ljava/lang/String;I)V

    const-string v0, "^sq_ig_i_group"

    const v1, 0x7f0200fa

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->i(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqH:Z

    .line 347
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqH:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/N;

    .line 359
    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->zQ()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 371
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine;->Fy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    .line 378
    iget-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqE:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqF:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v0, :cond_4

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    .line 383
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v5}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gm/persistence/b;->F(Landroid/content/Context;Ljava/lang/String;)V

    .line 386
    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    .line 387
    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 389
    const-string v0, "^sq_ig_i_personal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/N;

    .line 395
    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v5

    .line 397
    if-eqz v5, :cond_5

    iget-boolean v6, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-nez v6, :cond_6

    iget v6, v5, Lcom/android/mail/providers/Folder;->aAe:I

    if-lez v6, :cond_5

    .line 398
    :cond_6
    iget-wide v6, v5, Lcom/android/mail/providers/Folder;->aAr:J

    .line 400
    iget-object v8, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v10}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v2}, Lcom/google/android/gm/persistence/b;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 402
    iget-object v10, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v12}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v2}, Lcom/google/android/gm/persistence/b;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 409
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 411
    cmp-long v6, v8, v6

    if-ltz v6, :cond_7

    iget-boolean v6, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v6, :cond_5

    .line 412
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->zQ()Landroid/view/View;

    move-result-object v6

    .line 415
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 416
    new-instance v7, Lcom/google/android/gm/ui/J;

    invoke-direct {v7, p0, v5}, Lcom/google/android/gm/ui/J;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;Lcom/android/mail/providers/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->a(Lcom/google/android/gm/ui/N;)V

    .line 420
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 378
    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 379
    :cond_9
    const/16 v0, 0x8

    goto/16 :goto_3

    .line 425
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-nez v0, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    .line 431
    const-wide/16 v0, -0x1

    .line 432
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 433
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 435
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 438
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 441
    :cond_c
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v5}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    move-wide v0, v2

    .line 445
    :cond_d
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->vk:I

    .line 446
    iget-boolean v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-nez v2, :cond_0

    .line 451
    invoke-virtual {p2}, Lcom/android/mail/browse/u;->getPosition()I

    move-result v4

    .line 453
    invoke-virtual {p2}, Lcom/android/mail/browse/u;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    :cond_e
    invoke-virtual {p2}, Lcom/android/mail/browse/u;->ph()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_10

    .line 464
    iget-wide v2, v2, Lcom/android/mail/providers/Conversation;->ayW:J

    .line 468
    :goto_6
    cmp-long v2, v2, v0

    if-lez v2, :cond_f

    .line 469
    iget v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->vk:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->vk:I

    .line 473
    invoke-virtual {p2}, Lcom/android/mail/browse/u;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 475
    :cond_f
    invoke-virtual {p2, v4}, Lcom/android/mail/browse/u;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 466
    :cond_10
    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lcom/android/mail/browse/u;->getLong(I)J

    move-result-wide v2

    goto :goto_6
.end method

.method public final bm(Z)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public final dismiss()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 520
    iput-boolean v8, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    .line 522
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v0, :cond_0

    .line 523
    iput-boolean v8, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    .line 524
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/b;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fz()V

    .line 530
    :cond_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "sectioned_inbox_teaser"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 532
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ui/N;

    invoke-virtual {v2}, Lcom/google/android/gm/ui/N;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/N;

    invoke-virtual {v0}, Lcom/google/android/gm/ui/N;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget-wide v6, v0, Lcom/android/mail/providers/Folder;->aAr:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHx:I

    const-string v1, "animatedHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v8

    const/4 v0, 0x1

    aput v8, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v1, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->ant:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/gm/ui/K;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/K;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 535
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->vk:I

    return v0
.end method

.method public final j(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 560
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 203
    const v0, 0x7f0d01f7

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqE:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqE:Landroid/view/View;

    new-instance v1, Lcom/google/android/gm/ui/H;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/H;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0d01fc

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqF:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqF:Landroid/view/View;

    new-instance v1, Lcom/google/android/gm/ui/I;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/I;-><init>(Lcom/google/android/gm/ui/SectionedInboxTeaserView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHy:Landroid/view/View;

    .line 219
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v0

    .line 221
    const-string v1, "^sq_ig_i_social"

    const v2, 0x7f0d01f8

    const v3, 0x7f090389

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->S(II)Lcom/google/android/gm/ui/N;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 223
    const-string v1, "^sq_ig_i_promo"

    const v2, 0x7f0d01f9

    const v3, 0x7f09038a

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->S(II)Lcom/google/android/gm/ui/N;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 225
    const-string v1, "^sq_ig_i_notification"

    const v2, 0x7f0d01fa

    const v3, 0x7f09038b

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->S(II)Lcom/google/android/gm/ui/N;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 227
    const-string v1, "^sq_ig_i_group"

    const v2, 0x7f0d01fb

    const v3, 0x7f09038c

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->S(II)Lcom/google/android/gm/ui/N;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 230
    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqG:Ljava/util/Map;

    .line 231
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 662
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHx:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final pE()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public final pK()Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHy:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/ui/di;->aE(Landroid/view/View;)Lcom/android/mail/ui/di;

    move-result-object v0

    return-object v0
.end method

.method public final pL()F
    .locals 1

    .prologue
    .line 554
    sget v0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aol:I

    int-to-float v0, v0

    return v0
.end method

.method public final qD()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0

    .prologue
    .line 655
    iput p1, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aHx:I

    .line 656
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->requestLayout()V

    .line 657
    return-void
.end method

.method public final wk()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method public final wl()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public final xK()V
    .locals 3

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->bqD:Z

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aWK:Lcom/google/android/gm/persistence/b;

    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/b;->G(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->dismiss()V

    .line 587
    :cond_0
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->aMj:Z

    return v0
.end method

.method public final yK()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public final yL()Z
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public final yM()Z
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method
