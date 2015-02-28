.class public final Lcom/android/mail/browse/am;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/cU;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field protected final aqQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;"
        }
    .end annotation
.end field

.field private arB:Landroid/net/Uri;

.field private arC:Lcom/android/mail/browse/an;

.field private arD:Lcom/android/mail/ui/cT;

.field private arE:Lcom/android/mail/ui/ar;

.field private final arF:Lcom/android/mail/browse/ap;

.field private final arG:Lcom/android/mail/browse/ao;

.field private arH:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/am;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/am;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/mail/browse/ap;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/ap;-><init>(Lcom/android/mail/browse/am;B)V

    iput-object v0, p0, Lcom/android/mail/browse/am;->arF:Lcom/android/mail/browse/ap;

    .line 83
    new-instance v0, Lcom/android/mail/browse/ao;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/ao;-><init>(Lcom/android/mail/browse/am;B)V

    iput-object v0, p0, Lcom/android/mail/browse/am;->arG:Lcom/android/mail/browse/ao;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/am;->aqQ:Ljava/util/Map;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/am;)Lcom/android/mail/ui/cT;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/browse/am;->arD:Lcom/android/mail/ui/cT;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/browse/am;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/browse/am;->arB:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/browse/am;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mail/browse/am;->rb()V

    return-void
.end method

.method static synthetic d(Lcom/android/mail/browse/am;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/am;->arH:Z

    return v0
.end method

.method static synthetic gK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/mail/browse/am;->mW:Ljava/lang/String;

    return-object v0
.end method

.method public static n(Landroid/net/Uri;)Lcom/android/mail/browse/am;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/android/mail/browse/am;

    invoke-direct {v0}, Lcom/android/mail/browse/am;-><init>()V

    .line 147
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 148
    const-string v2, "eml_file_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/am;->setArguments(Landroid/os/Bundle;)V

    .line 150
    return-object v0
.end method

.method private rb()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    const v1, 0x7f0901bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ConversationViewHeader;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public final a(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mail/browse/am;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/mail/browse/am;->arH:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/mail/browse/am;->rb()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/am;->arC:Lcom/android/mail/browse/an;

    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/an;->setActivity(Landroid/app/Activity;)V

    .line 186
    iget-object v0, p0, Lcom/android/mail/browse/am;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zX()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    const-string v1, "eml_file_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/browse/am;->arB:Landroid/net/Uri;

    .line 166
    new-instance v0, Lcom/android/mail/browse/an;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/an;-><init>(Lcom/android/mail/browse/am;)V

    iput-object v0, p0, Lcom/android/mail/browse/am;->arC:Lcom/android/mail/browse/an;

    .line 167
    new-instance v0, Lcom/android/mail/ui/cT;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cT;-><init>(Lcom/android/mail/ui/cU;)V

    iput-object v0, p0, Lcom/android/mail/browse/am;->arD:Lcom/android/mail/ui/cT;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/am;->setHasOptionsMenu(Z)V

    .line 170
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const v0, 0x7f10000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mail/browse/am;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/ui/cT;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 199
    const v1, 0x7f0d0292

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/mail/browse/am;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zZ()V

    .line 205
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public final rc()Lcom/android/mail/ui/L;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mail/browse/am;->arC:Lcom/android/mail/browse/an;

    return-object v0
.end method

.method public final rd()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 228
    return-object p0
.end method

.method public final re()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public final rf()Lcom/android/mail/ui/ar;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mail/browse/am;->arE:Lcom/android/mail/ui/ar;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/android/mail/ui/ar;

    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/ui/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/am;->arE:Lcom/android/mail/ui/ar;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/am;->arE:Lcom/android/mail/ui/ar;

    return-object v0
.end method

.method public final rg()Lcom/android/mail/browse/m;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/aq;

    return-object v0
.end method

.method public final rh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mail/browse/am;->aqQ:Ljava/util/Map;

    return-object v0
.end method

.method public final ri()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/mail/browse/am;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/browse/am;->arF:Lcom/android/mail/browse/ap;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 268
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mail/browse/am;->arG:Lcom/android/mail/browse/ao;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 269
    return-void
.end method

.method public final rj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "x-thread://message/rfc822/"

    return-object v0
.end method

.method public final rk()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public final rl()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic rm()Lcom/android/mail/b;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mail/browse/am;->rf()Lcom/android/mail/ui/ar;

    move-result-object v0

    return-object v0
.end method
