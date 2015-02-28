.class final Lcom/android/mail/d/a;
.super Lcom/android/mail/d/d;
.source "SourceFile"


# instance fields
.field private final akh:Lcom/android/mail/b/j;

.field private final axa:Z

.field private final axb:Lcom/android/a/a;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/mail/d/d;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;)V

    .line 40
    iput-boolean p3, p0, Lcom/android/mail/d/a;->axa:Z

    .line 41
    iput-object p4, p0, Lcom/android/mail/d/a;->axb:Lcom/android/a/a;

    .line 42
    iput-object p5, p0, Lcom/android/mail/d/a;->akh:Lcom/android/mail/b/j;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/utils/p;I)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x4

    return v0
.end method

.method public final getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    check-cast p1, Lcom/android/mail/ui/AccountItemView;

    move-object v0, p1

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/mail/d/a;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/d/a;->Nc:Lcom/android/mail/providers/Account;

    iget-boolean v3, p0, Lcom/android/mail/d/a;->axa:Z

    iget-object v4, p0, Lcom/android/mail/d/a;->axb:Lcom/android/a/a;

    iget-object v5, p0, Lcom/android/mail/d/a;->akh:Lcom/android/mail/b/j;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/ui/AccountItemView;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)V

    .line 69
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/mail/d/a;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/AccountItemView;

    goto :goto_0
.end method

.method public final ta()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DrawerItem VIEW_ACCOUNT, mAccount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/d/a;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
