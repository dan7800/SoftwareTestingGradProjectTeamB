.class public abstract Lcom/android/mail/d/f;
.super Lcom/android/mail/d/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final axd:Lcom/android/mail/ui/bG;

.field private final axe:I

.field private final axf:I


# direct methods
.method constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;II)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/mail/d/d;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;)V

    .line 44
    iput-object p3, p0, Lcom/android/mail/d/f;->axd:Lcom/android/mail/ui/bG;

    .line 45
    iput p4, p0, Lcom/android/mail/d/f;->axe:I

    .line 46
    iput p5, p0, Lcom/android/mail/d/f;->axf:I

    .line 47
    return-void
.end method


# virtual methods
.method public final getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    check-cast p1, Landroid/view/ViewGroup;

    .line 98
    :goto_0
    const v0, 0x7f0d0197

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget v1, p0, Lcom/android/mail/d/f;->axf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const v0, 0x7f0d0196

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    iget v1, p0, Lcom/android/mail/d/f;->axe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/mail/d/f;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p1, v0

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/mail/d/f;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/android/mail/ui/bs;->wL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/mail/d/f;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/android/mail/ui/O;->a(ZLcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 73
    iget-object v0, p0, Lcom/android/mail/d/f;->axd:Lcom/android/mail/ui/bG;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/bG;->a(Lcom/android/mail/d/f;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/d/f;->tb()V

    goto :goto_0
.end method

.method public abstract tb()V
.end method

.method protected final tc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "drawer_footer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mail/d/f;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->xX()Lcom/android/mail/ui/dD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/ui/dD;->AA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
