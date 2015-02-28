.class final Lcom/google/android/gm/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/T;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/google/android/gm/ui/A;-><init>()V

    return-void
.end method


# virtual methods
.method public final aL(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/S;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 753
    new-instance v1, Lcom/google/android/gm/ui/z;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/android/gm/ui/z;-><init>(B)V

    .line 755
    iput-object p1, v1, Lcom/google/android/gm/ui/z;->cjp:Landroid/view/View;

    .line 756
    const v0, 0x7f0d0209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjq:Landroid/view/View;

    .line 758
    const v0, 0x7f0d0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjs:Landroid/view/View;

    .line 759
    iget-object v0, v1, Lcom/google/android/gm/ui/z;->cjs:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjy:Landroid/widget/ImageView;

    .line 761
    const v0, 0x7f0d0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjt:Landroid/widget/TextView;

    .line 763
    const v0, 0x7f0d0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cju:Landroid/widget/TextView;

    .line 765
    const v0, 0x7f0d0207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjx:Landroid/widget/ImageView;

    .line 766
    const v0, 0x7f0d020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    .line 767
    const v0, 0x7f0d0208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjo:Landroid/view/View;

    .line 768
    const v0, 0x7f0d0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjL:Landroid/view/View;

    .line 770
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjv:Landroid/view/View;

    .line 771
    const v0, 0x7f0d00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjz:Landroid/widget/ImageView;

    .line 772
    const v0, 0x7f0d00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->bqt:Landroid/widget/TextView;

    .line 775
    const v0, 0x7f0d0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjw:Landroid/view/View;

    .line 776
    const v0, 0x7f0d0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjA:Landroid/widget/ImageView;

    .line 777
    const v0, 0x7f0d0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->bqu:Landroid/widget/TextView;

    .line 780
    const v0, 0x7f0d00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjE:Landroid/view/View;

    .line 781
    iget-object v0, v1, Lcom/google/android/gm/ui/z;->cjE:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjI:Landroid/widget/ImageView;

    .line 783
    const v0, 0x7f0d0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjF:Landroid/widget/ImageView;

    .line 784
    const v0, 0x7f0d020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjB:Landroid/view/View;

    .line 785
    const v0, 0x7f0d020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjC:Landroid/widget/TextView;

    .line 787
    const v0, 0x7f0d020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjD:Landroid/widget/TextView;

    .line 789
    const v0, 0x7f0d00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjG:Landroid/view/View;

    .line 790
    iget-object v0, v1, Lcom/google/android/gm/ui/z;->cjG:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjJ:Landroid/widget/ImageView;

    .line 792
    const v0, 0x7f0d00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjH:Landroid/view/View;

    .line 793
    iget-object v0, v1, Lcom/google/android/gm/ui/z;->cjH:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/android/gm/ui/z;->cjK:Landroid/widget/ImageView;

    .line 797
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 798
    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjx:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    iput-object v4, v1, Lcom/google/android/gm/ui/z;->cjx:Landroid/widget/ImageView;

    .line 801
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 802
    iput-object v4, v1, Lcom/google/android/gm/ui/z;->cjF:Landroid/widget/ImageView;

    .line 808
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjo:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 810
    const v2, 0x7f0a0071

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 811
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjt:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cju:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjC:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 814
    iget-object v2, v1, Lcom/google/android/gm/ui/z;->cjD:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 817
    :cond_0
    return-object v1
.end method
