.class Lcom/android/email/mail/store/ImapStore$ImapException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAlertText:Ljava/lang/String;

.field private final mResponseCode:Ljava/lang/String;

.field private final mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 671
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    .line 672
    iput-object p3, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    .line 673
    iput-object p4, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    .line 674
    return-void
.end method


# virtual methods
.method public final jk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final jl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public final jm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    return-object v0
.end method
