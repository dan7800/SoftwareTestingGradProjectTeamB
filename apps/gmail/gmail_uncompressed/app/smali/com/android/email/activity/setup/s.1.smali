.class final Lcom/android/email/activity/setup/s;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/android/emailcommon/provider/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final LN:J

.field public final ML:Z

.field public final MM:Z

.field public final MN:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;JZZZ)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 286
    iput-object p1, p0, Lcom/android/email/activity/setup/s;->mContext:Landroid/content/Context;

    .line 287
    iput-wide p2, p0, Lcom/android/email/activity/setup/s;->LN:J

    .line 288
    iput-boolean p4, p0, Lcom/android/email/activity/setup/s;->ML:Z

    .line 289
    iput-boolean p5, p0, Lcom/android/email/activity/setup/s;->MM:Z

    .line 290
    iput-boolean p6, p0, Lcom/android/email/activity/setup/s;->MN:Z

    .line 291
    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/email/activity/setup/s;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/setup/s;->LN:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/s;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Policy;->y(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/s;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0
.end method
