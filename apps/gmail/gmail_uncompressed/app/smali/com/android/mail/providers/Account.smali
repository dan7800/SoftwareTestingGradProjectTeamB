.class public Lcom/android/mail/providers/Account;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final aqh:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static ayI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/mail/providers/c;",
            ">;"
        }
    .end annotation
.end field

.field private static ayJ:Lcom/android/mail/providers/c;

.field private static final mW:Ljava/lang/String;

.field static final synthetic vb:Z


# instance fields
.field private final acv:Ljava/lang/String;

.field public final ayA:Landroid/net/Uri;

.field public final ayB:I

.field public final ayC:Ljava/lang/String;

.field public final ayD:Landroid/net/Uri;

.field public final ayE:Ljava/lang/String;

.field public final ayF:I

.field public final ayG:Ljava/lang/String;

.field private transient ayH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final ayb:Ljava/lang/String;

.field private final ayc:Ljava/lang/String;

.field private ayd:Ljava/lang/String;

.field private aye:Landroid/accounts/Account;

.field public final ayf:I

.field public final ayg:I

.field public final ayh:Landroid/net/Uri;

.field public ayi:Landroid/net/Uri;

.field public ayj:Landroid/net/Uri;

.field public final ayk:Landroid/net/Uri;

.field public ayl:Ljava/lang/String;

.field public final aym:Landroid/net/Uri;

.field public final ayn:Landroid/net/Uri;

.field public final ayo:Landroid/net/Uri;

.field public final ayp:Landroid/net/Uri;

.field public final ayq:Landroid/net/Uri;

.field public final ayr:Landroid/net/Uri;

.field public final ays:I

.field public final ayt:Landroid/net/Uri;

.field public final ayu:Landroid/net/Uri;

.field public final ayv:Landroid/net/Uri;

.field public final ayw:Lcom/android/mail/providers/Settings;

.field public final ayx:Landroid/net/Uri;

.field public final ayy:Landroid/net/Uri;

.field public final ayz:Landroid/net/Uri;

.field public final color:I

