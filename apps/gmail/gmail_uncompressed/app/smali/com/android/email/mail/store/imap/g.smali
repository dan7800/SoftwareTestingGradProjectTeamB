.class public final Lcom/android/email/mail/store/imap/g;
.super Lcom/android/email/mail/store/imap/d;
.source "SourceFile"


# instance fields
.field private final Rc:Z

.field private final aK:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/d;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/email/mail/store/imap/g;->aK:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/android/email/mail/store/imap/g;->Rc:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final c(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/g;->jw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jA()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string v0, "BAD"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/mail/store/imap/d;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final jB()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "NO"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/mail/store/imap/d;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final jC()Lcom/android/email/mail/store/imap/i;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/g;->jy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aY(I)Lcom/android/email/mail/store/imap/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/d;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final jD()Lcom/android/email/mail/store/imap/i;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/g;->jC()Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/i;->K(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final jE()Lcom/android/email/mail/store/imap/i;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/g;->jy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aX(I)Lcom/android/email/mail/store/imap/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/b;->js()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final jF()Lcom/android/email/mail/store/imap/i;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/g;->jy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/email/mail/store/imap/i;->Rl:Lcom/android/email/mail/store/imap/i;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final jw()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/mail/store/imap/g;->aK:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final jx()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/g;->Rc:Z

    return v0
.end method

.method public final jy()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/imap/g;->aZ(I)Lcom/android/email/mail/store/imap/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/i;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PREAUTH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BYE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final jz()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "OK"

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/mail/store/imap/d;->a(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/email/mail/store/imap/g;->aK:Ljava/lang/String;

    .line 133
    iget-boolean v1, p0, Lcom/android/email/mail/store/imap/g;->Rc:Z

    if-eqz v1, :cond_0

    .line 134
    const-string v0, "+"

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/email/mail/store/imap/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
