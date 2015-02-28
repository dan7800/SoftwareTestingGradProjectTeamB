.class public Lcom/android/mail/ui/NestedFolderTeaserView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/aL;


# static fields
.field private static aMu:I


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aDu:I

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

.field private aJo:Landroid/net/Uri;

.field private aMj:Z

.field private aMk:Lcom/android/mail/ui/bV;

.field private final aMl:Landroid/support/v4/f/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/o",
            "<",
            "Lcom/android/mail/ui/cI;",
            ">;"
        }
    .end annotation
.end field

.field private aMm:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Lcom/android/mail/ui/cI;",
            ">;"
        }
    .end annotation
.end field

.field private aMn:Landroid/view/ViewGroup;

.field private aMo:Landroid/view/View;

.field private aMp:Landroid/widget/ImageView;

.field private aMq:Landroid/widget/TextView;

.field private aMr:Landroid/widget/TextView;

.field private aMs:Z

.field private aMt:Z

.field private final aMv:Landroid/view/View$OnClickListener;

.field private final aMw:Landroid/app/LoaderManager$LoaderCallbacks;
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

.field private anZ:Lcom/android/mail/ui/ae;

.field private aqI:Landroid/app/LoaderManager;

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    sput v0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMu:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMj:Z

    .line 74
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 75
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 77
    new-instance v0, Landroid/support/v4/f/o;

    invoke-direct {v0}, Landroid/support/v4/f/o;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMl:Landroid/support/v4/f/o;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMs:Z

    .line 292
    new-instance v0, Lcom/android/mail/ui/cF;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cF;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMv:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lcom/android/mail/ui/cG;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cG;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 565
    new-instance v0, Lcom/android/mail/ui/cH;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cH;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMw:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    sget v1, Lcom/android/mail/ui/NestedFolderTeaserView;->aMu:I

    if-gez v1, :cond_0

    .line 187
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/NestedFolderTeaserView;->aMu:I

    .line 191
    :cond_0
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aDu:I

    .line 192
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->wC:Landroid/view/LayoutInflater;

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/bV;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMk:Lcom/android/mail/ui/bV;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/android/mail/ui/cI;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0d01b7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d01b8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01b9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d01b5

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Lcom/android/mail/ui/cI;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/mail/ui/cI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/android/mail/ui/cE;

    invoke-direct {v0, p0, v4}, Lcom/android/mail/ui/cE;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMm:Lcom/google/common/collect/ImmutableSortedSet;

    return-object p1
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;)V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/mail/ui/cI;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAf:I

    invoke-static {v1, v0}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/ui/cI;->zS()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/ui/cI;->zU()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/ui/cI;->zR()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/cI;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mail/ui/cI;->z(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->aao()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->ak(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->qJ()Landroid/support/v4/e/a;

    move-result-object v5

    array-length v6, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v7, v4, v2

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v5, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_1

    move-object v1, v0

    :cond_1
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mail/ui/cI;->z(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMs:Z

    return p1
.end method

.method static synthetic b(Lcom/android/mail/ui/NestedFolderTeaserView;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMs:Z

    return v0
.end method

.method static synthetic c(Lcom/android/mail/ui/NestedFolderTeaserView;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMt:Z

    return v0
.end method

.method static synthetic d(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/ae;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->anZ:Lcom/android/mail/ui/ae;

    return-object v0
.end method

.method static synthetic dg(I)I
    .locals 1

    .prologue
    .line 65
    const v0, 0x18a88

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic dh(I)I
    .locals 1

    .prologue
    .line 65
    const v0, 0x18a88

    sub-int v0, p0, v0

    return v0
.end method

.method static synthetic e(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/f/o;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMl:Landroid/support/v4/f/o;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mail/ui/NestedFolderTeaserView;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMt:Z

    return v0
.end method

.method static synthetic h(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aJo:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic i(Lcom/android/mail/ui/NestedFolderTeaserView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aDu:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view has already been bound to a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    .line 376
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->Nc:Lcom/android/mail/providers/Account;

    .line 212
    iput-object p2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMk:Lcom/android/mail/ui/bV;

    .line 213
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 4

    .prologue
    const v3, 0x18a88

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMj:Z

    .line 248
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    .line 253
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aJo:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aJo:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/mail/providers/Folder;->aAd:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 264
    :cond_2
    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aJo:Landroid/net/Uri;

    .line 267
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 268
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aqI:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 271
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMj:Z

    goto :goto_0
.end method

.method public final bm(Z)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->anZ:Lcom/android/mail/ui/ae;

    .line 367
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 197
    const v0, 0x7f0d01d3

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMn:Landroid/view/ViewGroup;

    .line 199
    const v0, 0x7f0d01d4

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMv:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMp:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMq:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    const v1, 0x7f0d01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMr:Landroid/widget/TextView;

    .line 208
    return-void
.end method

.method public final qD()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public final wk()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public final wl()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final xK()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public final yE()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMj:Z

    return v0
.end method

.method public final yK()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMt:Z

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMn:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMm:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v0

    sget v1, Lcom/android/mail/ui/NestedFolderTeaserView;->aMu:I

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMs:Z

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMm:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cI;

    .line 283
    iget-object v3, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMn:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/mail/ui/cI;->zQ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMl:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMn:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMp:Landroid/widget/ImageView;

    const v3, 0x7f020093

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMl:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMl:Landroid/support/v4/f/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/o;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cI;

    invoke-virtual {v0}, Lcom/android/mail/ui/cI;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAf:I

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMr:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_2
    iput-boolean v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMt:Z

    .line 290
    :cond_3
    return-void

    .line 287
    :cond_4
    sget v0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMu:I

    if-le v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMp:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMq:Landroid/widget/TextView;

    const v1, 0x7f09019d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMr:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->aMo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final yL()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public final yM()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method
