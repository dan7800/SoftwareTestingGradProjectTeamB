.class final Lcom/android/email/mail/store/c;
.super Lcom/android/emailcommon/a/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/email/mail/store/b;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/emailcommon/a/f;-><init>()V

    .line 637
    iput-object p1, p0, Lcom/android/email/mail/store/c;->Xk:Ljava/lang/String;

    .line 638
    iput-object p2, p0, Lcom/android/email/mail/store/c;->Xn:Lcom/android/emailcommon/mail/Folder;

    .line 639
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/emailcommon/mail/Flag;)V
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 652
    return-void
.end method

.method public final a(Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 656
    invoke-super {p0, p1, p2}, Lcom/android/emailcommon/a/f;->a(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 657
    iget-object v0, p0, Lcom/android/email/mail/store/c;->Xn:Lcom/android/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/android/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/android/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/emailcommon/mail/Folder;->a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 658
    return-void
.end method

.method public final b(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/android/emailcommon/a/f;->b(Ljava/io/InputStream;)V

    .line 648
    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .prologue
    .line 642
    iput p1, p0, Lcom/android/email/mail/store/c;->gO:I

    .line 643
    return-void
.end method
