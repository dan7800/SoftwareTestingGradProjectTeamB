.class final Lcom/google/android/gm/provider/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/common/http/i;


# instance fields
.field aiF:Ljava/io/InputStream;

.field final synthetic blx:Lcom/google/android/gm/provider/MailSync;

.field private final bly:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

.field blz:J

.field private final mMessageId:J


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailSync;JLcom/google/android/gm/provider/uiprovider/GmailAttachment;)V
    .locals 2

    .prologue
    .line 4182
    iput-object p1, p0, Lcom/google/android/gm/provider/bh;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4183
    iput-wide p2, p0, Lcom/google/android/gm/provider/bh;->mMessageId:J

    .line 4184
    iput-object p4, p0, Lcom/google/android/gm/provider/bh;->bly:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 4186
    invoke-direct {p0}, Lcom/google/android/gm/provider/bh;->HC()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/bh;->aiF:Ljava/io/InputStream;

    .line 4187
    iget-object v0, p0, Lcom/google/android/gm/provider/bh;->aiF:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/bh;->blz:J

    .line 4189
    return-void
.end method

.method private HC()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 4213
    iget-object v0, p0, Lcom/google/android/gm/provider/bh;->blx:Lcom/google/android/gm/provider/MailSync;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->a(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/ba;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/bh;->mMessageId:J

    iget-object v1, p0, Lcom/google/android/gm/provider/bh;->bly:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/ba;->b(Lcom/google/android/gm/provider/uiprovider/GmailAttachment;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final fW()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 4198
    iget-object v0, p0, Lcom/google/android/gm/provider/bh;->aiF:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 4199
    iget-object v0, p0, Lcom/google/android/gm/provider/bh;->aiF:Ljava/io/InputStream;

    .line 4200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/provider/bh;->aiF:Ljava/io/InputStream;

    .line 4203
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/bh;->HC()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/google/android/gm/provider/bh;->bly:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLength()J
    .locals 2

    .prologue
    .line 4193
    iget-wide v0, p0, Lcom/google/android/gm/provider/bh;->blz:J

    return-wide v0
.end method
