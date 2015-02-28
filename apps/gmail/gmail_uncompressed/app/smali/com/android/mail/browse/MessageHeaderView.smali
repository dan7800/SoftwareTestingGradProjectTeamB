.class public Lcom/android/mail/browse/MessageHeaderView;
.super Lcom/android/mail/browse/aU;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/mail/browse/q;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private BI:Landroid/view/View;

.field private YZ:Ljava/lang/String;

.field private alu:Lcom/android/mail/browse/m;

.field private aqL:Lcom/android/mail/b;

.field private aqQ:Ljava/util/Map;
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

.field private aqT:Landroid/support/v4/e/a;

.field private aqZ:Lcom/android/mail/browse/ConversationMessage;

.field private arV:Landroid/widget/PopupMenu;

.field private asA:Landroid/view/ViewGroup;

.field private asB:Landroid/view/ViewGroup;

.field private asC:Lcom/android/mail/browse/SpamWarningView;

.field private asD:Landroid/widget/TextView;

.field private asE:Lcom/android/mail/browse/MessageInviteView;

.field private asF:Landroid/view/View;

.field private asG:Landroid/view/View;

.field private asH:Landroid/view/View;

.field private asI:Landroid/widget/TextView;

.field private asJ:Landroid/view/View;

.field private asK:Landroid/view/View;

.field private asL:Landroid/view/View;

.field private final asM:Lcom/android/mail/browse/aj;

