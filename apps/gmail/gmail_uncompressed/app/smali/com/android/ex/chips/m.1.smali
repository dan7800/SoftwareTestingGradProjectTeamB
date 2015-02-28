.class final Lcom/android/ex/chips/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic acV:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic acW:Lcom/android/ex/chips/DropdownChipLayouter;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/ex/chips/m;->acW:Lcom/android/ex/chips/DropdownChipLayouter;

    iput-object p2, p0, Lcom/android/ex/chips/m;->acV:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/ex/chips/m;->acV:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/ex/chips/m;->acW:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-static {v0}, Lcom/android/ex/chips/DropdownChipLayouter;->b(Lcom/android/ex/chips/DropdownChipLayouter;)Lcom/android/ex/chips/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/chips/o;->mz()V

    .line 233
    :cond_0
    return-void
.end method
