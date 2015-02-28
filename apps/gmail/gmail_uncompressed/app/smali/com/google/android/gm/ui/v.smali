.class final Lcom/google/android/gm/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/t;


# instance fields
.field final synthetic bqr:Lcom/google/android/gm/ui/t;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ui/t;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/google/android/gm/ui/v;->bqr:Lcom/google/android/gm/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ui/t;B)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/v;-><init>(Lcom/google/android/gm/ui/t;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/people/accountswitcherview/u;Lcom/google/android/gms/people/model/d;ZI)V
    .locals 3

    .prologue
    .line 631
    check-cast p1, Lcom/google/android/gm/ui/w;

    .line 632
    iget-object v0, p1, Lcom/google/android/gm/ui/w;->bqs:Landroid/widget/TextView;

    .line 634
    check-cast p2, Lcom/google/android/gm/ui/C;

    .line 635
    invoke-virtual {p2}, Lcom/google/android/gm/ui/C;->It()I

    move-result v1

    .line 637
    if-nez p3, :cond_0

    if-gtz v1, :cond_1

    .line 638
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
