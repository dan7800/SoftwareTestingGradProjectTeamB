.class final Lcom/android/email/mail/store/imap/j;
.super Lcom/android/email/mail/store/imap/i;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method

.method public final jv()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/android/email/mail/store/imap/i;->jQ()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    return-object v0
.end method
