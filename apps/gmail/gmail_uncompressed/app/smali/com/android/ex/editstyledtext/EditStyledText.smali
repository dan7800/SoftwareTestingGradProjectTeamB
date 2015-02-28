.class public final Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field private static afI:Ljava/lang/CharSequence;

.field private static afJ:Ljava/lang/CharSequence;

.field private static afK:Ljava/lang/CharSequence;

.field private static final afP:Landroid/text/NoCopySpan$Concrete;


# instance fields
.field private afL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/editstyledtext/c;",
            ">;"
        }
    .end annotation
.end field

.field private afM:Landroid/graphics/drawable/Drawable;

.field private afN:Lcom/android/ex/editstyledtext/i;

.field private afO:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->afP:Landroid/text/NoCopySpan$Concrete;

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/i;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    return-object v0
.end method

.method static synthetic a(Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->afP:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ni()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->by(I)V

    .line 543
    return-void
.end method

.method private nk()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->by(I)V

    .line 557
    return-void
.end method

.method private nl()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->by(I)V

    .line 562
    return-void
.end method


# virtual methods
.method public final bx(I)I
    .locals 3

    .prologue
    const/high16 v1, -0x1000000

    .line 875
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 883
    :goto_0
    return v0

    .line 878
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v2, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, p1, p1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 880
    array-length v2, v0

    if-lez v2, :cond_2

    .line 881
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 883
    goto :goto_0
.end method

.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 273
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nt()V

    .line 276
    :cond_0
    return-void
.end method

.method public final getBackgroundColor()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public final nh()Z
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/c;

    .line 469
    invoke-interface {v0}, Lcom/android/ex/editstyledtext/c;->nh()Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 470
    goto :goto_0

    :cond_0
    move v1, v0

    .line 472
    :cond_1
    return v1
.end method

.method public final nj()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->by(I)V

    .line 548
    return-void
.end method

.method public final nm()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nm()Z

    move-result v0

    return v0
.end method

.method public final nn()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nn()Z

    move-result v0

    return v0
.end method

.method protected final onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 330
    new-instance v0, Lcom/android/ex/editstyledtext/j;

    invoke-direct {v0, p0, v3}, Lcom/android/ex/editstyledtext/j;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;B)V

    .line 331
    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->afI:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 332
    const v1, 0xffff01

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->afI:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->nv()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->afJ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 336
    const v1, 0xffff02

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->afJ:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->ny()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    const v1, 0x1020022

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->afK:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 343
    :cond_2
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/android/ex/editstyledtext/k;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/ex/editstyledtext/k;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afO:Landroid/view/inputmethod/InputConnection;

    .line 372
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afO:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 378
    if-eqz p1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->ni()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nj()V

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 261
    instance-of v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    check-cast p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    .line 266
    invoke-virtual {p1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget v0, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mu:I

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-direct {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->getBackgroundColor()I

    move-result v0

    iput v0, v1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mu:I

    .line 256
    return-object v1
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/i;->b(Landroid/text/Editable;III)V

    .line 350
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/i;->a(Landroid/text/Editable;III)V

    .line 351
    if-le p4, p3, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/ex/editstyledtext/i;->I(II)V

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    if-le p4, p3, :cond_3

    .line 358
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nq()V

    .line 359
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nr()V

    .line 365
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 366
    return-void

    .line 353
    :cond_2
    if-ge p3, p4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nu()V

    goto :goto_0

    .line 360
    :cond_3
    if-ge p4, p3, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/i;->by(I)V

    goto :goto_1
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v0

    .line 281
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 324
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 280
    goto :goto_0

    .line 283
    :sswitch_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/i;->ai(Z)V

    goto :goto_2

    .line 286
    :sswitch_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->np()V

    .line 287
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nA()V

    goto :goto_1

    .line 290
    :sswitch_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nr()V

    goto :goto_1

    .line 293
    :sswitch_3
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/i;->by(I)V

    goto :goto_2

    .line 296
    :sswitch_4
    if-eqz v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nk()V

    goto :goto_2

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/i;->ai(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nk()V

    goto :goto_2

    .line 304
    :sswitch_5
    if-eqz v1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nl()V

    goto :goto_2

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/i;->ai(Z)V

    .line 308
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nl()V

    goto :goto_2

    .line 312
    :sswitch_6
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/ex/editstyledtext/i;->by(I)V

    goto :goto_2

    .line 315
    :sswitch_7
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->ns()V

    goto :goto_2

    .line 318
    :sswitch_8
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->ni()V

    goto :goto_2

    .line 321
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->nj()V

    goto :goto_2

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0xffff01 -> :sswitch_6
        0xffff02 -> :sswitch_7
        0xffff03 -> :sswitch_8
        0xffff04 -> :sswitch_9
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_3
        0x1020028 -> :sswitch_1
        0x1020029 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelLongPress()V

    .line 222
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nm()Z

    move-result v1

    .line 224
    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->ni()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 229
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/i;->nx()I

    move-result v4

    if-nez v4, :cond_1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/i;->J(II)V

    .line 242
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->nq()V

    .line 243
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/i;->nu()V

    .line 247
    :goto_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/i;->J(II)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 248
    :cond_4
    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 712
    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    .line 713
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/i;->setBackgroundColor(I)V

    .line 718
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nt()V

    .line 719
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->afM:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
