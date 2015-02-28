.class public Lcom/android/mail/ui/ConversationViewFragment;
.super Lcom/android/mail/ui/F;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/mail/browse/K;
.implements Lcom/android/mail/browse/aE;
.implements Lcom/android/mail/browse/aH;
.implements Lcom/android/mail/browse/aY;
.implements Lcom/android/mail/browse/bh;


# static fields
.field private static final aIg:Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private aHC:I

.field private final aHD:I

.field private final aHE:I

.field private final aHF:I

.field private final aHG:I

.field private aHH:Lcom/android/mail/ui/ck;

.field private aHI:Landroid/view/View;

.field private aHJ:I

.field private aHK:I

.field protected aHL:Lcom/android/mail/browse/ConversationContainer;

.field private aHM:Landroid/view/ViewGroup;

.field private aHN:Lcom/android/mail/ui/be;

.field private aHO:Lcom/android/mail/ui/ActionableToastBar;

.field private aHP:Lcom/android/mail/ui/ab;

.field protected aHQ:Lcom/android/mail/ui/cg;

.field private final aHR:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

.field protected aHS:Z

.field private aHT:Z

.field private aHU:Ljava/lang/String;

.field private aHV:I

.field protected aHW:I

.field private aHX:I

.field private aHY:Z

.field private aHZ:Lcom/android/mail/browse/av;

.field private aIa:F

.field private aIb:Z

.field private aIc:J

.field private final aId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aIe:Landroid/database/DataSetObserver;

.field private final aIf:Ljava/lang/Runnable;

.field private aIh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected alx:Lcom/android/mail/browse/ConversationWebView;

.field private aqT:Landroid/support/v4/e/a;

.field protected aqX:Lcom/android/mail/browse/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "webview-y-percent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/ConversationViewFragment;->aIg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Lcom/android/mail/ui/F;-><init>()V

    .line 115
    iput v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHC:I

    .line 120
    iput v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHD:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHE:I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHF:I

    .line 137
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHG:I

    .line 164
    new-instance v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;-><init>(Lcom/android/mail/ui/ConversationViewFragment;B)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHR:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    .line 190
    iput v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    .line 205
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aId:Ljava/util/Map;

    .line 207
    new-instance v0, Lcom/android/mail/ui/aQ;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aQ;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIe:Landroid/database/DataSetObserver;

    .line 222
    new-instance v0, Lcom/android/mail/ui/aS;

    const-string v1, "onProgressDismiss"

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mail/ui/aS;-><init>(Lcom/android/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIf:Ljava/lang/Runnable;

    .line 250
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/android/mail/providers/Conversation;)Lcom/android/mail/ui/ConversationViewFragment;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewFragment;-><init>()V

    .line 260
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 261
    const-string v2, "conversation"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ConversationViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 263
    return-object v0
.end method

.method private a(Lcom/android/mail/browse/aC;)V
    .locals 6

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHY:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;Z)Ljava/lang/String;

    move-result-object v2

    .line 676
    const-string v0, "rendered conversation"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cj(Ljava/lang/String;)V

    .line 697
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIb:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yS()F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIa:F

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEG:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/ConversationWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIb:Z

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIc:J

    .line 704
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yU()V

    return-void
.end method

.method static synthetic a([I[I)[Lcom/android/mail/browse/r;
    .locals 6

    .prologue
    .line 104
    array-length v1, p0

    new-array v2, v1, [Lcom/android/mail/browse/r;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Lcom/android/mail/browse/r;

    aget v4, p0, v0

    aget v5, p1, v0

    invoke-direct {v3, v4, v5}, Lcom/android/mail/browse/r;-><init>(II)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private b(Lcom/android/mail/browse/ConversationMessage;ZZ)V
    .locals 6

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v1, p1}, Lcom/android/mail/ui/ConversationViewState;->h(Lcom/android/mail/providers/Message;)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/ConversationMessage;ZZ)I

    move-result v1

    .line 870
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ae;

    .line 872
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/aa;->b(Lcom/android/mail/browse/ae;)I

    move-result v0

    .line 877
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationViewFragment;->cU(I)I

    move-result v1

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cU(I)I

    move-result v2

    .line 880
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v3, v1}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v4

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;ZZII)V

    .line 882
    const-string v0, "rendered message"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cj(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v3, "SHOWCONV: CVF is user-visible, immediately loading conversation (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v1, v3, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "CVF.showConversation"

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/ConversationViewFragment;->cj(Ljava/lang/String;)V

    :goto_0
    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    iget v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yV()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-boolean v1, v1, Lcom/android/mail/providers/Conversation;->aam:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uH()I

    move-result v1

    iget v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHV:I

    if-le v1, v3, :cond_3

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    sget-object v3, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v4, "SHOWCONV: CVF waiting until visible to load (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v3, v4, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rA()Lcom/android/mail/ui/aP;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mail/ui/aP;->qC()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v3, "SHOWCONV: CVF waiting for initial to finish (%s)"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rA()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIe:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/aP;->c(Landroid/database/DataSetObserver;)V

    move v0, v2

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v3, "SHOWCONV: CVF is not visible, but no reason to wait. loading now. (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v1, v3, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHO:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v1, v1}, Lcom/android/mail/ui/ActionableToastBar;->f(ZZ)V

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;)V

    return-void
