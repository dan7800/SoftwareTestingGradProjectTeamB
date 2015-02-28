.class public final Lcom/android/email/mail/store/g;
.super Lcom/android/emailcommon/a/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/email/mail/store/e;)V
    .locals 1

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/android/email/mail/store/g;->Xk:Ljava/lang/String;

    .line 769
    iput-object p2, p0, Lcom/android/email/mail/store/g;->Xn:Lcom/android/emailcommon/mail/Folder;

    .line 770
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/g;->gO:I

    .line 771
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 784
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 785
    iget-object v0, p0, Lcom/android/email/mail/store/g;->Xn:Lcom/android/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/android/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 786
    return-void
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 779
    invoke-super {p0, p1}, Lcom/android/emailcommon/a/f;->b(Ljava/io/InputStream;)V

    .line 780
    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .prologue
    .line 774
    iput p1, p0, Lcom/android/email/mail/store/g;->gO:I

    .line 775
    return-void
.end method
