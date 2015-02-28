.class public abstract Lcom/android/mail/ui/F;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/aD;
.implements Lcom/android/mail/browse/ag;
.implements Lcom/android/mail/browse/m;


# static fields
.field private static final aEQ:Ljava/lang/String;

.field private static final aER:Ljava/lang/String;

.field private static final aES:Ljava/lang/String;

.field private static final aET:Ljava/lang/String;

.field private static final aEU:Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field protected Nc:Lcom/android/mail/providers/Account;

.field private final aEE:Lcom/android/mail/ui/K;

.field private aEF:Landroid/view/MenuItem;

.field protected aEG:Ljava/lang/String;

.field protected aEH:Lcom/android/mail/ui/L;

.field private aEI:Lcom/android/mail/browse/aC;

.field private aEJ:Z

.field private aEK:Z

.field protected aEL:Lcom/android/mail/ui/ConversationViewState;

.field private aEM:Z

.field private aEN:Z

.field private aEO:Z

.field protected aEP:Z

.field protected amr:Lcom/android/mail/providers/Conversation;

.field protected aob:Lcom/android/mail/ui/as;

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

.field private arE:Lcom/android/mail/ui/ar;

.field private final atL:Lcom/android/mail/providers/d;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "viewstate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->aEQ:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uservisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->aER:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->aES:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversationtransformed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->aET:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "conversationreverted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/F;->aEU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/mail/ui/K;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/K;-><init>(Lcom/android/mail/ui/F;B)V

    iput-object v0, p0, Lcom/android/mail/ui/F;->aEE:Lcom/android/mail/ui/K;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->aqQ:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/F;->mHandler:Landroid/os/Handler;

    .line 114
    iput-boolean v1, p0, Lcom/android/mail/ui/F;->aEP:Z

    .line 116
    new-instance v0, Lcom/android/mail/ui/G;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/G;-><init>(Lcom/android/mail/ui/F;)V

    iput-object v0, p0, Lcom/android/mail/ui/F;->atL:Lcom/android/mail/providers/d;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/F;)Lcom/android/mail/browse/aC;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/F;Lcom/android/mail/browse/aC;)Lcom/android/mail/browse/aC;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    return-object p1
.end method

.method public static a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x-thread://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/ui/F;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEM:Z

    return v0
.end method