.end method

.method private d(Lcom/android/mail/browse/V;)I
    .locals 5

    .prologue
    .line 952
    invoke-virtual {p1}, Lcom/android/mail/browse/V;->getType()I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationContainer;->bQ(I)Landroid/view/View;

    move-result-object v1

    .line 955
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 957
    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/browse/ConversationContainer;->c(ILandroid/view/View;)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/ConversationContainer;->ap(Landroid/view/View;)I

    move-result v0

    .line 962
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/V;->ca(I)Z

    .line 963
    invoke-virtual {p1}, Lcom/android/mail/browse/V;->qr()V

    .line 965
    return v0
.end method

.method static synthetic d(Lcom/android/mail/ui/ConversationViewFragment;)J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIc:J

    return-wide v0
.end method

.method static synthetic e(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHZ:Lcom/android/mail/browse/av;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mail/ui/aW;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aW;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHZ:Lcom/android/mail/browse/av;

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHZ:Lcom/android/mail/browse/av;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->a(Lcom/android/mail/browse/av;)V

    return-void
.end method

.method static synthetic f(Lcom/android/mail/ui/ConversationViewFragment;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHY:Z

    return v0
.end method

.method static synthetic g(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 5

    .prologue
    .line 104
    const-string v0, "revealing conversation"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHN:Lcom/android/mail/ui/be;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/be;->c(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "open_conv_from_list"

    const/4 v2, 0x1

    const-string v3, "open_conversation"

    const-string v4, "from_list"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/android/mail/ui/ConversationViewFragment;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHC:I

    return v0
.end method

.method static synthetic i(Lcom/android/mail/ui/ConversationViewFragment;)I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHC:I

    return v0
.end method

.method static synthetic j(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/android/mail/ui/ConversationViewFragment;)F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIa:F

    return v0
.end method

.method static synthetic m(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aId:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIh:Ljava/util/Map;

    return-object v0
.end method

.method private qK()Lcom/android/mail/browse/ae;
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->getCount()I

    move-result v0

    .line 850
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v0

    .line 852
    instance-of v2, v0, Lcom/android/mail/browse/ae;

    if-eqz v2, :cond_0

    .line 853
    check-cast v0, Lcom/android/mail/browse/ae;

    .line 857
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 855
    goto :goto_0

    .line 856
    :cond_1
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "No message header found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 857
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private yS()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getScrollY()I

    move-result v1

    .line 512
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->getHeight()I

    move-result v2

    .line 513
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationWebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 515
    if-eqz v3, :cond_0

    if-le v3, v2, :cond_0

    .line 517
    add-int v0, v1, v2

    if-lt v0, v3, :cond_2

    .line 520
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 522
    :cond_2
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private yT()V
    .locals 2

    .prologue
    .line 528
    iget v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rA()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIe:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/aP;->d(Landroid/database/DataSetObserver;)V

    .line 531
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    .line 532
    return-void
.end method

.method private yU()V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yT()V

    .line 641
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yV()V

    .line 642
    return-void
.end method

.method private yV()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yW()V

    .line 650
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/be;->bu(Z)V

    .line 651
    return-void
.end method

.method private yX()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v0}, Lcom/android/mail/providers/Settings;->vI()Z

    move-result v0

    .line 1141
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1143
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1144
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1145
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1146
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1149
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 1153
    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1154
    return-void

    .line 1151
    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/mail/browse/aC;Z)Ljava/lang/String;
    .locals 13

    .prologue
    .line 717
    const/4 v5, -0x1

    .line 719
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "IN renderMessageBodies, fragment=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 720
    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oR()V

    .line 734
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->clear()V

    .line 738
    iget-object v11, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 739
    new-instance v0, Lcom/android/mail/ui/ConversationViewState;

    invoke-direct {v0, v11}, Lcom/android/mail/ui/ConversationViewState;-><init>(Lcom/android/mail/ui/ConversationViewState;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    .line 745
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/aa;->d(Lcom/android/mail/providers/Conversation;)I

    move-result v0

    .line 746
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cU(I)I

    move-result v0

    .line 748
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->qY()I

    move-result v2

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHW:I

    invoke-virtual {v3, v6}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v6, v0}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mail/ui/cg;->f(III)V

    .line 751
    const/4 v3, -0x1

    .line 752
    const/4 v1, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rl()Z

    move-result v2

    .line 758
    const/4 v0, 0x0

    move v6, v3

    move v7, v4

    move-object v4, v1

    move v3, v5

    move v1, v2

    .line 759
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 760
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v5

    .line 762
    if-nez v2, :cond_0

    iget-boolean v3, v5, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    if-nez v3, :cond_0

    invoke-virtual {v11, v5}, Lcom/android/mail/ui/ConversationViewState;->h(Lcom/android/mail/providers/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 764
    :goto_1
    or-int/2addr v7, v3

    .line 766
    invoke-virtual {v11, v5}, Lcom/android/mail/ui/ConversationViewState;->i(Lcom/android/mail/providers/Message;)Ljava/lang/Integer;

    move-result-object v9

    .line 768
    if-eqz v9, :cond_3

    .line 769
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/mail/ui/bj;->cW(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->isLast()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 772
    sget v9, Lcom/android/mail/ui/bj;->aII:I

    .line 787
    :goto_2
    iget-object v10, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v11, v5}, Lcom/android/mail/ui/ConversationViewState;->h(Lcom/android/mail/providers/Message;)Z

    move-result v12

    invoke-virtual {v10, v5, v12}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;Z)V

    .line 788
    iget-object v10, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v10, v5, v9}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;I)V

    .line 794
    iget-object v12, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    iget-boolean v10, v5, Lcom/android/mail/browse/ConversationMessage;->aza:Z

    if-eqz v10, :cond_7

    invoke-virtual {v11, v5}, Lcom/android/mail/ui/ConversationViewState;->g(Lcom/android/mail/providers/Message;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v12, v5, v10}, Lcom/android/mail/ui/ConversationViewState;->a(Lcom/android/mail/providers/Message;Z)V

    .line 801
    invoke-static {v9}, Lcom/android/mail/ui/bj;->cW(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 804
    if-gez v6, :cond_d

    move v1, v8

    .line 812
    :goto_4
    invoke-virtual {v5}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mail/ui/ConversationViewFragment;->cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-object v4, v5

    move v6, v1

    move v1, v3

    move v3, v8

    .line 813
    goto :goto_0

    .line 762
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 774
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    .line 778
    :cond_3
    iget-boolean v9, v5, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    if-nez v9, :cond_4

    iget-boolean v9, v5, Lcom/android/mail/browse/ConversationMessage;->aza:Z

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->isLast()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 779
    :cond_4
    sget v9, Lcom/android/mail/ui/bj;->aII:I

    goto :goto_2

    .line 780
    :cond_5
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->isFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 781
    sget v9, Lcom/android/mail/ui/bj;->aIJ:I

    goto :goto_2

    .line 783
    :cond_6
    sget v9, Lcom/android/mail/ui/bj;->aIK:I

    .line 784
    invoke-virtual {v5}, Lcom/android/mail/browse/ConversationMessage;->uV()Z

    move-result v10

    or-int/2addr v0, v10

    goto :goto_2

    .line 794
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 817
    :cond_8
    if-ltz v6, :cond_9

    .line 818
    sub-int v10, v8, v6

    const/4 v12, 0x1

    if-ne v10, v12, :cond_a

    .line 820
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/mail/ui/ConversationViewFragment;->b(Lcom/android/mail/browse/ConversationMessage;ZZ)V

    .line 824
    :goto_5
    const/4 v0, 0x0

    .line 825
    const/4 v4, 0x0

    .line 826
    const/4 v6, -0x1

    .line 829
    :cond_9
    invoke-static {v9}, Lcom/android/mail/ui/bj;->cV(I)Z

    move-result v9

    invoke-direct {p0, v5, v9, v3}, Lcom/android/mail/ui/ConversationViewFragment;->b(Lcom/android/mail/browse/ConversationMessage;ZZ)V

    move v3, v8

    .line 830
    goto/16 :goto_0

    .line 822
    :cond_a
    add-int/lit8 v4, v8, -0x1

    iget-object v10, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v10, v6, v4, v0}, Lcom/android/mail/browse/aa;->c(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cU(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v10, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v10, v0}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    invoke-virtual {v4, v6, v0}, Lcom/android/mail/ui/cg;->R(II)V

    goto :goto_5

    .line 832
    :cond_b
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->qK()Lcom/android/mail/browse/ae;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/ae;)I

    move-result v0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cU(I)I

    move-result v1

    .line 836
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-nez v7, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 838
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->wZ()Z

    move-result v8

    .line 841
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2, v1}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Conversation;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationWebView;->qY()I

    move-result v4

    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHW:I

    invoke-virtual {v5, v6}, Lcom/android/mail/browse/ConversationWebView;->cf(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v6}, Lcom/android/mail/providers/Settings;->vI()Z

    move-result v7

    move v6, p2

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/android/mail/ui/cg;->a(ILjava/lang/String;Ljava/lang/String;IIZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 836
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    move v1, v6

    goto/16 :goto_4
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 458
    const v0, 0x7f040062

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 459
    return-void
.end method

.method public final a(Lcom/android/mail/browse/aC;Lcom/android/mail/browse/aC;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/aC;",
            "Lcom/android/mail/browse/aC;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1554
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1555
    new-instance v2, Lcom/android/mail/ui/bb;

    invoke-direct {v2, p0, v5}, Lcom/android/mail/ui/bb;-><init>(Lcom/android/mail/ui/ConversationViewFragment;B)V

    const/4 v0, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v3, v1}, Lcom/android/mail/ui/ConversationViewState;->j(Lcom/android/mail/providers/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v6, "conversation diff: found new msg: %s"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v1}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mail/ui/ConversationViewFragment;->cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/mail/providers/Account;->bI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v6, "found message from self: %s"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    aput-object v1, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget v1, v2, Lcom/android/mail/ui/bb;->aIp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/mail/ui/bb;->aIp:I

    goto :goto_0

    :cond_2
    iget v1, v2, Lcom/android/mail/ui/bb;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/mail/ui/bb;->count:I

    goto :goto_0

    .line 1557
    :cond_3
    iget v0, v2, Lcom/android/mail/ui/bb;->count:I

    if-lez v0, :cond_4

    .line 1561
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: conversation updated, holding cursor for new incoming message (%s)"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1563
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHO:Lcom/android/mail/ui/ActionableToastBar;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHP:Lcom/android/mail/ui/ab;

    iget-object v3, v2, Lcom/android/mail/ui/bb;->aIi:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11000d

    iget v7, v2, Lcom/android/mail/ui/bb;->count:I

    new-array v8, v4, [Ljava/lang/Object;

    iget v2, v2, Lcom/android/mail/ui/bb;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090156

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/ui/ActionableToastBar;->a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V

    .line 1606
    :goto_1
    return-void

    .line 1567
    :cond_4
    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->ql()I

    move-result v1

    .line 1568
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->ql()I

    move-result v0

    if-eq v0, v1, :cond_8

    move v0, v4

    .line 1570
    :goto_2
    if-nez v0, :cond_d

    .line 1571
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v5

    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mail/browse/ConversationMessage;->f(Lcom/android/mail/providers/Message;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v7, v3, v2}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/ConversationMessage;Ljava/util/List;)V

    sget-object v7, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v8, "msg #%d (%d): detected field(s) change. sendingState=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-wide v10, v3, Lcom/android/mail/browse/ConversationMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    iget v10, v3, Lcom/android/mail/browse/ConversationMessage;->ayZ:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    iget-object v7, v3, Lcom/android/mail/browse/ConversationMessage;->aBg:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/mail/browse/ConversationMessage;->aBg:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v3, Lcom/android/mail/browse/ConversationMessage;->aBh:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/mail/browse/ConversationMessage;->aBh:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {v3}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v7, "msg #%d (%d): detected body change"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget-wide v10, v3, Lcom/android/mail/browse/ConversationMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_8
    move v0, v5

    .line 1568
    goto/16 :goto_2

    .line 1571
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/ConversationContainer;->j(Ljava/util/List;)V

    move v0, v4

    :goto_4
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v2}, Lcom/android/mail/browse/aa;->qH()Lcom/android/mail/browse/ab;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/mail/browse/ab;->qs()V

    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v2, "javascript:replaceMessageBodies([%s]);"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v6, ","

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    move v0, v4

    .line 1572
    :cond_b
    if-eqz v0, :cond_c

    .line 1573
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: processed update(s) in place (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 1575
    :cond_c
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: uninteresting update, ignoring this conversation update (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 1579
    :cond_d
    iget v0, v2, Lcom/android/mail/ui/bb;->aIp:I

    if-ne v0, v4, :cond_11

    .line 1582
    invoke-virtual {p1, v4}, Lcom/android/mail/browse/aC;->cj(I)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v4

    .line 1583
    :goto_5
    if-eqz v0, :cond_11

    .line 1584
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: update is a single new message from self (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1586
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->moveToLast()Z

    .line 1587
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v1}, Lcom/android/mail/browse/aa;->qG()Lcom/android/mail/browse/ab;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v1}, Lcom/android/mail/browse/ab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/ConversationContainer;->bS(I)V

    :goto_6
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {v2}, Lcom/android/mail/ui/cg;->reset()V

    iget-boolean v2, v0, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    invoke-direct {p0, v0, v4, v2}, Lcom/android/mail/ui/ConversationViewFragment;->b(Lcom/android/mail/browse/ConversationMessage;ZZ)V

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {v2}, Lcom/android/mail/ui/cg;->xf()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHU:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->qK()Lcom/android/mail/browse/ae;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/ab;->c(Lcom/android/mail/browse/ae;)V

    invoke-virtual {v1}, Lcom/android/mail/browse/ab;->qs()V

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v2, v1}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/V;)I

    :cond_e
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    sget v2, Lcom/android/mail/ui/bj;->aII:I

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;I)V

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v1, v0, v5}, Lcom/android/mail/ui/ConversationViewState;->a(Lcom/android/mail/providers/Message;Z)V

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oR()V

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:appendMessageHtml();"

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move v0, v5

    .line 1582
    goto :goto_5

    .line 1587
    :cond_10
    sget-object v2, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v3, "footer item not found"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    .line 1593
    :cond_11
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: conversation updated, but not due to incoming message. rendering. (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1605
    :goto_7
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->b(Lcom/android/mail/browse/aC;)V

    goto/16 :goto_1

    .line 1601
    :cond_12
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "CONV RENDER: initial render. (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1602
    const-string v0, "message cursor load finished"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->cj(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    move v0, v5

    goto/16 :goto_4
.end method

.method public final a(Lcom/android/mail/browse/ae;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 991
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oR()V

    .line 994
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p2}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    .line 995
    const-string v1, "ConvLayout"

    const-string v2, "setting HTML spacer h=%dwebPx (%dscreenPx)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 997
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v2, "javascript:setMessageHeaderSpacerHeight(\'%s\', %s);"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ae;ZI)V
    .locals 2

    .prologue
    .line 1805
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHC:I

    .line 1806
    return-void

    .line 1805
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v0}, Lcom/android/mail/providers/Settings;->vI()Z

    move-result v0

    iget-object v1, p2, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->vI()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yX()V

    .line 271
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final b(Lcom/android/mail/browse/aC;)V
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHT:Z

    .line 1614
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1618
    :goto_0
    return-void

    .line 1616
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;)V

    goto :goto_0
