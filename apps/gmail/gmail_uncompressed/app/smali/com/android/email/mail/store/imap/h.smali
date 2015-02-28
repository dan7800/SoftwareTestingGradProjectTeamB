.class public final Lcom/android/email/mail/store/imap/h;
.super Lcom/android/email/mail/store/imap/i;
.source "SourceFile"


# instance fields
.field private Rj:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/email/mail/store/imap/h;->Rj:Ljava/lang/String;

    .line 32
    return-void

    .line 31
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/h;->Rj:Ljava/lang/String;

    .line 37
    invoke-super {p0}, Lcom/android/email/mail/store/imap/i;->destroy()V

    .line 38
    return-void
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/mail/store/imap/h;->Rj:Ljava/lang/String;

    return-object v0
.end method

.method public final jv()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/h;->Rj:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/b/s;->aG(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/imap/h;->Rj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
