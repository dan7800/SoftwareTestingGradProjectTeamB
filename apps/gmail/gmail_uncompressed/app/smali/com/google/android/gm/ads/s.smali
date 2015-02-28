.class public final Lcom/google/android/gm/ads/s;
.super Lcom/android/mail/ui/ConversationViewFragment;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aZT:Lcom/google/android/gm/ads/v;

.field private aZU:Lcom/google/android/gm/ads/c;

.field private final aZV:Lcom/google/android/gm/provider/e;

.field private final aZW:Lcom/google/android/gm/ads/u;

.field private aZl:Lcom/google/android/gm/provider/Advertisement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ads/s;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/gm/ads/v;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/ads/v;-><init>(Lcom/google/android/gm/ads/s;B)V

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aZT:Lcom/google/android/gm/ads/v;

    .line 116
    new-instance v0, Lcom/google/android/gm/ads/t;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ads/t;-><init>(Lcom/google/android/gm/ads/s;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aZV:Lcom/google/android/gm/provider/e;

    .line 288
    new-instance v0, Lcom/google/android/gm/ads/u;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/ads/u;-><init>(Lcom/google/android/gm/ads/s;B)V

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aZW:Lcom/google/android/gm/ads/u;

    .line 54
    return-void
.end method

.method static synthetic Dj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gm/ads/s;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public static a(Lcom/google/android/gm/provider/Advertisement;Lcom/android/mail/providers/Account;)Lcom/google/android/gm/ads/s;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gm/ads/s;

    invoke-direct {v0}, Lcom/google/android/gm/ads/s;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 62
    const-string v2, "advertisement"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v2, "account"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/gm/ads/s;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ads/s;Lcom/google/android/gm/provider/Advertisement;)Lcom/google/android/gm/provider/Advertisement;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/provider/Advertisement;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ads/s;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/s;->b(Lcom/android/mail/browse/aC;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/ads/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aZU:Lcom/google/android/gm/ads/c;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/ads/s;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gm/ads/s;->aHS:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/gm/ads/s;)Lcom/android/mail/ui/as;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aob:Lcom/android/mail/ui/as;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gm/ads/s;)Lcom/google/android/gm/ads/u;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aZW:Lcom/google/android/gm/ads/u;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gm/ads/s;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/android/mail/browse/aC;Z)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 139
    sget-object v0, Lcom/google/android/gm/ads/s;->mW:Ljava/lang/String;

    const-string v1, "IN renderMessageBodies, fragment=%s"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v10

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oR()V

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->clear()V

    .line 159
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 160
    new-instance v1, Lcom/android/mail/ui/ConversationViewState;

    invoke-direct {v1, v0}, Lcom/android/mail/ui/ConversationViewState;-><init>(Lcom/android/mail/ui/ConversationViewState;)V

    iput-object v1, p0, Lcom/google/android/gm/ads/s;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 166
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aqX:Lcom/android/mail/browse/aa;

    new-instance v3, Lcom/google/android/gm/ads/b;

    invoke-direct {v3, v0}, Lcom/google/android/gm/ads/b;-><init>(Lcom/google/android/gm/provider/Advertisement;)V

    invoke-virtual {v1, v3}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/s;->cU(I)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationWebView;->qY()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget v5, p0, Lcom/google/android/gm/ads/s;->aHW:I

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v5, v0}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/mail/ui/cg;->f(III)V

    .line 172
    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    new-instance v0, Lcom/google/android/gm/ads/c;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gm/ads/c;-><init>(Lcom/android/mail/providers/Account;Lcom/google/android/gm/provider/Advertisement;)V

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aZU:Lcom/google/android/gm/ads/c;

    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aqX:Lcom/android/mail/browse/aa;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->aZU:Lcom/google/android/gm/ads/c;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->aqX:Lcom/android/mail/browse/aa;

    new-instance v4, Lcom/google/android/gm/ads/a;

    invoke-direct {v4}, Lcom/google/android/gm/ads/a;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/s;->cU(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/google/android/gm/ads/s;->cU(I)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v5, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v5, v4}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v5, v3}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;ZZII)V

    const-string v0, "rendered message"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/s;->cj(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v2, p0, Lcom/google/android/gm/ads/s;->aEG:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->aEG:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->qY()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget v5, p0, Lcom/google/android/gm/ads/s;->aHW:I

    invoke-virtual {v1, v5}, Lcom/android/mail/browse/ConversationWebView;->cf(I)I

    move-result v5

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->vI()Z

    move-result v7

    move v1, v10

    move v6, p2

    move v8, v10

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/ui/cg;->a(ILjava/lang/String;Ljava/lang/String;IIZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 317
    const v0, 0x7f040036

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 318
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/s;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 93
    const v1, 0x7f0d026e

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->onBackPressed()V

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aZV:Lcom/google/android/gm/provider/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/e;->a(Lcom/google/android/gm/provider/Advertisement;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aZV:Lcom/google/android/gm/provider/e;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aob:Lcom/android/mail/ui/as;

    new-instance v2, Lcom/google/android/gm/ads/AdToastBarOperation;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gm/ads/AdToastBarOperation;-><init>(Lcom/google/android/gm/provider/Advertisement;Lcom/android/mail/providers/Account;)V

    invoke-interface {v1, v2}, Lcom/android/mail/ui/as;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 99
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final wQ()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/mail/ui/ConversationViewFragment;->wQ()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gm/ads/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "advertisement"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Advertisement;

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    .line 72
    return-void
.end method

.method protected final wR()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x-thread://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->aZl:Lcom/google/android/gm/provider/Advertisement;

    iget-object v1, v1, Lcom/google/android/gm/provider/Advertisement;->bcd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ads/s;->aEG:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected final yQ()Lcom/android/mail/ui/aX;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/google/android/gm/ads/w;

    iget-object v1, p0, Lcom/google/android/gm/ads/s;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/ads/w;-><init>(Lcom/google/android/gm/ads/s;Lcom/android/mail/providers/Account;)V

    return-object v0
.end method

.method protected final yR()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method protected final yW()V
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/gm/ads/s;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gm/ads/s;->aZT:Lcom/google/android/gm/ads/v;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 130
    return-void
.end method