.field public final mimeType:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mail/providers/Account;->vb:Z

    .line 251
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    .line 903
    new-instance v0, Lcom/android/mail/providers/a;

    invoke-direct {v0}, Lcom/android/mail/providers/a;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Account;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 972
    new-instance v0, Lcom/android/mail/providers/b;

    invoke-direct {v0}, Lcom/android/mail/providers/b;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Account;->aqh:Lcom/android/mail/c/a;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    .line 447
    const-string v1, "senderName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    .line 448
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 449
    const-string v1, "accountManagerName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    .line 451
    const-string v1, "accountId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    .line 453
    const-string v1, "accountFromAddresses"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mail/common/base/K;->gJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    .line 456
    const-string v1, "capabilities"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 458
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 459
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->ayg:I

    .line 464
    :goto_0
    const-string v1, "providerVersion"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->ayf:I

    .line 466
    const-string v1, "accountUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 467
    const-string v1, "folderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    .line 469
    const-string v1, "fullFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    .line 471
    const-string v1, "allFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    .line 473
    const-string v1, "searchUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    .line 475
    const-string v1, "expungeMessageUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    .line 477
    const-string v1, "undoUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    .line 479
    const-string v1, "accountSettingsIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    .line 481
    const-string v1, "helpIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    .line 483
    const-string v1, "sendFeedbackIntentUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    .line 485
    const-string v1, "reauthenticationUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    .line 487
    const-string v1, "syncStatus"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->ays:I

    .line 488
    const-string v1, "composeUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    .line 490
    const-string v1, "mimeType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 491
    const-string v1, "recentFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    .line 493
    const-string v1, "color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->color:I

    .line 494
    const-string v1, "defaultRecentFolderListUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    .line 496
    const-string v1, "manualSyncUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    .line 498
    const-string v1, "viewProxyUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    .line 500
    const-string v1, "accountCookieUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    .line 502
    const-string v1, "updateSettingsUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    .line 504
    const-string v1, "enableMessageTransforms"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/providers/Account;->ayB:I

    .line 506
    const-string v1, "syncAuthority"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    sget-object v1, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v2, "Unexpected empty syncAuthority from cursor"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 512
    :cond_0
    const-string v1, "quickResponseUri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    .line 514
    const-string v1, "settingsFragmentClass"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    .line 516
    const-string v1, "securityHold"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 517
    if-ltz v1, :cond_1

    const-string v0, "securityHold"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/android/mail/providers/Account;->ayF:I

    .line 519
    const-string v0, "accountSecurityUri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 521
    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    .line 523
    new-instance v0, Lcom/android/mail/providers/Settings;

    invoke-direct {v0, p1}, Lcom/android/mail/providers/Settings;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    .line 524
    return-void

    .line 461
    :cond_2
    iput v0, p0, Lcom/android/mail/providers/Account;->ayg:I

    goto/16 :goto_0

    .line 521
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayf:I

    .line 602
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayg:I

    .line 604
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    .line 605
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    .line 606
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    .line 607
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    .line 609
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    .line 610
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    .line 611
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    .line 612
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    .line 613
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    .line 614
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ays:I

    .line 616
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 618
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->color:I

    .line 620
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    .line 621
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    .line 622
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    .line 623
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    .line 624
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayB:I

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v1, "Unexpected empty syncAuthority from Parcel"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 630
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayF:I

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 635
    if-nez v0, :cond_1

    .line 636
    sget-object v0, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Unexpected null settings in Account(Parcel)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 637
    sget-object v0, Lcom/android/mail/providers/Settings;->aBM:Lcom/android/mail/providers/Settings;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    .line 641
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    .line 642
    return-void

    .line 639
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Settings;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    .line 380
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    .line 381
    const-string v0, "senderName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    .line 382
    const-string v0, "accountManagerName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    .line 390
    :goto_0
    const-string v0, "accountId"

    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    .line 391
    const-string v0, "providerVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayf:I

    .line 392
    const-string v0, "accountUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    .line 393
    const-string v0, "capabilities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayg:I

    .line 394
    const-string v0, "folderListUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    .line 396
    const-string v0, "fullFolderListUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    .line 398
    const-string v0, "allFolderListUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    .line 400
    const-string v0, "searchUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    .line 401
    const-string v0, "accountFromAddresses"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    .line 402
    const-string v0, "expungeMessageUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    .line 404
    const-string v0, "undoUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    .line 405
    const-string v0, "accountSettingsIntentUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    .line 407
    const-string v0, "helpIntentUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    .line 408
    const-string v0, "sendFeedbackIntentUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    .line 410
    const-string v0, "reauthenticationUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    .line 412
    const-string v0, "syncStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ays:I

    .line 413
    const-string v0, "composeUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    .line 414
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    .line 415
    const-string v0, "recentFolderListUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    .line 417
    const-string v0, "color"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->color:I

    .line 418
    const-string v0, "defaultRecentFolderListUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    .line 420
    const-string v0, "manualSyncUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    .line 422
    const-string v0, "viewProxyUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    .line 424
    const-string v0, "accountCookieUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    .line 426
    const-string v0, "updateSettingsUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    .line 428
    const-string v0, "enableMessageTransforms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayB:I

    .line 429
    const-string v0, "syncAuthority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    .line 430
    const-string v0, "quickResponseUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    .line 431
    const-string v0, "settingsFragmentClass"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    .line 432
    const-string v0, "securityHold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Account;->ayF:I

    .line 433
    const-string v0, "accountSecurityUri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    .line 435
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Settings;->e(Lorg/json/JSONObject;)Lcom/android/mail/providers/Settings;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_1

    .line 437
    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    .line 443
    :goto_1
    return-void

    .line 388
    :cond_0
    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    :cond_1
    sget-object v0, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "Unexpected null settings in Account(name, type, jsonAccount)"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 441
    sget-object v0, Lcom/android/mail/providers/Settings;->aBM:Lcom/android/mail/providers/Settings;

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    goto :goto_1
.end method

