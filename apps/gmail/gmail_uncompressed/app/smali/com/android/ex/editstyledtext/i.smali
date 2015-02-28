.class final Lcom/android/ex/editstyledtext/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Mf:I

.field private afY:Z

.field private afZ:Z

.field private aga:Z

.field private agb:Z

.field private agc:Z

.field private agd:I

.field private agf:I

.field private agg:I

.field private agh:I

.field private agi:Landroid/text/style/BackgroundColorSpan;

.field private agj:Lcom/android/ex/editstyledtext/EditStyledText;

.field private agk:Lcom/android/ex/editstyledtext/a;

.field private agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private agm:Landroid/text/SpannableStringBuilder;

.field final synthetic agn:Lcom/android/ex/editstyledtext/EditStyledText;

.field private ao:I

.field private mu:I


# direct methods
.method private static a(Landroid/text/Editable;I)I
    .locals 4

    .prologue
    .line 1744
    move v0, p1

    .line 1745
    :goto_0
    if-lez v0, :cond_0

    .line 1746
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1747
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1751
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- findLineStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v0
.end method

.method private static b(Landroid/text/Editable;I)I
    .locals 4

    .prologue
    .line 1758
    move v0, p1

    .line 1759
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1760
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    .line 1766
    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- findLineEnd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v0

    .line 1759
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nz()V
    .locals 2

    .prologue
    .line 1594
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- offSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/text/Spannable;)V

    .line 1598
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1599
    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    .line 1601
    return-void
.end method


# virtual methods
.method public final I(II)V
    .locals 7

    .prologue
    .line 1216
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- setTextComposingMask:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1219
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1221
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->agb:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/ex/editstyledtext/i;->agg:I

    const v3, 0xffffff

    if-eq v0, v3, :cond_3

    .line 1222
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->agg:I

    .line 1226
    :goto_0
    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v3

    .line 1228
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--- fg:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/ex/editstyledtext/i;->agb:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-ne v0, v3, :cond_2

    .line 1234
    const/high16 v0, -0x80000000

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    or-int/2addr v0, v3

    .line 1235
    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 1237
    :cond_0
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    const/16 v4, 0x21

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1242
    :cond_2
    return-void

    .line 1224
    :cond_3
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->bx(I)I

    move-result v0

    goto :goto_0
.end method

