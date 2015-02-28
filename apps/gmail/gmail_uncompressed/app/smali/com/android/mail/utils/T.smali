.class final Lcom/android/mail/utils/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final account:Lcom/android/mail/providers/Account;

.field public final ajS:Lcom/android/mail/providers/Folder;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 1911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    iput-object p1, p0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    .line 1913
    iput-object p2, p0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    .line 1914
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1918
    instance-of v1, p1, Lcom/android/mail/utils/T;

    if-nez v1, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return v0

    .line 1921
    :cond_1
    check-cast p1, Lcom/android/mail/utils/T;

    .line 1922
    iget-object v1, p0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    iget-object v2, p1, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    .line 1934
    iget-object v1, p0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    invoke-virtual {v1}, Lcom/android/mail/providers/Folder;->hashCode()I

    move-result v1

    .line 1935
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mail/utils/T;->account:Lcom/android/mail/providers/Account;

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/utils/T;->ajS:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