.field private asN:[Ljava/lang/String;

.field private asO:[Ljava/lang/String;

.field private asP:[Ljava/lang/String;

.field private asQ:[Ljava/lang/String;

.field private asR:[Ljava/lang/String;

.field private asS:Z

.field private asT:I

.field private asU:Lcom/android/emailcommon/mail/Address;

.field private asV:Z

.field private asW:Z

.field private asX:Z

.field private asY:Z

.field private asZ:Landroid/content/AsyncQueryHandler;

.field private asg:Lcom/android/mail/browse/ae;

.field private asp:Lcom/android/mail/browse/aH;

.field private asq:Landroid/view/View;

.field private asr:Landroid/view/ViewGroup;

.field private ass:Landroid/view/View;

.field private ast:Landroid/view/View;

.field private asu:Landroid/widget/TextView;

.field private asv:Landroid/widget/TextView;

.field private asw:Landroid/widget/TextView;

.field private asx:Landroid/view/View;

.field private asy:Landroid/widget/TextView;

.field private asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

.field private ata:Z

.field private final atb:Ljava/lang/String;

.field private final atc:Landroid/database/DataSetObserver;

.field private atd:Z

.field private ate:Lcom/android/mail/utils/aj;

.field private atf:Z

.field private atg:Lcom/android/mail/h/a;

.field private final ath:I

.field private final ati:I

.field private final atj:I

.field private atk:Z

.field private final wC:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/MessageHeaderView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/browse/MessageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/browse/aU;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    .line 170
    new-instance v0, Lcom/android/mail/browse/aF;

    invoke-direct {v0, p0}, Lcom/android/mail/browse/aF;-><init>(Lcom/android/mail/browse/MessageHeaderView;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atc:Landroid/database/DataSetObserver;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atd:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageHeaderView;->atf:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageHeaderView;->atk:Z

    .line 234
    new-instance v0, Lcom/android/mail/browse/aj;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/browse/aj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asM:Lcom/android/mail/browse/aj;

    .line 235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->wC:Landroid/view/LayoutInflater;

    .line 236
    const v0, 0x7f0900f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atb:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/MessageHeaderView;->ath:I

    .line 240
    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/MessageHeaderView;->ati:I

    .line 241
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atj:I

    .line 242
    return-void
.end method

.method private static varargs a(I[Landroid/view/View;)V
    .locals 3

    .prologue
    .line 584
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 585
    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "II[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/utils/aj;",
            "Landroid/support/v4/e/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1292
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    array-length v1, p3

    new-array v5, v1, [Ljava/lang/String;

    .line 1296
    const/4 v1, 0x0

    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_8

    .line 1297
    aget-object v2, p3, v1

    invoke-static {p6, v2}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 1298
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1302
    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/android/mail/utils/aj;->cM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 1305
    :goto_2
    if-eqz v4, :cond_2

    .line 1309
    const-string v2, ""

    .line 1310
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1313
    const v3, 0x7f09017a

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1320
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1321
    :cond_3
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1296
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1302
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1315
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090179

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1325
    :cond_6
    if-eqz p4, :cond_7

    .line 1326
    const v4, 0x7f09011d

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, p4}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    goto :goto_4

    .line 1332
    :cond_7
    const v4, 0x7f09011c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {p0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    goto :goto_4

    .line 1339
    :cond_8
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    invoke-virtual {p5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1341
    const-string v2, "\n"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    invoke-static {v1, p7}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/widget/TextView;Lcom/android/mail/providers/Account;)V

    .line 1343
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/widget/TextView;Lcom/android/mail/providers/Account;)V
    .locals 9

    .prologue
    .line 1347
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 1348
    invoke-virtual {p0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v2

    .line 1350
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1351
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1352
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1353
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1354
    new-instance v7, Lcom/android/mail/text/EmailAddressSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, p1, v4}, Lcom/android/mail/text/EmailAddressSpan;-><init>(Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 1355
    const/16 v4, 0x21

    invoke-interface {v0, v7, v5, v6, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    :cond_0
    return-void
.end method

.method private aC(Z)V
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MessageHeaderView;->setActivated(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ae;->aC(Z)V

    .line 598
    :cond_0
    return-void
.end method

.method private aH(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-nez v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/android/mail/f/b;

    invoke-direct {v0}, Lcom/android/mail/f/b;-><init>()V

    .line 396
    invoke-static {}, Lcom/android/mail/f/b;->td()V

    .line 398
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asX:Z

    .line 399
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asY:Z

    .line 401
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 403
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v4

    .line 404
    if-eqz v4, :cond_7

    iget-object v0, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aCg:I

    if-nez v0, :cond_7

    move v0, v1

    .line 407
    :goto_1
    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationMessage;->vD()Z

    move-result v3

    .line 409
    if-nez v3, :cond_8

    move-object v0, p0

    :goto_2
    move-object v3, v0

    move v0, v2

    .line 417
    :goto_3
    iput-boolean v0, v3, Lcom/android/mail/browse/MessageHeaderView;->asW:Z

    .line 420
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->aC(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asN:[Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vu()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asO:[Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vw()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asP:[Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vy()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asQ:[Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vA()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asR:[Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBk:I

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    .line 434
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget v0, v0, Lcom/android/mail/browse/ConversationMessage;->ayZ:I

    iput v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asT:I

    .line 443
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqQ:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    .line 449
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rG()V

    .line 452
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asT:I

    if-eqz v0, :cond_b

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationMessage;->abh:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/browse/MessageHeaderView;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_5
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->YZ:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asu:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->dW()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rE()V

    .line 461
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rF()V

    .line 462
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->YZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asM:Lcom/android/mail/browse/aj;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/aj;->r(Ljava/lang/CharSequence;)V

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v2}, Lcom/android/mail/browse/ae;->qO()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_5
    if-eqz p1, :cond_d

    .line 471
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->ov()V

    .line 480
    :cond_6
    :goto_7
    invoke-static {}, Lcom/android/mail/f/b;->te()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 404
    goto/16 :goto_1

    .line 412
    :cond_8
    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    invoke-interface {v3}, Lcom/android/mail/browse/aH;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    move-object v3, p0

    .line 414
    goto/16 :goto_3

    .line 417
    :cond_9
    if-nez v0, :cond_e

    move v0, v1

    move-object v3, p0

    goto/16 :goto_3

    .line 445
    :cond_a
    const-string v0, ""

    goto :goto_4

    .line 455
    :cond_b
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationMessage;->abh:Ljava/lang/String;

    goto :goto_5

    .line 457
    :cond_c
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 473
    :cond_d
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rH()V

    .line 474
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ata:Z

    if-nez v0, :cond_6

    .line 475
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->atc:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Lcom/android/mail/b;->a(Landroid/database/DataSetObserver;)V

    .line 476
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageHeaderView;->ata:Z

    goto :goto_7

    :cond_e
    move-object v0, p0

    goto/16 :goto_2
.end method

.method private aJ(Z)V
    .locals 17

    .prologue
    .line 1053
    if-eqz p1, :cond_3

    .line 1054
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->wC:Landroid/view/LayoutInflater;

    const v2, 0x7f040058

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    move v11, v1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asY:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v5, v2, Lcom/android/mail/browse/ConversationMessage;->aBw:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mail/browse/MessageHeaderView;->aqQ:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mail/browse/MessageHeaderView;->ate:Lcom/android/mail/utils/aj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mail/browse/MessageHeaderView;->asN:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mail/browse/MessageHeaderView;->asR:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mail/browse/MessageHeaderView;->asO:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mail/browse/MessageHeaderView;->asP:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mail/browse/MessageHeaderView;->asQ:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v2}, Lcom/android/mail/browse/ae;->qQ()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/mail/browse/MessageHeaderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v10

    const v2, 0x7f0d0152

    const v3, 0x7f0d0153

    invoke-static/range {v1 .. v10}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    const v2, 0x7f0d0154

    const v3, 0x7f0d0155

    move-object v4, v12

    invoke-static/range {v1 .. v10}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    const v2, 0x7f0d0156

    const v3, 0x7f0d0157

    move-object v4, v13

    invoke-static/range {v1 .. v10}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    const v2, 0x7f0d0158

    const v3, 0x7f0d0159

    move-object v4, v14

    invoke-static/range {v1 .. v10}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    const v2, 0x7f0d015a

    const v3, 0x7f0d015b

    move-object v4, v15

    invoke-static/range {v1 .. v10}, Lcom/android/mail/browse/MessageHeaderView;->a(Landroid/content/res/Resources;II[Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;Lcom/android/mail/providers/Account;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    const v1, 0x7f0d015c

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0d015d

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asY:Z

    :cond_0
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asA:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asx:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v1, :cond_2

    .line 1060
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    move/from16 v0, p1

    iput-boolean v0, v1, Lcom/android/mail/browse/ae;->arb:Z

    .line 1062
    :cond_2
    return-void

    .line 1056
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mail/browse/MessageHeaderView;->rK()V

    goto :goto_1

    :cond_4
    move v11, v1

    goto/16 :goto_0
.end method

.method private aK(Z)V
    .locals 2

    .prologue
    .line 1149
    if-eqz p1, :cond_0

    .line 1151
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rN()V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1157
    if-nez p1, :cond_1

    .line 1159
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rC()V

    .line 1161
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rH()V

    return-void
.end method

.method private static bk(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3c

    const/16 v7, 0x3b

    const/16 v6, 0x26

    const/4 v5, -0x1

    .line 1369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const/4 v0, 0x0

    .line 1450
    :goto_0
    return-object v0

    .line 1373
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1375
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1378
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_6

    .line 1380
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1381
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1383
    :cond_2
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 1384
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1385
    if-eq v0, v5, :cond_6

    .line 1386
    :cond_3
    if-ne v0, v8, :cond_7

    .line 1393
    :cond_4
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v5, :cond_5

    .line 1394
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_4

    .line 1395
    :cond_5
    if-ne v0, v5, :cond_1

    .line 1450
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1403
    :cond_7
    if-ne v0, v6, :cond_11

    .line 1405
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    :goto_3
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v3

    if-eq v3, v5, :cond_8

    .line 1408
    if-eq v3, v7, :cond_8

    .line 1409
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    sget-object v2, Lcom/android/mail/browse/MessageHeaderView;->mW:Ljava/lang/String;

    const-string v3, "Really? IOException while reading a freaking string?!? "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1414
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    const-string v4, "nbsp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1416
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1436
    :cond_9
    :goto_4
    if-eq v3, v5, :cond_6

    goto :goto_1

    .line 1417
    :cond_a
    const-string v4, "lt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1418
    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1419
    :cond_b
    const-string v4, "gt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1420
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1421
    :cond_c
    const-string v4, "amp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1422
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1423
    :cond_d
    const-string v4, "quot"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1424
    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1425
    :cond_e
    const-string v4, "apos"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "#39"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1426
    :cond_f
    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1429
    :cond_10
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    if-ne v3, v7, :cond_9

    .line 1431
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1443
    :cond_11
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private ck(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1065
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1066
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rK()V

    .line 1067
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rO()V

    .line 1068
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rM()V

    .line 1069
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rL()V

    .line 1070
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asr:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1094
    :goto_0
    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    iget-boolean v0, v0, Lcom/android/mail/browse/ae;->arb:Z

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->aJ(Z)V

    .line 1073
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationMessage;->aBt:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rO()V

    .line 1078
    :goto_1
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asW:Z

    if-eqz v0, :cond_5

    .line 1079
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1080
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->aK(Z)V

    .line 1087
    :goto_2
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->vp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f040059

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageInviteView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asA:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageInviteView;->d(Lcom/android/mail/providers/Message;)V

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageInviteView;->setVisibility(I)V

    .line 1092
    :goto_3
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asM:Lcom/android/mail/browse/aj;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/SpamWarningView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asA:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/SpamWarningView;->a(Lcom/android/mail/providers/Message;Lcom/android/emailcommon/mail/Address;)V

    goto :goto_1

    .line 1082
    :cond_4
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rN()V

    goto :goto_2

    .line 1085
    :cond_5
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rM()V

    goto :goto_2

    .line 1090
    :cond_6
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rL()V

    goto :goto_3
.end method

.method private dW()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 525
    iget v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asT:I

    packed-switch v0, :pswitch_data_0

    .line 535
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/browse/aR;->am(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    .line 529
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    if-nez v2, :cond_2

    const-string v0, ""

    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 525
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static n(Landroid/view/View;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 697
    invoke-static {}, Lcom/android/mail/utils/ag;->Bf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 702
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    return-void

    .line 700
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private o(Landroid/view/View;I)Z
    .locals 9

    .prologue
    const v4, 0x7f0d0169

    const v8, 0x7f0d0147

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 897
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    if-nez v0, :cond_1

    .line 898
    sget-object v0, Lcom/android/mail/browse/MessageHeaderView;->mW:Ljava/lang/String;

    const-string v1, "ignoring message header tap on unbound view"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 972
    :cond_0
    :goto_0
    return v5

    .line 904
    :cond_1
    if-ne p2, v4, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/g;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    move v5, v6

    .line 967
    :goto_1
    if-eqz v5, :cond_0

    if-eq p2, v8, :cond_0

    .line 968
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "menu_item"

    const-string v2, "message_header"

    invoke-interface {v0, v1, p2, v2}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_2
    const v0, 0x7f0d016a

    if-ne p2, v0, :cond_3

    .line 907
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/g;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    move v5, v6

    goto :goto_1

    .line 908
    :cond_3
    const v0, 0x7f0d016b

    if-ne p2, v0, :cond_4

    .line 909
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/g;->d(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    move v5, v6

    goto :goto_1

    .line 910
    :cond_4
    const v0, 0x7f0d029f

    if-ne p2, v0, :cond_5

    .line 911
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/ConversationMessage;->ay(Z)V

    move v5, v6

    goto :goto_1

    .line 912
    :cond_5
    const v0, 0x7f0d028e

    if-ne p2, v0, :cond_6

    .line 913
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/ConversationMessage;->ay(Z)V

    move v5, v6

    goto :goto_1

    .line 914
    :cond_6
    const v0, 0x7f0d0292

    if-ne p2, v0, :cond_8

    .line 915
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qS()Lcom/android/mail/browse/aa;

    move-result-object v0

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/mail/ui/F;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v2, v4, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->aqQ:Ljava/util/Map;

    invoke-virtual {v4, v7}, Lcom/android/mail/providers/Conversation;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Lcom/android/mail/providers/Message;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V

    move v5, v6

    goto/16 :goto_1

    .line 916
    :cond_8
    const v0, 0x7f0d02a0

    if-ne p2, v0, :cond_9

    .line 917
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-interface {v4, v5}, Lcom/android/mail/browse/aH;->c(Lcom/android/mail/providers/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;Ljava/lang/String;)V

    move v5, v6

    .line 920
    goto/16 :goto_1

    :cond_9
    const v0, 0x7f0d02a1

    if-ne p2, v0, :cond_a

    .line 921
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-interface {v4, v5}, Lcom/android/mail/browse/aH;->c(Lcom/android/mail/providers/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;Ljava/lang/String;)V

    move v5, v6

    .line 924
    goto/16 :goto_1

    :cond_a
    const v0, 0x7f0d0168

    if-ne p2, v0, :cond_b

    .line 925
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-static {v0, v1, v2}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V

    move v5, v6

    goto/16 :goto_1

    .line 926
    :cond_b
    if-ne p2, v8, :cond_12

    .line 927
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    if-nez v0, :cond_c

    .line 928
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    .line 929
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 931
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 933
    :cond_c
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aBR:I

    if-ne v0, v6, :cond_d

    move v0, v6

    .line 935
    :goto_2
    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 936
    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 937
    const v1, 0x7f0d016a

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_e

    move v0, v6

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 938
    const v0, 0x7f0d0292

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v3, v0, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    .line 942
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_23

    .line 944
    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uL()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v6

    .line 946
    :goto_4
    const v1, 0x7f0d029f

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_10

    if-nez v3, :cond_10

    move v1, v6

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 947
    const v1, 0x7f0d028e

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    move v0, v6

    :goto_6
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 949
    const v0, 0x7f0d02a1

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 952
    const v0, 0x7f0d02a0

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 954
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    move v5, v6

    .line 955
    goto/16 :goto_1

    :cond_d
    move v0, v5

    .line 933
    goto :goto_2

    :cond_e
    move v0, v5

    .line 937
    goto :goto_3

    :cond_f
    move v0, v5

    .line 944
    goto :goto_4

    :cond_10
    move v1, v5

    .line 946
    goto :goto_5

    :cond_11
    move v0, v5

    .line 947
    goto :goto_6

    .line 955
    :cond_12
    const v0, 0x7f0d0170

    if-eq p2, v0, :cond_13

    const v0, 0x7f0d0171

    if-eq p2, v0, :cond_13

    const v0, 0x7f0d0151

    if-ne p2, v0, :cond_17

    .line 957
    :cond_13
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rD()I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_15

    :cond_14
    move v5, v6

    :cond_15
    invoke-direct {p0, v5}, Lcom/android/mail/browse/MessageHeaderView;->aJ(Z)V

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rC()V

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-interface {v1, v2, v5, v0}, Lcom/android/mail/browse/aH;->a(Lcom/android/mail/browse/ae;ZI)V

    :cond_16
    move v5, v6

    goto/16 :goto_1

    .line 958
    :cond_17
    const v0, 0x7f0d014f

    if-ne p2, v0, :cond_1b

    .line 959
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atd:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qp()Z

    move-result v0

    if-nez v0, :cond_18

    move v5, v6

    :cond_18
    invoke-direct {p0, v5}, Lcom/android/mail/browse/MessageHeaderView;->aC(Z)V

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atk:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asu:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->dW()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rE()V

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rF()V

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->YZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rG()V

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rD()I

    move-result v0

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ae;->ca(I)Z

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-interface {v1, v2, v0}, Lcom/android/mail/browse/aH;->b(Lcom/android/mail/browse/ae;I)V

    :cond_1a
    move v5, v6

    goto/16 :goto_1

    .line 960
    :cond_1b
    const v0, 0x7f0d0163

    if-ne p2, v0, :cond_22

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1c
    :goto_7
    move v5, v6

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-interface {v0, v1}, Lcom/android/mail/browse/aH;->b(Lcom/android/mail/providers/Message;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qN()V

    :cond_1e
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atf:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rM()V

    move v5, v6

    goto/16 :goto_1

    :cond_1f
    invoke-direct {p0, v5}, Lcom/android/mail/browse/MessageHeaderView;->aK(Z)V

    move v5, v6

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asZ:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_20

    new-instance v1, Lcom/android/mail/browse/aG;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mail/browse/aG;-><init>(Lcom/android/mail/browse/MessageHeaderView;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asZ:Landroid/content/AsyncQueryHandler;

    :cond_20
    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asZ:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationMessage;->a(Landroid/content/AsyncQueryHandler;)V

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationMessage;->vq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/browse/aH;->bl(Ljava/lang/String;)V

    :cond_21
    iput-boolean v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asW:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rC()V

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 963
    :cond_22
    sget-object v0, Lcom/android/mail/browse/MessageHeaderView;->mW:Ljava/lang/String;

    const-string v1, "unrecognized header tap: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_23
    move v0, v6

    goto/16 :goto_4

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->alu:Lcom/android/mail/browse/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->alu:Lcom/android/mail/browse/m;

    invoke-interface {v0}, Lcom/android/mail/browse/m;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qJ()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqT:Landroid/support/v4/e/a;

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qS()Lcom/android/mail/browse/aa;

    move-result-object v0

    .line 381
    :goto_0
    if-nez v0, :cond_2

    .line 382
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqT:Landroid/support/v4/e/a;

    .line 387
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqT:Landroid/support/v4/e/a;

    return-object v0

    .line 379
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :cond_2
    invoke-virtual {v0}, Lcom/android/mail/browse/aa;->qJ()Landroid/support/v4/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqT:Landroid/support/v4/e/a;

    goto :goto_1
.end method

.method private qp()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rC()V
    .locals 3

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->rD()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ae;->ca(I)Z

    .line 506
    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-interface {v1, v2, v0}, Lcom/android/mail/browse/aH;->a(Lcom/android/mail/browse/ae;I)V

    .line 509
    :cond_0
    return-void
.end method

.method private rD()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 513
    if-nez v0, :cond_0

    .line 514
    sget-object v0, Lcom/android/mail/browse/MessageHeaderView;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "Unable to measure height of detached header"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getHeight()I

    move-result v0

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asV:Z

    .line 518
    invoke-static {p0, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 519
    iput-boolean v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asV:Z

    goto :goto_0
.end method

.method private rE()V
    .locals 11

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asX:Z

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    iget-object v0, v0, Lcom/android/mail/browse/ae;->arh:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v2

    .line 551
    :goto_0
    iget-object v7, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->atb:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/mail/browse/MessageHeaderView;->asO:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/mail/browse/MessageHeaderView;->asP:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/mail/browse/MessageHeaderView;->asQ:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->aqQ:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->ate:Lcom/android/mail/utils/aj;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qJ()Landroid/support/v4/e/a;

    move-result-object v6

    new-instance v0, Lcom/android/mail/browse/aI;

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/browse/aI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/mail/utils/aj;Landroid/support/v4/e/a;)V

    invoke-virtual {v0, v8}, Lcom/android/mail/browse/aI;->i([Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/mail/browse/aI;->i([Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/android/mail/browse/aI;->j([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mail/browse/aI;->rP()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mail/browse/ae;->arh:Ljava/lang/CharSequence;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    iget-object v1, v1, Lcom/android/mail/browse/ae;->arh:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asX:Z

    .line 558
    :cond_1
    return-void

    .line 550
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private rF()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 561
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atk:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v1}, Lcom/android/mail/browse/ae;->qP()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 566
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v5}, Lcom/android/mail/browse/ae;->qP()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v6}, Lcom/android/mail/utils/ac;->a(Landroid/text/Spannable;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private rG()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 607
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atf:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0, v2}, Lcom/android/mail/browse/MessageHeaderView;->ck(I)V

    .line 609
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->ast:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 611
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asF:Landroid/view/View;

    aput-object v3, v0, v9

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    aput-object v3, v0, v10

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asG:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asH:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asL:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    aput-object v3, v0, v1

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 614
    new-array v0, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asv:Landroid/widget/TextView;

    aput-object v3, v0, v6

    invoke-static {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ass:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/mail/browse/MessageHeaderView;->n(Landroid/view/View;I)V

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0}, Lcom/android/mail/browse/ae;->qS()Lcom/android/mail/browse/aa;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_e

    .line 664
    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asq:Landroid/view/View;

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    invoke-virtual {v0, v4}, Lcom/android/mail/browse/aa;->b(Lcom/android/mail/browse/V;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :goto_2
    return-void

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 620
    iget-boolean v3, p0, Lcom/android/mail/browse/MessageHeaderView;->atk:Z

    .line 621
    if-eqz v3, :cond_1

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->ck(I)V

    .line 622
    if-eqz v3, :cond_2

    move v0, v2

    :goto_4
    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->ast:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 624
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    if-eqz v0, :cond_3

    move v0, v2

    move v3, v1

    .line 632
    :goto_5
    iget-boolean v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    if-eqz v4, :cond_4

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 633
    :goto_6
    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asF:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 634
    new-array v3, v9, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asG:Landroid/view/View;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asH:Landroid/view/View;

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 635
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asv:Landroid/widget/TextView;

    aput-object v3, v0, v2

    invoke-static {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 636
    new-array v0, v10, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asL:Landroid/view/View;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    aput-object v3, v0, v9

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 638
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ass:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/mail/browse/MessageHeaderView;->n(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 621
    goto :goto_3

    :cond_2
    move v0, v1

    .line 622
    goto :goto_4

    :cond_3
    move v0, v1

    move v3, v2

    .line 629
    goto :goto_5

    .line 632
    :cond_4
    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    if-nez v4, :cond_5

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    goto :goto_6

    :cond_5
    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->oN()Lcom/android/mail/providers/Account;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget v4, v4, Lcom/android/mail/providers/Settings;->aBR:I

    if-ne v4, v6, :cond_6

    move v5, v6

    :goto_7
    if-eqz v5, :cond_8

    move v4, v1

    :goto_8
    new-array v7, v6, [Landroid/view/View;

    iget-object v8, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    if-eqz v5, :cond_9

    move v4, v2

    :goto_9
    new-array v5, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v7, v5, v2

    invoke-static {v4, v5}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    goto :goto_6

    :cond_6
    move v5, v2

    goto :goto_7

    :cond_7
    move v5, v2

    goto :goto_7

    :cond_8
    move v4, v2

    goto :goto_8

    :cond_9
    move v4, v1

    goto :goto_9

    .line 640
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/mail/browse/MessageHeaderView;->ck(I)V

    .line 641
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->ast:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 642
    new-array v0, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    aput-object v3, v0, v6

    invoke-static {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 644
    new-array v0, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asH:Landroid/view/View;

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v3, v0, v9

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asF:Landroid/view/View;

    aput-object v3, v0, v10

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asv:Landroid/widget/TextView;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asx:Landroid/view/View;

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 648
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v0, v0, Lcom/android/mail/browse/ConversationMessage;->ayX:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_a
    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asL:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 651
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asS:Z

    if-eqz v0, :cond_c

    .line 652
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asG:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 653
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 659
    :goto_b
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ass:Landroid/view/View;

    iget v3, p0, Lcom/android/mail/browse/MessageHeaderView;->atj:I

    invoke-static {v0, v3}, Lcom/android/mail/browse/MessageHeaderView;->n(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 648
    goto :goto_a

    .line 655
    :cond_c
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asG:Landroid/view/View;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    .line 656
    new-array v0, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    aput-object v3, v0, v2

    invoke-static {v2, v0}, Lcom/android/mail/browse/MessageHeaderView;->a(I[Landroid/view/View;)V

    goto :goto_b

    :cond_d
    move v1, v2

    .line 664
    goto/16 :goto_1

    .line 667
    :cond_e
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asq:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private rH()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 831
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_2

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setImageToDefault()V

    .line 833
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 868
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090110

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 845
    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    invoke-virtual {v3, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 848
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    invoke-interface {v0, v3}, Lcom/android/mail/b;->aX(Ljava/lang/String;)Lcom/android/mail/a;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_6

    .line 850
    iget-object v4, v0, Lcom/android/mail/a;->ajO:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 851
    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    iget-object v5, v0, Lcom/android/mail/a;->ajO:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mail/browse/MessageHeaderContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 856
    :goto_2
    iget-object v4, v0, Lcom/android/mail/a;->ajQ:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_7

    .line 857
    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    iget-object v0, v0, Lcom/android/mail/a;->ajQ:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/mail/utils/c;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 864
    :goto_3
    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->atg:Lcom/android/mail/h/a;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/mail/h/a;

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/mail/h/a;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->atg:Lcom/android/mail/h/a;

    :cond_3
    new-instance v2, Lcom/android/mail/ui/cj;

    iget v4, p0, Lcom/android/mail/browse/MessageHeaderView;->ath:I

    iget v5, p0, Lcom/android/mail/browse/MessageHeaderView;->ati:I

    invoke-direct {v2, v4, v5}, Lcom/android/mail/ui/cj;-><init>(II)V

    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->atg:Lcom/android/mail/h/a;

    invoke-virtual {v4, v2, v1, v3}, Lcom/android/mail/h/a;->a(Lcom/android/mail/ui/cj;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/c;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageHeaderContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asU:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 853
    :cond_5
    iget-object v4, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    invoke-virtual {v4, v3}, Lcom/android/mail/browse/MessageHeaderContactBadge;->bj(Ljava/lang/String;)V

    goto :goto_2

    .line 861
    :cond_6
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/MessageHeaderContactBadge;->bj(Ljava/lang/String;)V

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method private rK()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1101
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asB:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asx:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    return-void
.end method

.method private rL()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asE:Lcom/android/mail/browse/MessageInviteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/MessageInviteView;->setVisibility(I)V

    .line 1112
    :cond_0
    return-void
.end method

.method private rM()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1128
    :cond_0
    return-void
.end method

.method private rN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1131
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04005a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    .line 1134
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asA:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1135
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asD:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1140
    return-void
.end method

.method private rO()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asC:Lcom/android/mail/browse/SpamWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/SpamWarningView;->setVisibility(I)V

    .line 1167
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/b;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    .line 301
    return-void
.end method

.method public final a(Lcom/android/mail/browse/aH;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    .line 305
    return-void
.end method

.method public final a(Lcom/android/mail/browse/ae;Z)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-ne v0, p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    .line 354
    invoke-direct {p0, p2}, Lcom/android/mail/browse/MessageHeaderView;->aH(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/browse/m;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView;->alu:Lcom/android/mail/browse/m;

    .line 341
    iput-object p2, p0, Lcom/android/mail/browse/MessageHeaderView;->aqQ:Ljava/util/Map;

    .line 342
    return-void
.end method

.method public final a(Lcom/android/mail/browse/m;Ljava/util/Map;Lcom/android/mail/browse/aH;Lcom/android/mail/b;Lcom/android/mail/utils/aj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/browse/aH;",
            "Lcom/android/mail/b;",
            "Lcom/android/mail/utils/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/browse/MessageHeaderView;->a(Lcom/android/mail/browse/m;Ljava/util/Map;)V

    .line 290
    iput-object p3, p0, Lcom/android/mail/browse/MessageHeaderView;->asp:Lcom/android/mail/browse/aH;

    .line 291
    iput-object p4, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    .line 292
    iput-object p5, p0, Lcom/android/mail/browse/MessageHeaderView;->ate:Lcom/android/mail/utils/aj;

    .line 293
    return-void
.end method

.method public final a(Lcom/android/mail/utils/aj;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView;->ate:Lcom/android/mail/utils/aj;

    .line 309
    return-void
.end method

.method public final aI(Z)V
    .locals 0

    .prologue
    .line 994
    iput-boolean p1, p0, Lcom/android/mail/browse/MessageHeaderView;->atf:Z

    .line 995
    return-void
.end method

.method public final c(Lcom/android/mail/browse/V;)Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/browse/ae;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->isActivated()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageHeaderView;->qp()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->aH(Z)V

    goto :goto_0
.end method

.method public final oU()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageHeaderView;->ov()V

    .line 319
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageHeaderView;->o(Landroid/view/View;I)Z

    .line 890
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-super {p0}, Lcom/android/mail/browse/aU;->onFinishInflate()V

    .line 247
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asq:Landroid/view/View;

    .line 248
    const v0, 0x7f0d014f

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asr:Landroid/view/ViewGroup;

    .line 249
    const v0, 0x7f0d016c

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ass:Landroid/view/View;

    .line 250
    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ast:Landroid/view/View;

    .line 251
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asu:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0d016f

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asv:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f0d0170

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0d0171

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asx:Landroid/view/View;

    .line 255
    const v0, 0x7f0d0172

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asy:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MessageHeaderContactBadge;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    .line 257
    iget-object v2, p0, Lcom/android/mail/browse/MessageHeaderView;->asz:Lcom/android/mail/browse/MessageHeaderContactBadge;

    const v0, 0x7f0d0166

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Lcom/android/mail/browse/MessageHeaderContactBadge;->a(Landroid/widget/QuickContactBadge;)V

    .line 259
    const v0, 0x7f0d0169

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    .line 260
    const v0, 0x7f0d016a

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    .line 261
    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asF:Landroid/view/View;

    .line 262
    const v0, 0x7f0d0147

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    .line 263
    const v0, 0x7f0d0167

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asG:Landroid/view/View;

    .line 264
    const v0, 0x7f0d0168

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asH:Landroid/view/View;

    .line 265
    const v0, 0x7f0d016d

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asI:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asL:Landroid/view/View;

    .line 267
    const v0, 0x7f0d0150

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asA:Landroid/view/ViewGroup;

    .line 269
    invoke-direct {p0, v3}, Lcom/android/mail/browse/MessageHeaderView;->aC(Z)V

    .line 271
    const/16 v0, 0x8

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asJ:Landroid/view/View;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asK:Landroid/view/View;

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asF:Landroid/view/View;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asH:Landroid/view/View;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->BI:Landroid/view/View;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asr:Landroid/view/ViewGroup;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asw:Landroid/widget/TextView;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/android/mail/browse/MessageHeaderView;->asx:Landroid/view/View;

    aput-object v3, v2, v0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->asM:Lcom/android/mail/browse/aj;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 275
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 1455
    new-instance v0, Lcom/android/mail/f/b;

    invoke-direct {v0}, Lcom/android/mail/f/b;-><init>()V

    .line 1456
    invoke-static {}, Lcom/android/mail/f/b;->td()V

    .line 1457
    invoke-super/range {p0 .. p5}, Lcom/android/mail/browse/aU;->onLayout(ZIIII)V

    .line 1458
    invoke-static {}, Lcom/android/mail/f/b;->te()V

    .line 1459
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 1463
    new-instance v0, Lcom/android/mail/f/b;

    invoke-direct {v0}, Lcom/android/mail/f/b;-><init>()V

    .line 1468
    invoke-super {p0, p1, p2}, Lcom/android/mail/browse/aU;->onMeasure(II)V

    .line 1469
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asV:Z

    if-nez v0, :cond_0

    .line 1470
    invoke-static {}, Lcom/android/mail/f/b;->te()V

    .line 1472
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->arV:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 884
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/MessageHeaderView;->o(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public final ov()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->asg:Lcom/android/mail/browse/ae;

    .line 330
    iput-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqZ:Lcom/android/mail/browse/ConversationMessage;

    .line 332
    iget-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ata:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/mail/browse/MessageHeaderView;->aqL:Lcom/android/mail/b;

    iget-object v1, p0, Lcom/android/mail/browse/MessageHeaderView;->atc:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/android/mail/b;->b(Landroid/database/DataSetObserver;)V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->ata:Z

    .line 336
    :cond_0
    return-void
.end method

.method public final rI()V
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atd:Z

    .line 999
    return-void
.end method

.method public final rJ()V
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/MessageHeaderView;->atk:Z

    .line 1034
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->ck(I)V

    .line 1035
    return-void
.end method

.method public final refresh()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/browse/MessageHeaderView;->aH(Z)V

    .line 375
    return-void
.end method