.method public final J(II)V
    .locals 4

    .prologue
    .line 1798
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- showsoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afZ:Z

    if-eqz v0, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->ago:I

    .line 1804
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->agp:I

    .line 1805
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agn:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public final a(Landroid/text/Editable;III)V
    .locals 11

    .prologue
    .line 1323
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSpanPrevious:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    add-int v4, p2, p4

    .line 1326
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1327
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1329
    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 1330
    instance-of v0, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    .line 1332
    :cond_0
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1333
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1335
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "spantype:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    instance-of v0, v7, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_1

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/ex/editstyledtext/i;->b(Landroid/text/Editable;I)I

    move-result v0

    .line 1346
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1348
    const-string v1, "EditStyledText.EditorManager"

    const-string v9, "updateSpanPrevious: extend span"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v1, 0x21

    invoke-interface {p1, v7, v8, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1342
    :cond_3
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->aga:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 1343
    goto :goto_1

    .line 1353
    :cond_4
    instance-of v0, v7, Lcom/android/ex/editstyledtext/f;

    if-eqz v0, :cond_2

    .line 1354
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1356
    if-le p3, p4, :cond_5

    .line 1360
    const-string v8, ""

    invoke-interface {p1, v0, v1, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1361
    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .line 1365
    :cond_5
    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 1372
    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public final ai(Z)V
    .locals 3

    .prologue
    .line 1017
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/a;->by(I)V

    .line 1020
    :cond_0
    if-eqz p1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1023
    :cond_1
    return-void
.end method

.method public final b(Landroid/text/Editable;III)V
    .locals 11

    .prologue
    .line 1376
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSpanNext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    add-int v3, p2, p4

    .line 1379
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1380
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1381
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 1382
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 1383
    instance-of v0, v6, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_0

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    .line 1384
    :cond_0
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1385
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 1387
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "spantype:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    instance-of v0, v6, Lcom/android/ex/editstyledtext/g;

    if-nez v0, :cond_1

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_6

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/i;->a(Landroid/text/Editable;I)I

    move-result v0

    .line 1393
    :goto_1
    if-ge v0, v7, :cond_3

    if-le p3, p4, :cond_3

    .line 1394
    invoke-interface {p1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1382
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1395
    :cond_3
    if-le v7, v1, :cond_2

    .line 1396
    const/16 v0, 0x21

    invoke-interface {p1, v6, v1, v8, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 1398
    :cond_4
    instance-of v0, v6, Lcom/android/ex/editstyledtext/f;

    if-eqz v0, :cond_2

    .line 1399
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1402
    if-ne v0, v3, :cond_2

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v6, "\n"

    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1404
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_2

    .line 1408
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final by(I)V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/a;->by(I)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 975
    return-void
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->mu:I

    return v0
.end method

.method public final nA()V
    .locals 4

    .prologue
    .line 1830
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- hidesoftkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->ago:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->agp:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/i;->agl:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 1833
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afZ:Z

    .line 1834
    return-void
.end method

.method public final nm()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afY:Z

    return v0
.end method

.method public final nn()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afZ:Z

    return v0
.end method

.method public final np()V
    .locals 3

    .prologue
    .line 991
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    .line 994
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/a;->no()V

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1003
    return-void

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/i;->nz()V

    .line 998
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/a;->no()V

    goto :goto_0
.end method

.method public final nq()V
    .locals 3

    .prologue
    .line 1007
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/a;->no()V

    .line 1011
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1013
    :cond_1
    return-void
.end method

.method public final nr()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1034
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- handleComplete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->agd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->agf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/i;->agd:I

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->agf:I

    if-ne v0, v1, :cond_1

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- cancel handle complete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->agd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iput v3, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->afY:Z

    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/i;->agg:I

    iput v3, p0, Lcom/android/ex/editstyledtext/i;->agh:I

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->agb:Z

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->afZ:Z

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->aga:Z

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->agc:Z

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/i;->nz()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/ex/editstyledtext/i;->afZ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->afY:Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1037
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    iget v2, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1038
    return-void

    .line 1036
    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    iget v1, p0, Lcom/android/ex/editstyledtext/i;->Mf:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/a;->bA(I)Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->a(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public final ns()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agk:Lcom/android/ex/editstyledtext/a;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/a;->by(I)V

    .line 1101
    return-void
.end method

.method public final nt()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1129
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1132
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1133
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v5

    .line 1134
    const-class v0, Lcom/android/ex/editstyledtext/f;

    invoke-interface {v4, v3, v2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/f;

    .line 1135
    array-length v6, v0

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 1136
    invoke-virtual {v7, v5}, Lcom/android/ex/editstyledtext/f;->bC(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_0
    const-class v1, Lcom/android/ex/editstyledtext/g;

    invoke-interface {v4, v3, v2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/g;

    .line 1139
    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .line 1140
    iget-object v7, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/g;->bD(I)V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1143
    :cond_1
    array-length v0, v0

    if-lez v0, :cond_2

    .line 1146
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :cond_2
    return-void
.end method

.method public final nu()V
    .locals 2

    .prologue
    .line 1254
    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/i;->agi:Landroid/text/style/BackgroundColorSpan;

    .line 1260
    :cond_0
    return-void
.end method

.method public final nv()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agj:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1269
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1270
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/i;->mu:I

    const v2, 0xffffff

    if-eq v0, v2, :cond_1

    .line 1274
    :cond_0
    const/4 v0, 0x1

    .line 1276
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final nw()Z
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/i;->agb:Z

    return v0
.end method

.method public final nx()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/ex/editstyledtext/i;->ao:I

    return v0
.end method

.method public final ny()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1412
    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agm:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agm:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/i;->agm:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v3, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    instance-of v6, v5, Lcom/android/ex/editstyledtext/f;

    if-nez v6, :cond_0

    instance-of v6, v5, Lcom/android/ex/editstyledtext/h;

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const-string v7, ""

    invoke-virtual {v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 1151
    iput p1, p0, Lcom/android/ex/editstyledtext/i;->mu:I

    .line 1152
    return-void
.end method
