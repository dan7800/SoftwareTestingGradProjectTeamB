.class public Lcom/google/android/gm/preference/IntegerPickerPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private bbP:Landroid/widget/NumberPicker;

.field private bbQ:Landroid/widget/TextView;

.field private bbR:Lcom/google/android/gm/preference/o;

.field private bbS:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    .line 37
    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setDialogLayoutResource(I)V

    .line 38
    return-void
.end method

.method private DJ()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f11001b

    iget-object v3, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/preference/IntegerPickerPreference;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->DJ()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/preference/o;I)V
    .locals 4

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbR:Lcom/google/android/gm/preference/o;

    .line 42
    iput p2, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbS:I

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x7f090366

    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setTitle(I)V

    .line 45
    const v1, 0x7f11001a

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0d018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbQ:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0d018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    iget v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbS:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 65
    invoke-direct {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->DJ()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/google/android/gm/preference/n;

    invoke-direct {v1, p0}, Lcom/google/android/gm/preference/n;-><init>(Lcom/google/android/gm/preference/IntegerPickerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 72
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 83
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbR:Lcom/google/android/gm/preference/o;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbR:Lcom/google/android/gm/preference/o;

    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/preference/o;->dB(I)V

    .line 87
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090366

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    check-cast p1, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    iget v1, p1, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference;->bbP:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/gm/preference/IntegerPickerPreference$SavedState;->value:I

    .line 95
    :cond_0
    return-object v0
.end method
