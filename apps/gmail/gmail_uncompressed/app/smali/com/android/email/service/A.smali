.class final Lcom/android/email/service/A;
.super Lcom/android/email/service/l;
.source "SourceFile"


# instance fields
.field final synthetic VC:Lcom/android/email/service/Pop3Service;


# direct methods
.method constructor <init>(Lcom/android/email/service/Pop3Service;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/email/service/A;->VC:Lcom/android/email/service/Pop3Service;

    invoke-direct {p0}, Lcom/android/email/service/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/emailcommon/service/u;JJZ)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/service/A;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->o(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yv:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/email/service/A;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/emailcommon/provider/Mailbox;->c(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 85
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/email/service/A;->A(J)V

    goto :goto_0
.end method
