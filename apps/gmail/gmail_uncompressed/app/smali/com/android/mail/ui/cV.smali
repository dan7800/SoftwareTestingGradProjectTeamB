.class public final Lcom/android/mail/ui/cV;
.super Lcom/android/mail/ui/F;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/cU;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private arD:Lcom/android/mail/ui/cT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cV;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/mail/ui/F;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/cV;)Lcom/android/mail/ui/cT;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    return-object v0
.end method

.method public static b(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/cV;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/android/mail/ui/cV;

    invoke-direct {v0}, Lcom/android/mail/ui/cV;-><init>()V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 114
    const-string v2, "conversation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cV;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v0
.end method

.method private c(Lcom/android/mail/browse/aC;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_0
    sget-object v0, Lcom/android/mail/ui/cV;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: existing cursor is null, rendering from scratch"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/cV;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/cV;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    sget-object v0, Lcom/android/mail/ui/cV;->mW:Ljava/lang/String;

    const-string v1, "unable to open message cursor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cT;->c(Lcom/android/mail/browse/ConversationMessage;)V

    goto :goto_0
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/mail/ui/cV;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/ConversationViewHeader;)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->rA()Lcom/android/mail/ui/aP;

    move-result-object v0

    invoke-virtual {p1, p0, p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->a(Lcom/android/mail/browse/ag;Lcom/android/mail/browse/m;Lcom/android/mail/ui/aP;)V

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;->e(Lcom/android/mail/providers/Conversation;)V

    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azc:Z

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;->aD(Z)V

    .line 163
    return-void
.end method

.method public final a(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/O;->wz()Lcom/android/mail/utils/aj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/utils/aj;)V

    .line 185
    return-void
.end method

.method protected final a(Lcom/android/mail/browse/aC;Lcom/android/mail/browse/aC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/aC;",
            "Lcom/android/mail/browse/aC;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cV;->c(Lcom/android/mail/browse/aC;)V

    .line 245
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/cV;->c(Lcom/android/mail/browse/aC;)V

    .line 224
    return-void
.end method

.method public final ce(I)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final f(Lcom/android/mail/providers/Conversation;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zY()Lcom/android/mail/browse/ConversationViewHeader;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->f(Lcom/android/mail/providers/Conversation;)V

    .line 271
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/mail/ui/F;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zX()V

    .line 143
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/mail/ui/F;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance v0, Lcom/android/mail/ui/cW;

    iget-object v1, p0, Lcom/android/mail/ui/cV;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/cW;-><init>(Lcom/android/mail/ui/cV;Lcom/android/mail/providers/Account;)V

    iput-object v0, p0, Lcom/android/mail/ui/cV;->aEH:Lcom/android/mail/ui/L;

    .line 130
    new-instance v0, Lcom/android/mail/ui/cT;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cT;-><init>(Lcom/android/mail/ui/cU;)V

    iput-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    .line 131
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/ui/cT;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final rc()Lcom/android/mail/ui/L;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mail/ui/cV;->aEH:Lcom/android/mail/ui/L;

    return-object v0
.end method

.method public final rd()Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 149
    return-object p0
.end method

.method public final re()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->isUserVisible()Z

    move-result v0

    return v0
.end method

.method public final rg()Lcom/android/mail/browse/m;
    .locals 0

    .prologue
    .line 172
    return-object p0
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
    .line 177
    iget-object v0, p0, Lcom/android/mail/ui/cV;->aqQ:Ljava/util/Map;

    return-object v0
.end method

.method public final ri()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->wS()Lcom/android/mail/ui/K;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 190
    return-void
.end method

.method public final rj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mail/ui/cV;->aEG:Ljava/lang/String;

    return-object v0
.end method

.method public final rk()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic rm()Lcom/android/mail/b;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/mail/ui/F;->rf()Lcom/android/mail/ui/ar;

    move-result-object v0

    return-object v0
.end method

.method protected final wO()V
    .locals 6

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/mail/ui/F;->wO()V

    .line 208
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    .line 209
    iget-object v1, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v1}, Lcom/android/mail/ui/cT;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    .line 210
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 211
    :cond_0
    sget-object v2, Lcom/android/mail/ui/cV;->mW:Ljava/lang/String;

    const-string v3, "ignoring markUnread for conv=%s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 219
    :goto_1
    return-void

    .line 211
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 215
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 216
    iget-object v1, v1, Lcom/android/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/cV;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v3, p0, Lcom/android/mail/ui/cV;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationViewState;->zc()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/ui/aP;->a(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_1
.end method

.method public final wP()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/mail/ui/cV;->aob:Lcom/android/mail/ui/as;

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->qE()V

    goto :goto_0
.end method

.method public final wT()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method protected final xa()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method protected final xb()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->zZ()V

    .line 293
    return-void
.end method

.method protected final xc()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cV;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 301
    :cond_0
    return-void
.end method

.method protected final xd()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mail/ui/cV;->arD:Lcom/android/mail/ui/cT;

    invoke-virtual {v0}, Lcom/android/mail/ui/cT;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/mail/ui/cV;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cV;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 309
    :cond_0
    return-void
.end method
