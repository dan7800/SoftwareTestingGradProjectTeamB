.class final Lcom/android/mail/d/c;
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
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    return v0
.end method

.method public final getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 52
    :goto_0
    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/mail/d/c;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method public final ta()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "[DrawerItem VIEW_BOTTOM_SPACE]"

    return-object v0
.end method
