.class public Lcom/android/mail/ui/MaterialSearchActionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private aLA:I

.field private aLB:Lcom/android/mail/ui/cx;

.field private aLC:Landroid/view/inputmethod/InputMethodManager;

.field private aLD:Z

.field private aLE:Z

.field private aLF:Z

.field private aLG:Landroid/widget/ImageView;

.field private aLH:Landroid/widget/EditText;

.field private aLI:Landroid/widget/ImageView;

.field private aLr:Landroid/graphics/drawable/Drawable;

.field private aLs:Landroid/graphics/drawable/Drawable;

.field private aLt:I

.field private aLu:I

.field private aLv:I

.field private aLw:I

.field private aLx:I

.field private aLy:I

.field private aLz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/MaterialSearchActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x106000b

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLr:Landroid/graphics/drawable/Drawable;

    .line 81
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f0a00c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLs:Landroid/graphics/drawable/Drawable;

    .line 82
    const v1, 0x7f020079

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLt:I

    .line 83
    const v1, 0x7f02007b

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLu:I

    .line 84
    const v1, 0x7f020089

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLv:I

    .line 85
    const v1, 0x7f02008a

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLw:I

    .line 86
    const v1, 0x7f0200d8

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLx:I

    .line 87
    const v1, 0x7f0200d9

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLy:I

    .line 88
    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLz:I

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLA:I

    .line 90
    return-void
.end method

.method private u(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchActionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 178
    iget-boolean v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLD:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 179
    :cond_0
    iget-boolean v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLF:Z

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLw:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    const v2, 0x7f090143

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLE:Z

    .line 195
    :goto_1
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLv:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-boolean v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLF:Z

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLy:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :goto_2
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    const v2, 0x7f090142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLE:Z

    goto :goto_1

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLx:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/cx;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    .line 96
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iput-boolean p3, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLD:Z

    .line 98
    return-void
.end method

.method public final a(ZI)V
    .locals 3

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLF:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchActionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLG:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLu:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLA:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 121
    invoke-static {p0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->getLocationInWindow([I)V

    .line 124
    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchActionView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->u(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchActionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void

    .line 126
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLG:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLt:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLz:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 132
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final by(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 107
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLC:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLC:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLG:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    invoke-virtual {v0}, Lcom/android/mail/ui/cx;->zO()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 218
    iget-boolean v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLE:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/cx;->de(I)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    invoke-virtual {v0}, Lcom/android/mail/ui/cx;->zP()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/cx;->de(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cx;->ct(Ljava/lang/String;)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 142
    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLC:Landroid/view/inputmethod/InputMethodManager;

    .line 143
    const v0, 0x7f0d01c7

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLG:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLG:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0d01c8

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mail/ui/ct;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/ct;-><init>(Lcom/android/mail/ui/MaterialSearchActionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 171
    const v0, 0x7f0d01ca

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLI:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MaterialSearchActionView;->u(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cx;->ct(Ljava/lang/String;)V

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLB:Lcom/android/mail/ui/cx;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cx;->cs(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MaterialSearchActionView;->u(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public final zL()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchActionView;->aLH:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