.method public static b(Lcom/android/mail/c/b;)[Lcom/android/mail/providers/Account;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)[",
            "Lcom/android/mail/providers/Account;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/android/mail/c/b;->getCount()I

    move-result v4

    .line 534
    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    :cond_0
    new-array v0, v0, [Lcom/android/mail/providers/Account;

    .line 546
    :goto_0
    return-object v0

    .line 539
    :cond_1
    new-array v3, v4, [Lcom/android/mail/providers/Account;

    move v1, v0

    .line 542
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    aput-object v0, v3, v1

    .line 543
    invoke-virtual {p0}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    sget-boolean v0, Lcom/android/mail/providers/Account;->vb:Z

    if-nez v0, :cond_2

    if-eq v2, v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v0, v3

    .line 546
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static bH(Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 5

    .prologue
    .line 360
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v0}, Lcom/android/mail/providers/c;->d(Lorg/json/JSONObject;)Lcom/android/mail/providers/Account;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    sget-object v1, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v2, "Could not create an account from this input: \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized ue()Lcom/android/mail/providers/c;
    .locals 5

    .prologue
    .line 325
    const-class v1, Lcom/android/mail/providers/Account;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/providers/Account;->ayI:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 326
    const-class v0, Lcom/android/mail/providers/c;

    sput-object v0, Lcom/android/mail/providers/Account;->ayI:Ljava/lang/Class;

    .line 328
    :cond_0
    sget-object v0, Lcom/android/mail/providers/Account;->ayJ:Lcom/android/mail/providers/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 330
    :try_start_1
    sget-object v0, Lcom/android/mail/providers/Account;->ayI:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/c;

    sput-object v0, Lcom/android/mail/providers/Account;->ayJ:Lcom/android/mail/providers/c;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/mail/providers/Account;->ayJ:Lcom/android/mail/providers/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    :goto_1
    :try_start_3
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t initialize account builder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 333
    new-instance v0, Lcom/android/mail/providers/c;

    invoke-direct {v0}, Lcom/android/mail/providers/c;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Account;->ayJ:Lcom/android/mail/providers/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 331
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final bI(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->uk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 854
    iget-object v0, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    const/4 v0, 0x1

    .line 859
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cy(I)Z
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/android/mail/providers/Account;->ayg:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 703
    if-ne p1, p0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 708
    goto :goto_0

    .line 711
    :cond_3
    check-cast p1, Lcom/android/mail/providers/Account;

    .line 712
    iget-object v2, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->ayg:I

    iget v3, p1, Lcom/android/mail/providers/Account;->ayg:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->ayf:I

    iget v3, p1, Lcom/android/mail/providers/Account;->ayf:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->ays:I

    iget v3, p1, Lcom/android/mail/providers/Account;->ays:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    iget v3, p1, Lcom/android/mail/providers/Account;->color:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->ayB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/android/mail/providers/Account;->ayB:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Account;->ayF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/android/mail/providers/Account;->ayF:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-static {v2, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 889
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v1, "getAccountId = %s for email %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 890
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 769
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/mail/providers/Account;->ayg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/mail/providers/Account;->ayf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget v2, p0, Lcom/android/mail/providers/Account;->ays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget v2, p0, Lcom/android/mail/providers/Account;->ayB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget v2, p0, Lcom/android/mail/providers/Account;->ayF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i(Lcom/android/mail/providers/Account;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 757
    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/mail/providers/Account;->ays:I

    iget v2, p1, Lcom/android/mail/providers/Account;->ays:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mail/providers/Account;->color:I

    iget v2, p1, Lcom/android/mail/providers/Account;->color:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->hashCode()I

    move-result v1

    iget-object v2, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v2}, Lcom/android/mail/providers/Settings;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ik()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Lcom/android/mail/providers/Account;)Z
    .locals 2

    .prologue
    .line 809
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->ud()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ud()Ljava/lang/String;
    .locals 7

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :try_start_1
    const-string v0, "name"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "type"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v0, "senderName"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "accountManagerName"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "accountId"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "providerVersion"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayf:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v0, "accountUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "capabilities"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayg:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v0, "folderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v0, "fullFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "allFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "searchUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v0, "accountFromAddresses"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v0, "expungeMessageUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v0, "undoUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v0, "accountSettingsIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v0, "helpIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v0, "sendFeedbackIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v0, "reauthenticationUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v0, "syncStatus"

    iget v2, p0, Lcom/android/mail/providers/Account;->ays:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    const-string v0, "composeUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v0, "mimeType"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v0, "recentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v0, "color"

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v0, "defaultRecentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v0, "manualSyncUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v0, "viewProxyUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v0, "accountCookieUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v0, "updateSettingsUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v0, "enableMessageTransforms"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayB:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string v0, "syncAuthority"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v0, "quickResponseUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v0, "settingsFragmentClass"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v0, "securityHold"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayF:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v0, "accountSecurityUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "settings"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v2}, Lcom/android/mail/providers/Settings;->up()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    :try_start_3
    sget-object v2, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v3, "Could not serialize account with name %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final uf()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/mail/providers/Account;->aye:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/providers/Account;->aye:Landroid/accounts/Account;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/Account;->aye:Landroid/accounts/Account;

    return-object v0
.end method

.method public final ug()Z
    .locals 1

    .prologue
    .line 567
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

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

.method public final uh()Z
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Lcom/android/mail/providers/Account;->ays:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ui()Z
    .locals 2

    .prologue
    .line 577
    iget v0, p0, Lcom/android/mail/providers/Account;->ays:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uj()Z
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->ui()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->uh()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final uk()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 814
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    if-nez v0, :cond_2

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    .line 818
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    .line 844
    :goto_0
    return-object v0

    .line 823
    :cond_0
    iget-object v8, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    new-instance v0, Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    move-object v1, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/mail/providers/ReplyFromAccount;-><init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_2

    .line 831
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mail/providers/ReplyFromAccount;->a(Lcom/android/mail/providers/Account;Lorg/json/JSONObject;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v3

    .line 833
    if-eqz v3, :cond_1

    .line 834
    iget-object v4, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    :catch_0
    move-exception v0

    .line 839
    sget-object v1, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v2, "Unable to parse accountFromAddresses. name=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayH:Ljava/util/List;

    goto :goto_0
.end method

.method public final ul()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 928
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v1, "accountManagerName"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v1, "accountId"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v1, "providerVersion"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v1, "accountUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v1, "capabilities"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v1, "folderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v1, "fullFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v1, "allFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v1, "searchUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v1, "accountFromAddresses"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v1, "expungeMessageUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v1, "undoUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v1, "accountSettingsIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string v1, "helpIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v1, "sendFeedbackIntentUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v1, "reauthenticationUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v1, "syncStatus"

    iget v2, p0, Lcom/android/mail/providers/Account;->ays:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v1, "composeUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v1, "recentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v1, "defaultRecentFolderListUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v1, "manualSyncUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v1, "viewProxyUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v1, "accountCookieUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v1, "color"

    iget v2, p0, Lcom/android/mail/providers/Account;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string v1, "updateSettingsUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v1, "enableMessageTransforms"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v1, "syncAuthority"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v1, "quickResponseUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const-string v1, "settingsFragmentClass"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v1, "securityHold"

    iget v2, p0, Lcom/android/mail/providers/Account;->ayF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v1, "accountSecurityUri"

    iget-object v2, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    iget-object v1, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1, v0}, Lcom/android/mail/providers/Settings;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 966
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v0, p0, Lcom/android/mail/providers/Account;->acv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/mail/providers/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    iget v0, p0, Lcom/android/mail/providers/Account;->ayf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget-object v0, p0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 652
    iget v0, p0, Lcom/android/mail/providers/Account;->ayg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 654
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayi:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 655
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayj:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 656
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayk:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 657
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/mail/providers/Account;->aym:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 659
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 660
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayo:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 661
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 662
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayq:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 663
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayr:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 664
    iget v0, p0, Lcom/android/mail/providers/Account;->ays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayt:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 666
    iget-object v0, p0, Lcom/android/mail/providers/Account;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayu:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 668
    iget v0, p0, Lcom/android/mail/providers/Account;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayv:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 670
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayx:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 671
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayy:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 672
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayz:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 673
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayA:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 674
    iget v0, p0, Lcom/android/mail/providers/Account;->ayB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayD:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 677
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 678
    iget v0, p0, Lcom/android/mail/providers/Account;->ayF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-nez v0, :cond_0

    .line 681
    sget-object v0, Lcom/android/mail/providers/Account;->mW:Ljava/lang/String;

    const-string v1, "unexpected null settings object in writeToParcel"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 682
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    :goto_0
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    return-void

    .line 684
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget-object v0, p0, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
