.class final Lcom/android/ex/chips/af;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/ex/chips/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private final acb:Lcom/android/ex/chips/DropdownChipLayouter;

.field private final adU:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-static {v0}, Lcom/android/ex/chips/DropdownChipLayouter;->c(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/ex/chips/ae;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 42
    iput-object p3, p0, Lcom/android/ex/chips/af;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 43
    iput-object p4, p0, Lcom/android/ex/chips/af;->adU:Landroid/graphics/drawable/StateListDrawable;

    .line 44
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ex/chips/af;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/af;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/ae;

    sget-object v5, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    iget-object v6, p0, Lcom/android/ex/chips/af;->adU:Landroid/graphics/drawable/StateListDrawable;

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/ae;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
