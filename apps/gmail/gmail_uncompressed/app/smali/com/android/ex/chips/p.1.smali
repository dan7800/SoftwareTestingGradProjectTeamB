.class public final Lcom/android/ex/chips/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic acW:Lcom/android/ex/chips/DropdownChipLayouter;

.field public final adc:Landroid/widget/TextView;

.field public final add:Landroid/widget/TextView;

.field public final ade:Landroid/widget/TextView;

.field public final adf:Landroid/widget/ImageView;

.field public final adg:Landroid/widget/ImageView;

.field public final adh:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/ex/chips/p;->acW:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/p;->adc:Landroid/widget/TextView;

    .line 340
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/p;->add:Landroid/widget/TextView;

    .line 341
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/p;->ade:Landroid/widget/TextView;

    .line 342
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/chips/p;->adf:Landroid/widget/ImageView;

    .line 343
    const v0, 0x1020007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/ex/chips/p;->adg:Landroid/widget/ImageView;

    .line 344
    sget v0, Lcom/android/ex/chips/A;->adx:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/p;->adh:Landroid/view/View;

    .line 345
    return-void
.end method
