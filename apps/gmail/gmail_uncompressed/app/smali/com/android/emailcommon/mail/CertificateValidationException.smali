.class public Lcom/android/emailcommon/mail/CertificateValidationException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "SourceFile"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
