.class final Lcom/android/email/activity/setup/aT;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PH:[Ljava/lang/String;

.field private static final PI:[Ljava/lang/String;


# instance fields
.field private final PJ:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "policyKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/setup/aT;->PH:[Ljava/lang/String;

    .line 313
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "maxEmailLookback"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/setup/aT;->PI:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 324
    iput-wide p2, p0, Lcom/android/email/activity/setup/aT;->PJ:J

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JB)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/aT;-><init>(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/aT;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/aT;->PJ:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->v(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    const-string v2, "mailbox"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "maxLookback"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aT;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/android/email/activity/setup/aT;->PH:[Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/aT;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/android/email/activity/setup/aT;->PI:[Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "maxLookback"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
