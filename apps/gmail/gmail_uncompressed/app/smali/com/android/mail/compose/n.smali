.class final Lcom/android/mail/compose/n;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;

.field private mContext:Landroid/content/Context;

.field private wC:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/mail/compose/g;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 3590
    iput-object p1, p0, Lcom/android/mail/compose/n;->awi:Lcom/android/mail/compose/g;

    .line 3591
    const v0, 0x7f040049

    const v1, 0x7f0d0121

    invoke-virtual {p1}, Lcom/android/mail/compose/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 3593
    iput-object p2, p0, Lcom/android/mail/compose/n;->mContext:Landroid/content/Context;

    .line 3594
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 3605
    if-nez p2, :cond_1

    .line 3606
    iget-object v0, p0, Lcom/android/mail/compose/n;->wC:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/n;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/n;->wC:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/n;->wC:Landroid/view/LayoutInflater;

    const v1, 0x7f040048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3608
    :cond_1
    const v0, 0x7f0d0121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/mail/compose/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3609
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