.method private final bp(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    .line 175
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    .line 184
    sget-object v5, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v6, "onConversationSeen() - mConversation.isViewed() = %b, cursor null = %b, cursor.isConversationRead() = %b"

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uJ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v3

    if-nez v4, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v8, 0x2

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mail/browse/aC;->rx()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 188
    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uJ()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mail/browse/aC;->rx()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    :cond_2
    if-eqz p1, :cond_5

    .line 193
    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    new-array v1, v2, [Lcom/android/mail/providers/Conversation;

    iget-object v5, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/android/mail/ui/aP;->a(Ljava/util/Collection;ZZ)V

    .line 204
    :goto_3
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mail/browse/aC;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {v4}, Lcom/android/mail/browse/aC;->ry()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 184
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 198
    :cond_5
    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/aP;->h(Lcom/android/mail/providers/Conversation;)Z

    move-result v2

    goto :goto_3
.end method

.method static synthetic c(Lcom/android/mail/ui/F;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEJ:Z

    return v0
.end method

.method static synthetic d(Lcom/android/mail/ui/F;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mail/ui/F;->onError()V

    return-void
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Lcom/android/mail/providers/Account;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    return-object v0
.end method

.method private onError()V
    .locals 3

    .prologue
    .line 560
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "CVF: visible conv has no messages, exiting conv mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 564
    invoke-direct {p0}, Lcom/android/mail/ui/F;->wU()V

    .line 565
    return-void
.end method

.method private wU()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/mail/ui/F;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/ui/H;

    const-string v2, "popOut"

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mail/ui/H;-><init>(Lcom/android/mail/ui/F;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/android/mail/browse/aC;Lcom/android/mail/browse/aC;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/aC;",
            "Lcom/android/mail/browse/aC;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
.end method

.method public final bq(Z)V
    .locals 5

    .prologue
    .line 459
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "in CVF.setHint, val=%s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEJ:Z

    if-eq v0, p1, :cond_0

    .line 461
    iput-boolean p1, p0, Lcom/android/mail/ui/F;->aEJ:Z

    .line 462
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    .line 463
    iget-boolean v1, p0, Lcom/android/mail/ui/F;->aEJ:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/browse/aC;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/browse/aC;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-direct {p0}, Lcom/android/mail/ui/F;->onError()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wP()V

    goto :goto_0
.end method

.method protected final cj(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEJ:Z

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/android/mail/utils/ag;->aQL:Lcom/android/mail/f/a;

    .line 480
    :cond_0
    return-void
.end method

.method public abstract f(Lcom/android/mail/providers/Conversation;)V
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/mail/ui/F;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/mail/ui/F;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final isUserVisible()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEJ:Z

    return v0
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 295
    instance-of v0, v1, Lcom/android/mail/ui/as;

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v2, "ConversationViewFragment expects only a ControllableActivity tocreate it. Cannot proceed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, v1

    .line 303
    check-cast v0, Lcom/android/mail/ui/as;

    iput-object v0, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    .line 304
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->mContext:Landroid/content/Context;

    .line 305
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEH:Lcom/android/mail/ui/L;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/L;->setActivity(Landroid/app/Activity;)V

    .line 306
    iget-object v0, p0, Lcom/android/mail/ui/F;->atL:Lcom/android/mail/providers/d;

    iget-object v1, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    .line 307
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEH:Lcom/android/mail/ui/L;

    iget-object v1, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/L;->d(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wQ()V

    .line 237
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wR()V

    .line 239
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "onCreate in ConversationViewFragment (this=%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    invoke-virtual {p0, v4}, Lcom/android/mail/ui/F;->setHasOptionsMenu(Z)V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    sget-object v0, Lcom/android/mail/ui/F;->aEQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState;

    iput-object v0, p0, Lcom/android/mail/ui/F;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 245
    sget-object v0, Lcom/android/mail/ui/F;->aER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEJ:Z

    .line 246
    sget-object v0, Lcom/android/mail/ui/F;->aES:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEM:Z

    .line 247
    sget-object v0, Lcom/android/mail/ui/F;->aET:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEN:Z

    .line 249
    sget-object v0, Lcom/android/mail/ui/F;->aEU:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEO:Z

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/android/mail/ui/ConversationViewState;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/F;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 253
    iput-boolean v3, p0, Lcom/android/mail/ui/F;->aEN:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/mail/ui/F;->aEO:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 353
    const v0, 0x7f0d027d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->aEF:Landroid/view/MenuItem;

    .line 354
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 451
    iget-object v0, p0, Lcom/android/mail/ui/F;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 452
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    iget-boolean v2, p0, Lcom/android/mail/ui/F;->aEJ:Z

    if-nez v2, :cond_1

    .line 366
    sget-object v2, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v3, "ACVF ignoring onOptionsItemSelected b/c userVisibleHint is false. f=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    sget-object v2, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    sget-object v2, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/mail/utils/ag;->d(Landroid/app/Fragment;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 392
    :cond_0
    :goto_0
    return v1

    .line 375
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 376
    const v3, 0x7f0d027b

    if-eq v2, v3, :cond_2

    const v3, 0x7f0d0287

    if-ne v2, v3, :cond_3

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wO()V

    :goto_1
    move v1, v0

    .line 392
    goto :goto_0

    .line 378
    :cond_3
    const v3, 0x7f0d028b

    if-ne v2, v3, :cond_4

    .line 379
    invoke-direct {p0, v0}, Lcom/android/mail/ui/F;->bp(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->D()V

    goto :goto_1

    .line 381
    :cond_4
    const v3, 0x7f0d0283

    if-ne v2, v3, :cond_5

    .line 382
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wY()V

    goto :goto_1

    .line 383
    :cond_5
    const v3, 0x7f0d0282

    if-ne v2, v3, :cond_6

    .line 384
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->xb()V

    goto :goto_1

    .line 385
    :cond_6
    const v3, 0x7f0d0169

    if-ne v2, v3, :cond_7

    .line 386
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->xc()V

    goto :goto_1

    .line 387
    :cond_7
    const v3, 0x7f0d016a

    if-ne v2, v3, :cond_8

    .line 388
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->xd()V

    goto :goto_1

    :cond_8
    move v0, v1

    .line 390
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    const v3, 0x7f0d0283

    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEN:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEO:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    .line 401
    const v0, 0x7f0d0282

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_1

    .line 404
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/F;->xa()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    iget-object v2, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v2}, Lcom/android/mail/providers/Conversation;->uH()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 408
    const v1, 0x7f09019e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 413
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 398
    goto :goto_0

    .line 410
    :cond_3
    const v1, 0x7f09019f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEL:Lcom/android/mail/ui/ConversationViewState;

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/android/mail/ui/F;->aEQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/ui/F;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 440
    :cond_0
    sget-object v0, Lcom/android/mail/ui/F;->aER:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/F;->aEJ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    sget-object v0, Lcom/android/mail/ui/F;->aES:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/F;->aEM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    sget-object v0, Lcom/android/mail/ui/F;->aET:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/F;->aEN:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    sget-object v0, Lcom/android/mail/ui/F;->aEU:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/mail/ui/F;->aEO:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 432
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/a/d;->ba(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method protected final qE()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 605
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "AbstractConversationViewFragment#onConversationSeen()"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/mail/ui/as;

    .line 609
    if-nez v6, :cond_0

    .line 610
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "ignoring onConversationSeen for conv=%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v3, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 635
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEP:Z

    if-nez v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->wV()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "view_conversation"

    iget-object v3, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->aam:Z

    if-eqz v3, :cond_3

    const-string v3, "unsynced"

    :goto_1
    iget-object v4, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v4}, Lcom/android/mail/providers/Conversation;->uH()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEL:Lcom/android/mail/ui/ConversationViewState;

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationViewState;->r(Lcom/android/mail/providers/Conversation;)V

    .line 623
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "onConversationSeen() - mSuppressMarkingViewed = %b"

    new-array v2, v8, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/mail/ui/F;->aEK:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 629
    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEK:Z

    if-nez v0, :cond_2

    .line 630
    invoke-direct {p0, v7}, Lcom/android/mail/ui/F;->bp(Z)V

    .line 632
    :cond_2
    invoke-interface {v6}, Lcom/android/mail/ui/as;->xY()Lcom/android/mail/ui/av;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/av;->qE()V

    .line 634
    iput-boolean v8, p0, Lcom/android/mail/ui/F;->aEP:Z

    goto :goto_0

    .line 618
    :cond_3
    const-string v3, "synced"

    goto :goto_1
.end method

.method public final qU()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEF:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 421
    sget-object v0, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const-string v1, "unable to open \'change folders\' dialog for a conversation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    iget-object v1, p0, Lcom/android/mail/ui/F;->aEF:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/as;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public final rA()Lcom/android/mail/ui/aP;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    .line 313
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rB()Lcom/android/mail/browse/aC;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    return-object v0
.end method

.method public final rf()Lcom/android/mail/ui/ar;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mail/ui/F;->arE:Lcom/android/mail/ui/ar;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yj()Lcom/android/mail/ui/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->arE:Lcom/android/mail/ui/ar;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/F;->arE:Lcom/android/mail/ui/ar;

    return-object v0
.end method

.method public final rl()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aCg:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/android/mail/ui/F;->mW:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " conv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected wO()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEK:Z

    .line 164
    return-void
.end method

.method public abstract wP()V
.end method

.method protected wQ()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/mail/ui/F;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 263
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    .line 264
    const-string v0, "conversation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    iput-object v0, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    .line 265
    return-void
.end method

.method protected wR()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mail/ui/F;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, p0, Lcom/android/mail/ui/F;->amr:Lcom/android/mail/providers/Conversation;

    invoke-static {v0, v1}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/F;->aEG:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public final wS()Lcom/android/mail/ui/K;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEE:Lcom/android/mail/ui/K;

    return-object v0
.end method

.method abstract wT()Z
.end method

.method protected final wV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/mail/ui/F;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yc()Lcom/android/mail/ui/by;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/by;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 590
    :goto_0
    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->va()Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_1
    return-object v0

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_1
    const-string v0, "unknown_folder"

    goto :goto_1
.end method

.method public final wW()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/mail/ui/F;->aEI:Lcom/android/mail/browse/aC;

    .line 686
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/F;->wU()V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEM:Z

    goto :goto_0
.end method

.method public final wX()V
    .locals 3

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEN:Z

    .line 700
    iget-object v0, p0, Lcom/android/mail/ui/F;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/ui/I;

    const-string v2, "invalidateOptionsMenu"

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mail/ui/I;-><init>(Lcom/android/mail/ui/F;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public wY()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/F;->aEO:Z

    .line 717
    return-void
.end method

.method public final wZ()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/mail/ui/F;->Nc:Lcom/android/mail/providers/Account;

    iget v0, v0, Lcom/android/mail/providers/Account;->ayB:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/F;->aEO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract xa()Z
.end method

.method protected abstract xb()V
.end method

.method protected abstract xc()V
.end method

.method protected abstract xd()V
.end method
