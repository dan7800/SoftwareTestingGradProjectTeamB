.class public Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "Received BYE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method
