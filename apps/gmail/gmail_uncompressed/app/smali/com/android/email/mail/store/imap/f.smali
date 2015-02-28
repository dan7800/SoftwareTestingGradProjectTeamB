.class public final Lcom/android/email/mail/store/imap/f;
.super Lcom/android/email/mail/store/imap/i;
.source "SourceFile"


# instance fields
.field private Rb:[B


# direct methods
.method constructor <init>(Lcom/android/email/k;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/android/email/k;->getLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    move v0, v1

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    iget-object v3, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/email/k;->read([BII)I

    move-result v2

    .line 41
    if-ltz v2, :cond_0

    .line 42
    add-int/2addr v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 47
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    .line 54
    invoke-super {p0}, Lcom/android/email/mail/store/imap/i;->destroy()V

    .line 55
    return-void
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    invoke-static {v0}, Lcom/android/emailcommon/b/s;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final jv()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "{%d byte literal(memory)}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/mail/store/imap/f;->Rb:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
