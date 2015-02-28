.class final Lcom/android/mail/d/j;
.super Lcom/android/mail/d/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/android/mail/ui/as;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/mail/d/d;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/utils/p;I)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x5

    return v0
.end method

.method public final getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    :goto_0
    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/mail/d/j;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p1, v0

    goto :goto_0
.end method

.method public final ta()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "[DrawerItem VIEW_WAITING_FOR_SYNC]"

    return-object v0
.end method
