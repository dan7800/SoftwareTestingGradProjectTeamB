.class final Lcom/android/email/service/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final LN:J

.field final Uk:J

.field final Ul:J

.field Um:Z

.field Un:I

.field Uo:I

.field Up:J

.field Uq:J

.field Ur:J

.field final do:I

.field ky:J

.field final mMessageId:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 4

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/g;->Um:Z

    .line 202
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    iput-wide v0, p0, Lcom/android/email/service/g;->Ul:J

    .line 203
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yq:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/g;->t(Landroid/content/Context;J)Lcom/android/emailcommon/provider/g;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-wide v2, v0, Lcom/android/emailcommon/provider/g;->Lq:J

    iput-wide v2, p0, Lcom/android/email/service/g;->LN:J

    .line 206
    iget-wide v0, v0, Lcom/android/emailcommon/provider/g;->Ln:J

    iput-wide v0, p0, Lcom/android/email/service/g;->mMessageId:J

    .line 210
    :goto_0
    invoke-static {p2}, Lcom/android/email/service/AttachmentService;->c(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    iput v0, p0, Lcom/android/email/service/g;->do:I

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/service/g;->Uk:J

    .line 212
    return-void

    .line 208
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/service/g;->mMessageId:J

    iput-wide v0, p0, Lcom/android/email/service/g;->LN:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;B)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/g;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/email/service/g;J)V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/g;->Um:Z

    .line 215
    iget v0, p1, Lcom/android/email/service/g;->do:I

    iput v0, p0, Lcom/android/email/service/g;->do:I

    .line 216
    iget-wide v0, p1, Lcom/android/email/service/g;->Ul:J

    iput-wide v0, p0, Lcom/android/email/service/g;->Ul:J

    .line 217
    iget-wide v0, p1, Lcom/android/email/service/g;->mMessageId:J

    iput-wide v0, p0, Lcom/android/email/service/g;->mMessageId:J

    .line 218
    iget-wide v0, p1, Lcom/android/email/service/g;->LN:J

    iput-wide v0, p0, Lcom/android/email/service/g;->LN:J

    .line 219
    iput-wide p2, p0, Lcom/android/email/service/g;->Uk:J

    .line 220
    iget-boolean v0, p1, Lcom/android/email/service/g;->Um:Z

    iput-boolean v0, p0, Lcom/android/email/service/g;->Um:Z

    .line 221
    iget v0, p1, Lcom/android/email/service/g;->Un:I

    iput v0, p0, Lcom/android/email/service/g;->Un:I

    .line 222
    iget v0, p1, Lcom/android/email/service/g;->Uo:I

    iput v0, p0, Lcom/android/email/service/g;->Uo:I

    .line 223
    iget-wide v0, p1, Lcom/android/email/service/g;->Up:J

    iput-wide v0, p0, Lcom/android/email/service/g;->Up:J

    .line 224
    iget-wide v0, p1, Lcom/android/email/service/g;->ky:J

    iput-wide v0, p0, Lcom/android/email/service/g;->ky:J

    .line 225
    iget-wide v0, p1, Lcom/android/email/service/g;->Uq:J

    iput-wide v0, p0, Lcom/android/email/service/g;->Uq:J

    .line 226
    iget-wide v0, p1, Lcom/android/email/service/g;->Ur:J

    iput-wide v0, p0, Lcom/android/email/service/g;->Ur:J

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/g;JB)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/g;-><init>(Lcom/android/email/service/g;J)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 239
    instance-of v1, p1, Lcom/android/email/service/g;

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    check-cast p1, Lcom/android/email/service/g;

    .line 241
    iget-wide v2, p1, Lcom/android/email/service/g;->Ul:J

    iget-wide v4, p0, Lcom/android/email/service/g;->Ul:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/android/email/service/g;->Ul:J

    long-to-int v0, v0

    return v0
.end method
