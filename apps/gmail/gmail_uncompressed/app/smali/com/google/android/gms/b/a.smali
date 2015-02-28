.class public final Lcom/google/android/gms/b/a;
.super Lcom/android/ex/chips/DropdownChipLayouter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/DropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(ZLcom/android/ex/chips/ae;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    if-ne p4, v0, :cond_1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p2}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    sget v0, Lcom/android/ex/chips/z;->adw:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/DropdownChipLayouter;->a(ZLcom/android/ex/chips/ae;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V

    goto :goto_0
.end method