.end method

.method public final b(Lcom/android/mail/browse/ae;I)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1003
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oR()V

    .line 1006
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p2}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    .line 1007
    const-string v1, "ConvLayout"

    const-string v2, "setting HTML spacer expanded=%s h=%dwebPx (%dscreenPx)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1009
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v2, "javascript:setMessageBodyVisible(\'%s\', %s, %s);"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mail/ui/bj;->aII:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;I)V

    .line 1014
    return-void

    .line 1012
    :cond_0
    sget v0, Lcom/android/mail/ui/bj;->aIJ:I

    goto :goto_0
.end method

.method public final b(Lcom/android/mail/browse/af;)V
    .locals 17

    .prologue
    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v10

    .line 1082
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-nez v1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {v1}, Lcom/android/mail/ui/cg;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aCg:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move v7, v1

    :goto_1
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/af;->getStart()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/af;->getEnd()I

    move-result v12

    move v9, v1

    :goto_2
    if-gt v9, v12, :cond_7

    invoke-virtual {v10, v9}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    invoke-virtual {v10}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v1}, Lcom/android/mail/browse/aa;->qF()Lcom/android/mail/e;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/ConversationViewState;->h(Lcom/android/mail/providers/Message;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    :goto_3
    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/aa;Lcom/android/mail/e;Lcom/android/mail/browse/ConversationMessage;ZZ)Lcom/android/mail/browse/ae;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-static {v1, v13}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/aa;Lcom/android/mail/browse/ae;)Lcom/android/mail/browse/ad;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/browse/V;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/browse/V;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1, v6}, Lcom/android/mail/browse/ConversationWebView;->ch(I)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v3, v15}, Lcom/android/mail/browse/ConversationWebView;->ch(I)F

    move-result v3

    add-float/2addr v1, v3

    add-float v3, v8, v1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_8

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    move v5, v1

    move v8, v3

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    const/4 v3, 0x0

    if-nez v7, :cond_3

    iget-boolean v4, v2, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    if-eqz v4, :cond_6

    :cond_3
    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v6, v15}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;ZZII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    sget v3, Lcom/android/mail/ui/bj;->aIJ:I

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;I)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v11}, Lcom/android/mail/browse/aa;->a(Lcom/android/mail/browse/af;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v1}, Lcom/android/mail/browse/aa;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-virtual {v1}, Lcom/android/mail/ui/cg;->xf()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHU:Ljava/lang/String;

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:replaceSuperCollapsedBlock("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/mail/browse/af;->getStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationContainer;->oS()V

    goto/16 :goto_0

    :cond_8
    move v5, v1

    move v8, v3

    goto/16 :goto_4
.end method

.method public final b(Lcom/android/mail/providers/Message;)V
    .locals 3

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1020
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:unblockImages([\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {p1}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public final bV(I)V
    .locals 5

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    .line 983
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v2, "javascript:setConversationFooterSpacerHeight(%s);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public final bl(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1025
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1028
    if-nez v1, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v2

    .line 1034
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    const/4 v0, -0x1

    .line 1037
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/aC;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1038
    invoke-virtual {v2}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v4

    .line 1039
    invoke-virtual {v4}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mail/ui/ConversationViewFragment;->cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1040
    iput-boolean v6, v4, Lcom/android/mail/browse/ConversationMessage;->aBp:Z

    .line 1042
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v5, v4, v6}, Lcom/android/mail/ui/ConversationViewState;->b(Lcom/android/mail/providers/Message;Z)V

    .line 1043
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {v4}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1047
    :cond_2
    const-string v0, "javascript:unblockImages([\'%s\']);"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\',\'"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bm(Ljava/lang/String;)Lcom/android/mail/browse/ConversationMessage;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1158
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1159
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1167
    :goto_0
    return-object v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v2

    .line 1163
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1164
    goto :goto_0

    .line 1166
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {v0}, Lcom/android/mail/ui/cg;->co(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/android/mail/browse/aC;->Q(J)Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/android/mail/providers/Message;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    invoke-static {p1}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected final cU(I)I
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/aa;->cd(I)Lcom/android/mail/browse/V;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->d(Lcom/android/mail/browse/V;)I

    move-result v0

    return v0
.end method

.method public final ce(I)V
    .locals 5

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationWebView;->cg(I)I

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const-string v2, "javascript:setConversationHeaderSpacerHeight(%s);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method protected final cl(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/mail/providers/Conversation;)V
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    const v1, 0x7f0d0180

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationViewHeader;

    .line 1785
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    .line 1786
    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->f(Lcom/android/mail/providers/Conversation;)V

    .line 1789
    :cond_0
    return-void
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 15

    .prologue
    .line 289
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "IN CVF.onActivityCreated, this=%s visible=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    invoke-super/range {p0 .. p1}, Lcom/android/mail/ui/F;->onActivityCreated(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/android/mail/ui/cg;

    invoke-direct {v1, v0}, Lcom/android/mail/ui/cg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHQ:Lcom/android/mail/ui/cg;

    .line 300
    new-instance v12, Lcom/android/mail/e;

    invoke-direct {v12, v0}, Lcom/android/mail/e;-><init>(Landroid/content/Context;)V

    .line 302
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yf()Lcom/android/mail/ui/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHH:Lcom/android/mail/ui/ck;

    .line 304
    new-instance v0, Lcom/android/mail/browse/aa;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rf()Lcom/android/mail/ui/ar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rA()Lcom/android/mail/ui/aP;

    move-result-object v9

    iget-object v11, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    iget-object v13, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqT:Landroid/support/v4/e/a;

    move-object v2, p0

    move-object v4, p0

    move-object v5, p0

    move-object v7, p0

    move-object v8, p0

    move-object v10, p0

    move-object v14, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/mail/browse/aa;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/browse/m;Landroid/app/LoaderManager;Lcom/android/mail/browse/aH;Lcom/android/mail/browse/aE;Lcom/android/mail/b;Lcom/android/mail/browse/ag;Lcom/android/mail/browse/K;Lcom/android/mail/ui/aP;Lcom/android/mail/browse/aY;Ljava/util/Map;Lcom/android/mail/e;Landroid/support/v4/e/a;Landroid/view/View$OnKeyListener;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    .line 307
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/aa;)V

    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oP()Lcom/android/mail/browse/aU;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rf()Lcom/android/mail/ui/ar;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mail/ui/O;->wz()Lcom/android/mail/utils/aj;

    move-result-object v5

    move-object v1, p0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/aU;->a(Lcom/android/mail/browse/m;Ljava/util/Map;Lcom/android/mail/browse/aH;Lcom/android/mail/b;Lcom/android/mail/utils/aj;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHV:I

    .line 317
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHW:I

    .line 320
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIh:Ljava/util/Map;

    .line 321
    invoke-static {}, Lcom/android/mail/browse/at;->rn()Lcom/android/mail/browse/as;

    move-result-object v2

    .line 324
    new-instance v3, Lcom/android/mail/browse/WebViewContextMenu;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    :goto_1
    invoke-interface {v2, v5, v0, v1}, Lcom/android/mail/browse/as;->a(Lcom/android/mail/providers/Account;J)Lcom/android/mail/browse/ar;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/mail/browse/WebViewContextMenu;-><init>(Landroid/app/Activity;Lcom/android/mail/browse/ar;)V

    .line 327
    invoke-virtual {v3, p0}, Lcom/android/mail/browse/WebViewContextMenu;->a(Lcom/android/mail/browse/bh;)V

    .line 328
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/ConversationWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 331
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yX()V

    .line 343
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/aT;

    const-string v2, "showConversation"

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mail/ui/aT;-><init>(Lcom/android/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v0, v0, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    new-instance v0, Lcom/android/mail/ui/bc;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, v2, Lcom/android/mail/providers/Conversation;->azl:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mail/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 360
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHJ:I

    .line 361
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->cF()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHK:I

    goto/16 :goto_0

    .line 324
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/android/mail/ui/F;->onCreate(Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yQ()Lcom/android/mail/ui/aX;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEH:Lcom/android/mail/ui/L;

    .line 370
    if-eqz p1, :cond_0

    .line 371
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->aIg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIa:F

    .line 374
    :cond_0
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqT:Landroid/support/v4/e/a;

    .line 375
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 384
    const v0, 0x7f040063

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 385
    const v0, 0x7f0d017b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationContainer;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    .line 387
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/m;)V

    .line 389
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    const v4, 0x7f0d017d

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHM:Landroid/view/ViewGroup;

    .line 391
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHM:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHM:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/mail/ui/ConversationViewFragment;->a(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 393
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oO()V

    .line 395
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yR()V

    .line 397
    new-instance v0, Lcom/android/mail/ui/be;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/mail/ui/be;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHN:Lcom/android/mail/ui/be;

    .line 398
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/be;->az(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    const v4, 0x7f0d017c

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationWebView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    .line 403
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHR:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    const-string v5, "mail"

    invoke-virtual {v0, v4, v5}, Lcom/android/mail/browse/ConversationWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v4

    .line 415
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v5

    .line 416
    iget-object v6, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Lcom/android/mail/browse/ConversationWebView;->aE(Z)V

    .line 417
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHY:Z

    .line 418
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/ConversationWebView;->aF(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEH:Lcom/android/mail/ui/L;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/ConversationWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 420
    new-instance v0, Lcom/android/mail/ui/aU;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aU;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 435
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v4, v0}, Lcom/android/mail/browse/ConversationWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 437
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 439
    const v0, 0x7f0d017e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ScrollIndicatorsView;

    .line 441
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/ScrollIndicatorsView;->a(Lcom/android/mail/browse/aM;)V

    .line 443
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/mail/utils/h;->a(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    .line 447
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, v4, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 451
    :cond_0
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    .line 452
    iput-boolean v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aIb:Z

    .line 454
    return-object v3

    :cond_1
    move v0, v2

    .line 416
    goto :goto_0

    :cond_2
    move v0, v2

    .line 417
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    invoke-super {p0}, Lcom/android/mail/ui/F;->onDestroyView()V

    .line 491
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->a(Lcom/android/mail/browse/aa;)V

    .line 492
    iput-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqX:Lcom/android/mail/browse/aa;

    .line 493
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yT()V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    .line 495
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1199
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHI:Landroid/view/View;

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHI:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 1204
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHI:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    .line 1205
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHI:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v1

    .line 1206
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    move v4, v0

    .line 1207
    :goto_0
    if-nez v1, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    const/16 v0, 0x16

    if-ne p2, v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 1208
    :goto_1
    invoke-static {p2, v1}, Lcom/android/mail/utils/C;->m(IZ)Z

    move-result v6

    .line 1209
    const/16 v1, 0x13

    if-ne p2, v1, :cond_6

    const/4 v1, 0x1

    move v3, v1

    .line 1210
    :goto_2
    const/16 v1, 0x14

    if-ne p2, v1, :cond_7

    const/4 v1, 0x1

    .line 1215
    :goto_3
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHH:Lcom/android/mail/ui/ck;

    invoke-interface {v2}, Lcom/android/mail/ui/ck;->zB()Z

    move-result v7

    .line 1216
    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    const v2, 0x7f0d017d

    if-eq v5, v2, :cond_3

    const v2, 0x7f0d014f

    if-eq v5, v2, :cond_3

    const v2, 0x7f0d0219

    if-eq v5, v2, :cond_3

    const v2, 0x7f0d0200

    if-eq v5, v2, :cond_3

    const v2, 0x7f0d012b

    if-ne v5, v2, :cond_8

    :cond_3
    const/4 v2, 0x1

    .line 1217
    :goto_4
    iget-object v8, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHH:Lcom/android/mail/ui/ck;

    invoke-interface {v8, p3, v2}, Lcom/android/mail/ui/ck;->a(Landroid/view/KeyEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1218
    const/4 v0, 0x1

    .line 1271
    :goto_5
    return v0

    .line 1206
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 1207
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1209
    :cond_6
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 1210
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1216
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 1222
    :cond_9
    if-nez v0, :cond_a

    if-eqz v6, :cond_f

    :cond_a
    if-eqz v7, :cond_e

    const v2, 0x7f0d017d

    if-eq v5, v2, :cond_d

    const v2, 0x7f0d014f

    if-eq v5, v2, :cond_d

    const v2, 0x7f0d0219

    if-eq v5, v2, :cond_d

    const v2, 0x7f0d0200

    if-eq v5, v2, :cond_d

    const v2, 0x7f0d0147

    if-ne v5, v2, :cond_b

    if-nez v6, :cond_d

    :cond_b
    const v2, 0x7f0d012b

    if-ne v5, v2, :cond_c

    if-nez v0, :cond_d

    :cond_c
    const v0, 0x7f0d012d

    if-ne v5, v0, :cond_e

    if-eqz v6, :cond_e

    :cond_d
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_f

    .line 1224
    const/4 v0, 0x1

    goto :goto_5

    .line 1222
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 1225
    :cond_f
    if-nez v3, :cond_10

    if-eqz v1, :cond_17

    .line 1227
    :cond_10
    const v0, 0x7f0d017d

    if-ne v5, v0, :cond_11

    .line 1228
    const/4 v0, 0x1

    goto :goto_5

    .line 1233
    :cond_11
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHI:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/android/mail/browse/ConversationContainer;->h(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_15

    .line 1236
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHJ:I

    if-le v2, v3, :cond_14

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHJ:I

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    :cond_12
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1253
    :cond_13
    :goto_8
    const/4 v0, 0x1

    goto :goto_5

    .line 1236
    :cond_14
    const/4 v2, 0x1

    aget v2, v1, v2

    iget v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHK:I

    if-ge v2, v3, :cond_12

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v1, v1, v4

    iget v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHK:I

    sub-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    goto :goto_7

    .line 1237
    :cond_15
    if-nez v4, :cond_13

    .line 1239
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->getScrollY()I

    move-result v0

    .line 1240
    if-eqz v3, :cond_16

    if-lez v0, :cond_16

    .line 1241
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    goto :goto_8

    .line 1243
    :cond_16
    if-eqz v1, :cond_13

    .line 1244
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationWebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1246
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 1247
    if-ge v0, v1, :cond_13

    .line 1248
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v3, 0x0

    sub-int v0, v1, v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    goto :goto_8

    .line 1257
    :cond_17
    const/4 v0, 0x4

    if-ne p2, v0, :cond_19

    const v0, 0x7f0d017d

    if-eq v5, v0, :cond_19

    .line 1258
    if-eqz v4, :cond_18

    .line 1259
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHM:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1261
    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1262
    :cond_19
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1b

    const v0, 0x7f0d017d

    if-ne v5, v0, :cond_1b

    .line 1264
    if-eqz v4, :cond_1a

    .line 1265
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/ConversationWebView;->scrollTo(II)V

    .line 1266
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->oS()V

    .line 1268
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1271
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_5
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1794
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1796
    :goto_0
    if-eqz v0, :cond_0

    .line 1797
    iput-boolean v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHT:Z

    .line 1798
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/ConversationContainer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;)V

    .line 1801
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1794
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/android/mail/ui/F;->onPause()V

    .line 483
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->onPause()V

    .line 486
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/android/mail/ui/F;->onResume()V

    .line 475
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->onResume()V

    .line 478
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/android/mail/ui/F;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 501
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->aIg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yS()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 502
    return-void
.end method

.method protected final wO()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 536
    invoke-super {p0}, Lcom/android/mail/ui/F;->wO()V

    .line 538
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    .line 539
    if-nez v0, :cond_0

    .line 540
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "ignoring markUnread for conv=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v3, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 551
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    if-nez v1, :cond_1

    .line 545
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v1, "ignoring markUnread for conv with no view state (%d)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-wide v4, v3, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 549
    :cond_1
    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationViewState;->zd()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEL:Lcom/android/mail/ui/ConversationViewState;

    invoke-virtual {v3}, Lcom/android/mail/ui/ConversationViewState;->zc()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mail/ui/aP;->a(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    goto :goto_0
.end method

.method public final wP()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 555
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v6

    .line 556
    sget-object v0, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v2, "ConversationViewFragment#onUserVisibleHintChanged(), userVisible = %b"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 559
    if-nez v6, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHN:Lcom/android/mail/ui/be;

    invoke-virtual {v0}, Lcom/android/mail/ui/be;->zb()V

    .line 593
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->alx:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/ConversationWebView;->aF(Z)V

    .line 596
    :cond_1
    return-void

    .line 561
    :cond_2
    iget-boolean v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHS:Z

    if-eqz v0, :cond_0

    .line 562
    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/aP;->qC()Z

    move-result v0

    .line 571
    :goto_1
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 572
    sget-object v3, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v5, "Fragment is now user-visible, onConversationSeen: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v3, v5, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    if-nez v0, :cond_8

    .line 574
    const-string v0, "preloaded"

    .line 576
    :goto_2
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->qE()V

    move-object v2, v0

    .line 585
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 588
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "pager_swipe"

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->wV()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 568
    goto :goto_1

    .line 577
    :cond_5
    iget v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHX:I

    if-eqz v3, :cond_7

    move v3, v1

    :goto_4
    if-eqz v3, :cond_3

    .line 578
    sget-object v3, Lcom/android/mail/ui/ConversationViewFragment;->mW:Ljava/lang/String;

    const-string v5, "Fragment is now user-visible, showing conversation: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v3, v5, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 579
    if-nez v0, :cond_6

    .line 580
    const-string v2, "load_deferred"

    .line 582
    :cond_6
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->yU()V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 577
    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_2
.end method

.method public final wT()Z
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x1

    return v0
.end method

.method public final wY()V
    .locals 1

    .prologue
    .line 1072
    invoke-super {p0}, Lcom/android/mail/ui/F;->wY()V

    .line 1073
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationViewFragment;->a(Lcom/android/mail/browse/aC;)V

    .line 1077
    :cond_0
    return-void
.end method

.method protected final xa()Z
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x1

    return v0
.end method

.method protected final xb()V
    .locals 5

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->rB()Lcom/android/mail/browse/aC;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->aqQ:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment;->aEG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Conversation;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Lcom/android/mail/browse/aC;Ljava/util/Map;Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method protected final xc()V
    .locals 3

    .prologue
    .line 1824
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->qK()Lcom/android/mail/browse/ae;

    move-result-object v0

    .line 1825
    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 1827
    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 1831
    :cond_0
    return-void
.end method

.method protected final xd()V
    .locals 3

    .prologue
    .line 1835
    invoke-direct {p0}, Lcom/android/mail/ui/ConversationViewFragment;->qK()Lcom/android/mail/browse/ae;

    move-result-object v0

    .line 1836
    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 1838
    if-eqz v0, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {v1, v2, v0}, Lcom/android/mail/compose/g;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    .line 1842
    :cond_0
    return-void
.end method

.method protected yQ()Lcom/android/mail/ui/aX;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/android/mail/ui/aX;

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/aX;-><init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/providers/Account;)V

    return-object v0
.end method

.method protected yR()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHL:Lcom/android/mail/browse/ConversationContainer;

    const v1, 0x7f0d0178

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ActionableToastBar;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHO:Lcom/android/mail/ui/ActionableToastBar;

    .line 464
    new-instance v0, Lcom/android/mail/ui/aV;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aV;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment;->aHP:Lcom/android/mail/ui/ab;

    .line 470
    return-void
.end method

.method protected yW()V
    .locals 4

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationViewFragment;->wS()Lcom/android/mail/ui/K;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 659
    return-void
.end method
