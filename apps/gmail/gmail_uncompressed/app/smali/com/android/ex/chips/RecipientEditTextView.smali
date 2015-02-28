.class public Lcom/android/ex/chips/RecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/ex/chips/G;
.implements Lcom/android/ex/chips/o;


# static fields
.field private static final adW:Ljava/lang/String;

.field private static final adX:Ljava/util/regex/Pattern;

.field private static final adY:I

.field private static adZ:I


# instance fields
.field private acb:Lcom/android/ex/chips/DropdownChipLayouter;

.field private aeA:Lcom/android/ex/chips/a/d;

.field private aeB:Landroid/widget/TextView;

.field private aeC:Z

.field private aeD:I

.field final aeE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aeF:I

.field private aeG:I

.field private aeH:Z

.field private aeI:Z

.field aeJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private aeK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private aeL:Landroid/view/GestureDetector;

.field private aeM:Landroid/app/Dialog;

.field private aeN:Ljava/lang/String;

.field private aeO:Landroid/widget/ScrollView;

.field private aeP:Z

.field private aeQ:Z

.field private aeR:Z

.field private final aeS:Ljava/lang/Runnable;

.field private aeT:Lcom/android/ex/chips/U;

.field private aeU:Ljava/lang/Runnable;

.field private aeV:Ljava/lang/Runnable;

.field private aeW:Lcom/android/ex/chips/Z;

.field private final aea:Landroid/graphics/Rect;

.field private final aeb:[I

.field private aec:Landroid/graphics/drawable/Drawable;

.field private aed:Landroid/graphics/drawable/Drawable;

.field private aee:Landroid/graphics/drawable/Drawable;

.field private aef:Landroid/graphics/drawable/Drawable;

.field private aeg:F

.field private aeh:F

.field private aei:F

.field private aej:I

.field private aek:I

.field private final ael:I

.field private aem:Z

.field private aen:I

.field private aeo:I

.field private aep:Landroid/graphics/Paint;

.field private aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private aer:Landroid/widget/AutoCompleteTextView$Validator;

.field private aes:Landroid/text/TextWatcher;

.field private aet:Landroid/view/View;

.field private aeu:Landroid/widget/ListPopupWindow;

.field private aev:Landroid/widget/ListPopupWindow;

.field private aew:Landroid/view/View;

.field private aex:Landroid/widget/AdapterView$OnItemClickListener;

.field private aey:Lcom/android/ex/chips/a/b;

.field private aez:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView;->adW:Ljava/lang/String;

    .line 126
    const-string v0, "(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView;->adX:Ljava/util/regex/Pattern;

    .line 132
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->adY:I

    .line 141
    const/4 v0, -0x1

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->adZ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    .line 148
    iput-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aec:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aed:Landroid/graphics/drawable/Drawable;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    .line 179
    iput-object p0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aet:Landroid/view/View;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    .line 196
    iput v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    .line 198
    iput-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    .line 199
    iput-boolean v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeI:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeQ:Z

    .line 219
    new-instance v0, Lcom/android/ex/chips/I;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/I;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeS:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/android/ex/chips/K;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/K;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeU:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/android/ex/chips/L;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/L;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeV:Ljava/lang/Runnable;

    .line 263
    sget-object v0, Lcom/android/ex/chips/E;->sT:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v0, Lcom/android/ex/chips/E;->adI:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aec:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/android/ex/chips/E;->adJ:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aef:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/android/ex/chips/E;->adP:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aee:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/android/ex/chips/E;->adK:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aed:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aed:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget v0, Lcom/android/ex/chips/z;->adv:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aed:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget v0, Lcom/android/ex/chips/E;->adN:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    if-ne v0, v5, :cond_1

    sget v0, Lcom/android/ex/chips/y;->adq:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    :cond_1
    sget v0, Lcom/android/ex/chips/y;->ads:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-ltz v0, :cond_2

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    :cond_2
    sget v0, Lcom/android/ex/chips/y;->adr:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-ltz v0, :cond_3

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    :cond_3
    sget v0, Lcom/android/ex/chips/z;->adw:I

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aez:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/ex/chips/C;->adC:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    sget v0, Lcom/android/ex/chips/E;->adM:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_4

    sget v0, Lcom/android/ex/chips/y;->adp:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    :cond_4
    sget v0, Lcom/android/ex/chips/E;->adL:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeh:F

    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeh:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_5

    sget v0, Lcom/android/ex/chips/y;->adt:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeh:F

    :cond_5
    sget v0, Lcom/android/ex/chips/E;->adH:I

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeo:I

    sget v0, Lcom/android/ex/chips/E;->adO:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aem:Z

    sget v0, Lcom/android/ex/chips/B;->ady:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aen:I

    sget v0, Lcom/android/ex/chips/y;->adu:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aei:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const-string v1, "a"

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->ael:I

    .line 265
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->adZ:I

    if-ne v0, v5, :cond_6

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/ex/chips/RecipientEditTextView;->adZ:I

    .line 268
    :cond_6
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    .line 269
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    .line 271
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    .line 273
    new-instance v0, Lcom/android/ex/chips/M;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/M;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aex:Landroid/widget/AdapterView$OnItemClickListener;

    .line 286
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setInputType(I)V

    .line 287
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 289
    new-instance v0, Lcom/android/ex/chips/N;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/N;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 299
    new-instance v0, Lcom/android/ex/chips/ad;

    invoke-direct {v0, p0, v4}, Lcom/android/ex/chips/ad;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    .line 300
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeL:Landroid/view/GestureDetector;

    .line 302
    invoke-virtual {p0, p0}, Lcom/android/ex/chips/RecipientEditTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 304
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/ex/chips/DropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 305
    return-void
.end method

.method private E(II)Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->F(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1504
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1512
    :goto_0
    return v0

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v2, Lcom/android/ex/chips/a/b;

    invoke-interface {v0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 1509
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 1510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1512
    goto :goto_0
.end method

.method private G(II)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1516
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1536
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1524
    invoke-virtual {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1525
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1526
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1527
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->aL(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/chips/ae;->i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object v1

    .line 1528
    const-string v2, ""

    invoke-static {v0, p1, p2, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1529
    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/ae;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1530
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1531
    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    if-ltz v2, :cond_2

    .line 1532
    invoke-interface {v0, p1, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1535
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;I)I
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeD:I

    return p1
.end method

.method private a(Lcom/android/ex/chips/a/b;)I
    .locals 1

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)Landroid/widget/ListAdapter;
    .locals 12

    .prologue
    .line 112
    new-instance v0, Lcom/android/ex/chips/F;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mX()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mY()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->nd()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mZ()J

    move-result-wide v6

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/ex/chips/a;

    invoke-virtual {v8}, Lcom/android/ex/chips/a;->ml()I

    move-result v8

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mN()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/ex/chips/F;-><init>(Landroid/content/Context;JLjava/lang/Long;Ljava/lang/String;JILcom/android/ex/chips/G;Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V

    return-object v0
.end method

.method private a(Lcom/android/ex/chips/ae;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/T;
    .locals 15

    .prologue
    .line 680
    new-instance v9, Lcom/android/ex/chips/T;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/android/ex/chips/T;-><init>(B)V

    .line 682
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 683
    if-eqz p3, :cond_0

    .line 684
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 690
    :cond_0
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    float-to-int v11, v1

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int v1, v11, v1

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    move v8, v1

    .line 695
    :goto_0
    const/4 v1, 0x1

    new-array v3, v1, [F

    .line 696
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v4, v8

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v10, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeh:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    const-string v3, "RecipientEditTextView"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Max width is negative: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 700
    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v3, v1

    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aej:I

    .line 706
    :goto_2
    mul-int/lit8 v4, v8, 0x2

    add-int/2addr v1, v3

    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    iget v5, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    iget v5, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 710
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lcom/android/ex/chips/T;->afe:Landroid/graphics/Bitmap;

    .line 711
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, v9, Lcom/android/ex/chips/T;->afe:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 714
    if-eqz p3, :cond_8

    .line 715
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 716
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 728
    :goto_3
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mF()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move v5, v3

    .line 731
    :goto_4
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v5, v5

    iget v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->ael:I

    sub-int v6, v11, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 735
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mF()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int v1, v12, v1

    sub-int/2addr v1, v8

    .line 737
    :goto_5
    int-to-float v2, v1

    iput v2, v9, Lcom/android/ex/chips/T;->left:F

    .line 738
    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v9, Lcom/android/ex/chips/T;->top:F

    .line 739
    add-int/2addr v1, v8

    int-to-float v1, v1

    iput v1, v9, Lcom/android/ex/chips/T;->right:F

    .line 740
    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v11, v1

    int-to-float v1, v1

    iput v1, v9, Lcom/android/ex/chips/T;->bottom:F

    .line 742
    return-object v9

    .line 693
    :cond_4
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_0

    .line 697
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    new-instance v4, Landroid/text/util/Rfc822Token;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 703
    :cond_7
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    goto/16 :goto_2

    .line 719
    :cond_8
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 720
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 721
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 722
    div-int/lit8 v4, v11, 0x2

    int-to-float v4, v4

    .line 723
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v13, v12

    int-to-float v14, v11

    invoke-direct {v5, v6, v7, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 728
    :cond_9
    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, v12, v4

    iget v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->aek:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    move v5, v3

    goto :goto_4

    .line 735
    :cond_a
    iget v1, v10, Landroid/graphics/Rect;->left:I

    goto :goto_5
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 893
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    .line 894
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v4

    .line 897
    if-eqz p2, :cond_1

    .line 898
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->adZ:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aef:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/ex/chips/x;->ado:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/T;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/ex/chips/T;->aff:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/T;)V

    :cond_0
    iget-object v0, v0, Lcom/android/ex/chips/T;->afe:Landroid/graphics/Bitmap;

    .line 905
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 906
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v6, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 907
    new-instance v0, Lcom/android/ex/chips/a/f;

    invoke-direct {v0, v1, p1}, Lcom/android/ex/chips/a/f;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/ex/chips/ae;)V

    .line 909
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aei:F

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/a/f;->r(F)V

    .line 911
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 912
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 913
    return-object v0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aec:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/ex/chips/x;->adm:I

    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Landroid/text/TextPaint;Landroid/graphics/drawable/Drawable;I)Lcom/android/ex/chips/T;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/ex/chips/T;->aff:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/T;)V

    :cond_2
    iget-object v0, v0, Lcom/android/ex/chips/T;->afe:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aee:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    sget v1, Lcom/android/ex/chips/x;->adn:I

    goto :goto_2
.end method

.method private a(Landroid/content/ClipData;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2551
    if-nez p1, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2556
    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 2557
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v6

    .line 2559
    :goto_1
    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2565
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    move v0, v1

    .line 2566
    :goto_2
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 2567
    invoke-virtual {v7, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 2568
    const-string v3, "text/plain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "text/html"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    move v2, v6

    .line 2570
    :goto_3
    if-eqz v2, :cond_b

    .line 2572
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2576
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2577
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2578
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v4

    .line 2579
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v5

    .line 2580
    if-ltz v4, :cond_4

    if-gtz v5, :cond_7

    .line 2582
    :cond_4
    invoke-interface {v3, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 2589
    :goto_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v3

    invoke-interface {v2, v8, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_9

    move v4, v1

    move v3, v5

    :goto_5
    if-eqz v3, :cond_f

    if-nez v2, :cond_f

    if-eq v3, v4, :cond_f

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v8, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v2

    if-ne v4, v5, :cond_e

    if-nez v2, :cond_e

    move-object v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v11

    :goto_6
    if-eq v3, v5, :cond_9

    if-eqz v4, :cond_d

    :goto_7
    if-ge v2, v5, :cond_9

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->bw(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->a(IILandroid/text/Editable;)Z

    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    move v0, v1

    .line 2557
    goto/16 :goto_1

    :cond_6
    move v2, v1

    .line 2568
    goto/16 :goto_3

    .line 2583
    :cond_7
    if-ne v4, v5, :cond_8

    .line 2585
    invoke-interface {v3, v4, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4

    .line 2587
    :cond_8
    invoke-interface {v3, v2, v4, v5}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    goto :goto_4

    .line 2589
    :cond_9
    invoke-direct {p0, v9}, Lcom/android/ex/chips/RecipientEditTextView;->o(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-direct {p0, v3, v4, v2}, Lcom/android/ex/chips/RecipientEditTextView;->a(IILandroid/text/Editable;)Z

    invoke-direct {p0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Lcom/android/ex/chips/U;

    invoke-direct {v2, p0, v1}, Lcom/android/ex/chips/U;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    new-array v3, v6, [Ljava/util/ArrayList;

    aput-object v10, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/ex/chips/U;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2566
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2593
    :cond_c
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto :goto_7

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v11

    goto/16 :goto_5

    :cond_f
    move-object v11, v2

    move v2, v4

    move-object v4, v11

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/T;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/T;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeC:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/android/ex/chips/T;Landroid/graphics/Bitmap;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 749
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/android/ex/chips/T;->afe:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 750
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 751
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Lcom/android/ex/chips/T;->left:F

    iget v4, p1, Lcom/android/ex/chips/T;->top:F

    iget v5, p1, Lcom/android/ex/chips/T;->right:F

    iget v6, p1, Lcom/android/ex/chips/T;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 753
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v1, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v4, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v8

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 754
    return-void
.end method

.method private a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/T;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 776
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v2

    .line 777
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v4

    if-eqz v4, :cond_3

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 782
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 783
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->nc()[B

    move-result-object v0

    .line 786
    if-nez v0, :cond_5

    .line 788
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    new-instance v1, Lcom/android/ex/chips/P;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/ex/chips/P;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/T;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    .line 835
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 777
    goto :goto_0

    :cond_3
    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 830
    :cond_5
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    invoke-direct {p0, p2, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/T;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private a(IILandroid/text/Editable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1416
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    .line 1417
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1422
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->aM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getListSelection()I

    move-result v0

    .line 1424
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1426
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->bu(I)I

    .line 1431
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    move v0, v1

    .line 1463
    :goto_1
    return v0

    .line 1428
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bu(I)I

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, p3, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1435
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_4

    .line 1436
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p3, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 1437
    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    .line 1438
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1441
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1442
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1443
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1444
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->aK(Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_5

    .line 1446
    const-string v2, ""

    invoke-static {p3, p1, p2, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1447
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/ae;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1448
    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    .line 1449
    invoke-interface {p3, p1, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1456
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 1457
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1459
    :cond_6
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mK()V

    move v0, v1

    .line 1460
    goto :goto_1

    :cond_7
    move v0, v2

    .line 1463
    goto :goto_1
.end method

.method private static aJ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    const/4 v0, 0x0

    .line 1232
    :goto_0
    return v0

    .line 1231
    :cond_0
    sget-object v0, Lcom/android/ex/chips/RecipientEditTextView;->adX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private aK(Ljava/lang/String;)Lcom/android/ex/chips/ae;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    :goto_0
    return-object v2

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    invoke-static {p1}, Lcom/android/ex/chips/ae;->aO(Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v2

    goto :goto_0

    .line 1243
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->aL(Ljava/lang/String;)Z

    move-result v1

    .line 1246
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 1249
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1250
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1251
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object v2

    goto :goto_0

    .line 1254
    :cond_2
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1256
    invoke-static {v0, v1}, Lcom/android/ex/chips/ae;->i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object v2

    goto :goto_0

    .line 1263
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    .line 1265
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1267
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1271
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 1272
    array-length v4, v2

    if-lez v4, :cond_4

    .line 1273
    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1274
    const/4 v1, 0x1

    .line 1288
    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    invoke-static {v0, v1}, Lcom/android/ex/chips/ae;->i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v0, v2

    move v1, v3

    .line 1283
    goto :goto_1

    :cond_6
    move-object v0, p1

    .line 1288
    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method private aL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private aM(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/android/ex/chips/RecipientEditTextView;I)I
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->bs(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)I
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/android/ex/chips/a/b;)I
    .locals 1

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/android/ex/chips/ae;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    :goto_0
    return-object v0

    .line 1879
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 1880
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1881
    iget-boolean v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-nez v2, :cond_1

    .line 1883
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;

    move-result-object v2

    .line 1884
    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1886
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/ex/chips/a/b;->aP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 1892
    goto :goto_0

    .line 1887
    :catch_0
    move-exception v1

    .line 1888
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mE()V

    return-void
.end method

.method static synthetic b(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->aM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bs(I)I
    .locals 3

    .prologue
    .line 933
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aei:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method private bt(I)Lcom/android/ex/chips/a/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1813
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/a/b;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 1816
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1817
    aget-object v2, v0, v1

    .line 1818
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v3

    .line 1819
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/a/b;)I

    move-result v4

    .line 1820
    if-lt p1, v3, :cond_0

    if-gt p1, v4, :cond_0

    move-object v0, v2

    .line 1824
    :goto_1
    return-object v0

    .line 1816
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private bu(I)I
    .locals 5

    .prologue
    .line 1920
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/a;->bo(I)Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v0

    .line 1921
    if-nez v0, :cond_0

    .line 1922
    const/4 v0, -0x1

    .line 1937
    :goto_0
    return v0

    .line 1924
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 1926
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    .line 1927
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1929
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1930
    const-string v4, ""

    invoke-static {v3, v2, v1, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1931
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/ae;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_1

    if-ltz v2, :cond_1

    if-ltz v1, :cond_1

    .line 1933
    invoke-interface {v3, v2, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1935
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mK()V

    .line 1937
    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private bv(I)Lcom/android/ex/chips/X;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2018
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 2020
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2021
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2022
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeB:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    add-int v8, v0, v3

    .line 2024
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    float-to-int v7, v0

    .line 2025
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2026
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2028
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2029
    if-eqz v3, :cond_0

    .line 2030
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v3, v7, v3

    move v5, v3

    .line 2032
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aep:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2034
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2035
    invoke-virtual {v0, v2, v2, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2036
    new-instance v1, Lcom/android/ex/chips/X;

    invoke-direct {v1, p0, v0}, Lcom/android/ex/chips/X;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method private bw(I)I
    .locals 2

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 2680
    :cond_0
    :goto_0
    return p1

    .line 2671
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2672
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3

    .line 2673
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 2677
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 2678
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private c(Lcom/android/ex/chips/a/b;)Lcom/android/ex/chips/a/b;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2194
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2195
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->ne()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2196
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2197
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2198
    invoke-interface {v4, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2199
    invoke-interface {v4, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2200
    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2202
    sub-int v4, v0, v5

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_0

    .line 2203
    add-int/lit8 v0, v0, 0x1

    .line 2205
    :cond_0
    invoke-interface {v3, v5, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2206
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2207
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2208
    invoke-interface {v3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-object v0, v1

    .line 2209
    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->aL(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/chips/ae;->i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;

    move-result-object v0

    .line 2246
    :goto_0
    return-object v0

    .line 2213
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v5

    .line 2214
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/a/b;)I

    move-result v6

    .line 2215
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2217
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mX()J

    move-result-wide v8

    const-wide/16 v10, -0x2

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    invoke-virtual {v0}, Lcom/android/ex/chips/a;->mn()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 2221
    :goto_1
    if-eqz v0, :cond_4

    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-eqz v4, :cond_4

    move-object v0, v3

    .line 2222
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2217
    goto :goto_1

    .line 2224
    :cond_4
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {p0, v4, v7}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2229
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 2230
    const-string v8, ""

    invoke-static {v7, v5, v6, v8}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2231
    if-eq v5, v12, :cond_5

    if-ne v6, v12, :cond_8

    .line 2232
    :cond_5
    const-string v5, "RecipientEditTextView"

    const-string v6, "The chip being selected no longer exists but should."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :goto_2
    invoke-interface {v4, v2}, Lcom/android/ex/chips/a/b;->setSelected(Z)V

    .line 2237
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/a/b;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2238
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    sub-int v5, v7, v5

    iget v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeg:F

    float-to-int v7, v7

    mul-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownVerticalOffset()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v6, v1, v5}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2240
    :cond_6
    if-eqz v0, :cond_a

    .line 2241
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeR:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bs(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aew:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aew:Landroid/view/View;

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    new-instance v0, Lcom/android/ex/chips/af;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v6

    iget-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mN()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/android/ex/chips/af;-><init>(Landroid/content/Context;Lcom/android/ex/chips/ae;Lcom/android/ex/chips/DropdownChipLayouter;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/ex/chips/J;

    invoke-direct {v0, p0, v4}, Lcom/android/ex/chips/J;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2245
    :cond_7
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    move-object v0, v4

    .line 2246
    goto/16 :goto_0

    .line 2225
    :catch_0
    move-exception v0

    .line 2226
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 2227
    goto/16 :goto_0

    .line 2234
    :cond_8
    const/16 v8, 0x21

    invoke-interface {v7, v4, v5, v6, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_9
    move-object v0, p0

    .line 2241
    goto :goto_3

    .line 2243
    :cond_a
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/android/ex/chips/R;

    invoke-direct {v2, p0, v4, v0}, Lcom/android/ex/chips/R;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v3}, Lcom/android/ex/chips/R;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4
.end method

.method private c(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;
    .locals 6

    .prologue
    .line 1941
    if-nez p1, :cond_1

    .line 1942
    const/4 p1, 0x0

    .line 1960
    :cond_0
    :goto_0
    return-object p1

    .line 1948
    :cond_1
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    .line 1949
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1950
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object p1

    goto :goto_0

    .line 1952
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/ex/chips/ae;->H(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1956
    :cond_3
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->isValid()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/chips/ae;->i(Ljava/lang/String;Z)Lcom/android/ex/chips/ae;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/a/b;)V

    return-void
.end method

.method static synthetic d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    return-object v0
.end method

.method private d(Lcom/android/ex/chips/a/b;)Z
    .locals 4

    .prologue
    .line 2251
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mX()J

    move-result-wide v0

    .line 2252
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Lcom/android/ex/chips/a/b;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2285
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v0

    .line 2286
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/a/b;)I

    move-result v1

    .line 2287
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2288
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    .line 2289
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_2

    .line 2290
    :cond_0
    const-string v0, "RecipientEditTextView"

    const-string v1, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2292
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mJ()Z

    .line 2306
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2307
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2308
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->eG()V

    .line 2309
    return-void

    .line 2294
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2295
    const-string v3, ""

    invoke-static {v2, v0, v1, v3}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2296
    invoke-interface {v2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2298
    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-nez v3, :cond_1

    .line 2299
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;

    move-result-object v3

    const/16 v4, 0x21

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    const-string v1, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private eG()V
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aev:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2326
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/ex/chips/RecipientEditTextView;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeD:I

    return v0
.end method

.method private f(Lcom/android/ex/chips/a/b;)V
    .locals 7

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2334
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2335
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2336
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2338
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    .line 2340
    :goto_0
    if-eqz v1, :cond_0

    .line 2341
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    .line 2344
    :cond_0
    :goto_1
    if-ltz v0, :cond_2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    .line 2345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2338
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2347
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2348
    if-ltz v3, :cond_3

    if-lez v0, :cond_3

    .line 2349
    invoke-interface {v4, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2351
    :cond_3
    if-eqz v1, :cond_4

    .line 2352
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 2354
    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/android/ex/chips/RecipientEditTextView;)[I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    return-object v0
.end method

.method private h(FF)I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 1767
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1772
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1769
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    goto :goto_0

    .line 1772
    :cond_2
    if-lt v0, v3, :cond_4

    :cond_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    :goto_2
    if-ltz v0, :cond_3

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_5

    move v2, v0

    :goto_3
    if-ne v2, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v2

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method static synthetic h(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aet:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic j(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aez:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic k(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeR:Z

    return v0
.end method

.method static synthetic l(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aew:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aex:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private mC()Lcom/android/ex/chips/a/b;
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 400
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 402
    :cond_0
    return-object v0
.end method

.method private mE()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 568
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v0

    .line 572
    :goto_1
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 615
    :goto_2
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mP()V

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 571
    goto :goto_1

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 588
    :cond_3
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-lez v0, :cond_5

    .line 589
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mG()V

    .line 613
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 591
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 592
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 593
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 594
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v4, Lcom/android/ex/chips/a/b;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 596
    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_4

    .line 597
    :cond_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 598
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v0, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 600
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_7

    .line 601
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bw(I)I

    move-result v0

    .line 605
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    .line 606
    if-eq v0, v4, :cond_8

    .line 607
    invoke-direct {p0, v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->G(II)V

    goto :goto_3

    .line 609
    :cond_8
    invoke-direct {p0, v3, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(IILandroid/text/Editable;)Z

    goto :goto_3
.end method

.method private mF()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 764
    :goto_0
    iget v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeo:I

    if-nez v3, :cond_2

    move v3, v1

    .line 766
    :goto_1
    if-eqz v0, :cond_4

    if-nez v3, :cond_3

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 762
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 764
    goto :goto_1

    :cond_3
    move v1, v2

    .line 766
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private mG()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1057
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1058
    return-void
.end method

.method private mI()Z
    .locals 1

    .prologue
    .line 1363
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1364
    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1366
    const/4 v0, 0x1

    .line 1368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mJ()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1380
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v1, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return v0

    .line 1383
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1384
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    .line 1385
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v1, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1387
    invoke-direct {p0, v3, v2}, Lcom/android/ex/chips/RecipientEditTextView;->E(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1391
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bw(I)I

    move-result v0

    .line 1392
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1393
    invoke-direct {p0, v3, v0}, Lcom/android/ex/chips/RecipientEditTextView;->G(II)V

    .line 1394
    const/4 v0, 0x1

    goto :goto_0

    .line 1396
    :cond_2
    invoke-direct {p0, v3, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(IILandroid/text/Editable;)Z

    move-result v0

    goto :goto_0
.end method

.method private mK()V
    .locals 5

    .prologue
    .line 1469
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-lez v0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v1

    .line 1474
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 1475
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    .line 1476
    const/4 v0, 0x0

    .line 1477
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1478
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    .line 1480
    :cond_2
    const/4 v1, 0x0

    .line 1481
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1482
    if-eqz v0, :cond_4

    .line 1483
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1484
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1485
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_0

    .line 1489
    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_3

    .line 1490
    add-int/lit8 v0, v0, 0x1

    .line 1493
    :cond_3
    :goto_1
    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    if-ge v0, v2, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private mM()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/a/b;)V

    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    .line 1633
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 1634
    return-void
.end method

.method private mN()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1746
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1747
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aem:Z

    if-nez v1, :cond_0

    .line 1748
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10102fe

    aput v2, v1, v3

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1750
    :cond_0
    new-array v1, v3, [I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1751
    return-object v0
.end method

.method private mP()V
    .locals 15

    .prologue
    const/16 v14, 0x21

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 2080
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-eqz v0, :cond_4

    .line 2081
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    move v0, v1

    move v3, v1

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v4, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->bw(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :cond_1
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v4, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bw(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    :cond_2
    add-int/lit8 v0, v2, -0x2

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bv(I)Lcom/android/ex/chips/X;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v4, v3, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v1, v5, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v4, v3, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    .line 2135
    :cond_3
    :goto_1
    return-void

    .line 2085
    :cond_4
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeI:Z

    if-eqz v0, :cond_3

    .line 2088
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/X;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/d;

    .line 2090
    array-length v2, v0

    if-lez v2, :cond_5

    .line 2091
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2093
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v4

    .line 2095
    if-eqz v4, :cond_6

    array-length v0, v4

    if-gt v0, v5, :cond_7

    .line 2096
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    goto :goto_1

    .line 2099
    :cond_7
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2100
    array-length v6, v4

    .line 2101
    add-int/lit8 v7, v6, -0x2

    .line 2102
    invoke-direct {p0, v7}, Lcom/android/ex/chips/RecipientEditTextView;->bv(I)Lcom/android/ex/chips/X;

    move-result-object v8

    .line 2103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    .line 2106
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 2107
    sub-int v0, v6, v7

    move v2, v1

    move v3, v1

    :goto_2
    array-length v10, v4

    if-ge v0, v10, :cond_c

    .line 2108
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    sub-int v10, v6, v7

    if-ne v0, v10, :cond_8

    .line 2110
    aget-object v3, v4, v0

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 2112
    :cond_8
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_9

    .line 2113
    aget-object v2, v4, v0

    invoke-interface {v5, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 2115
    :cond_9
    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    aget-object v11, v4, v0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 2116
    :cond_a
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2117
    aget-object v11, v4, v0

    invoke-interface {v5, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 2118
    aget-object v12, v4, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Lcom/android/ex/chips/a/b;->aP(Ljava/lang/String;)V

    .line 2120
    :cond_b
    aget-object v10, v4, v0

    invoke-interface {v5, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2122
    :cond_c
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v2, v0, :cond_d

    .line 2123
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v2

    .line 2125
    :cond_d
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2126
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2127
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v9, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2128
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v8, v1, v4, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2129
    invoke-interface {v9, v2, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2130
    iput-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    .line 2132
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aen:I

    if-le v0, v1, :cond_3

    .line 2133
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    goto/16 :goto_1
.end method

.method static synthetic mS()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/android/ex/chips/RecipientEditTextView;->adY:I

    return v0
.end method

.method static synthetic n(Lcom/android/ex/chips/RecipientEditTextView;)I
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeG:I

    return v0
.end method

.method static synthetic o(Lcom/android/ex/chips/RecipientEditTextView;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeG:I

    return v0
.end method

.method private o(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1614
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return v0

    .line 1618
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1619
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1620
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1622
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1623
    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic p(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/d;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    return-object v0
.end method

.method static synthetic q(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    return-void
.end method

.method static synthetic r(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->E(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(IILandroid/text/Editable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic u(Lcom/android/ex/chips/RecipientEditTextView;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    return v0
.end method

.method static synthetic v(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic w(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/U;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeT:Lcom/android/ex/chips/U;

    return-object v0
.end method

.method static synthetic x(Lcom/android/ex/chips/RecipientEditTextView;)F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aei:F

    return v0
.end method


# virtual methods
.method final a(Lcom/android/ex/chips/ae;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1830
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1831
    invoke-virtual {p1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v2

    .line 1832
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 1836
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1837
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1850
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1851
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0

    .line 1839
    :cond_3
    if-eqz v2, :cond_4

    .line 1842
    invoke-static {v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 1843
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 1844
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1847
    :cond_4
    new-instance v3, Landroid/text/util/Rfc822Token;

    invoke-direct {v3, v0, v2, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/android/ex/chips/DropdownChipLayouter;)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 332
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {v0, p0}, Lcom/android/ex/chips/DropdownChipLayouter;->a(Lcom/android/ex/chips/o;)V

    .line 333
    return-void
.end method

.method public final a(Lcom/android/ex/chips/Z;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeW:Lcom/android/ex/chips/Z;

    .line 337
    return-void
.end method

.method final a(Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 2362
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-ne p1, v0, :cond_4

    move v1, v2

    .line 2363
    :goto_0
    if-eqz v1, :cond_0

    .line 2364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    .line 2366
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;)I

    move-result v4

    .line 2367
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/a/b;)I

    move-result v0

    .line 2368
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2369
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2370
    invoke-direct {p0, p2}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/ae;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2371
    if-eqz v6, :cond_2

    .line 2372
    if-eq v4, v7, :cond_1

    if-ne v0, v7, :cond_5

    .line 2373
    :cond_1
    const-string v0, "RecipientEditTextView"

    const-string v4, "The chip to replace does not exist but should."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-interface {v5, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2388
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2389
    if-eqz v1, :cond_3

    .line 2390
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 2392
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 2362
    goto :goto_0

    .line 2376
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2381
    :goto_2
    if-ltz v0, :cond_6

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-interface {v5, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v7, 0x20

    if-ne v3, v7, :cond_6

    .line 2382
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2384
    :cond_6
    invoke-interface {v5, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method public final ao(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3158
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aew:Landroid/view/View;

    .line 3159
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 463
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_2

    .line 465
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->adW:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/ex/chips/RecipientEditTextView;->adW:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;II)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView;->adW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 475
    iget v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    .line 476
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-lez v0, :cond_3

    .line 482
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mG()V

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public final br(I)V
    .locals 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1757
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1758
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1760
    :cond_0
    iput p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeG:I

    .line 1761
    return-void
.end method

.method public final g(Lcom/android/ex/chips/a/b;)Z
    .locals 4

    .prologue
    .line 2541
    invoke-interface {p1}, Lcom/android/ex/chips/a/b;->mX()J

    move-result-wide v0

    .line 2542
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    return-object v0
.end method

.method protected final mD()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 543
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeI:Z

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->getLocationInWindow([I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getHeight()I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    aget v1, v1, v4

    add-int/2addr v1, v0

    .line 550
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 551
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeb:[I

    aget v2, v2, v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getLineCount()I

    move-result v3

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 552
    if-le v1, v0, :cond_0

    .line 553
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    sub-int v0, v1, v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 556
    :cond_0
    return-void
.end method

.method final mH()V
    .locals 15

    .prologue
    const/16 v14, 0x2c

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v13, 0x2

    const/4 v4, 0x0

    .line 1078
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-lez v0, :cond_0

    .line 1088
    iget-object v8, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1089
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 1091
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    const/16 v2, 0x32

    if-gt v0, v2, :cond_e

    move v7, v4

    .line 1092
    :goto_1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 1093
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1094
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1096
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    add-int/lit8 v0, v0, -0x1

    .line 1097
    if-ltz v10, :cond_4

    .line 1100
    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_13

    invoke-interface {v9, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_13

    .line 1102
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    .line 1104
    :goto_2
    if-lt v7, v13, :cond_2

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeI:Z

    if-nez v0, :cond_5

    :cond_2
    move v3, v5

    :goto_3
    invoke-direct {p0, v10, v6}, Lcom/android/ex/chips/RecipientEditTextView;->F(II)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_12

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->aK(Ljava/lang/String;)Lcom/android/ex/chips/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v11, :cond_4

    :try_start_1
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v11, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;Z)Lcom/android/ex/chips/a/b;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_5
    const/16 v3, 0x21

    :try_start_2
    invoke-interface {v9, v0, v10, v6, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    :cond_3
    invoke-interface {v0, v2}, Lcom/android/ex/chips/a/b;->aP(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_4
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_5
    move v3, v4

    .line 1104
    goto :goto_3

    :cond_6
    :try_start_3
    new-instance v0, Lcom/android/ex/chips/a/c;

    invoke-direct {v0, v11}, Lcom/android/ex/chips/a/c;-><init>(Lcom/android/ex/chips/ae;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "RecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    move-object v0, v1

    goto :goto_5

    .line 1109
    :cond_8
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-gtz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/android/ex/chips/X;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/X;

    if-eqz v0, :cond_9

    array-length v3, v0

    if-lez v3, :cond_9

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :cond_9
    iput-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    invoke-interface {v2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    :goto_6
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v0, :cond_b

    const-string v3, "RecipientEditTextView"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "RecipientEditTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "There were extra characters after the last tokenizable entry."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1114
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_11

    .line 1116
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v13, :cond_f

    .line 1117
    :cond_c
    new-instance v0, Lcom/android/ex/chips/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/aa;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    .line 1139
    :goto_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    .line 1140
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1141
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 1109
    :cond_d
    :try_start_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mC()Lcom/android/ex/chips/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6

    .line 1111
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeH:Z

    goto :goto_7

    .line 1121
    :cond_f
    new-instance v0, Lcom/android/ex/chips/U;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/chips/U;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeT:Lcom/android/ex/chips/U;

    .line 1122
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeT:Lcom/android/ex/chips/U;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/U;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1124
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_10

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    .line 1131
    :goto_9
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mP()V

    goto :goto_8

    .line 1129
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    goto :goto_9

    .line 1136
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    .line 1137
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mP()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :cond_12
    move-object v2, v0

    goto/16 :goto_4

    :cond_13
    move v6, v0

    goto/16 :goto_2
.end method

.method final mL()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method final mO()[Lcom/android/ex/chips/a/b;
    .locals 4

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/android/ex/chips/a/b;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 1967
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1970
    new-instance v2, Lcom/android/ex/chips/S;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/chips/S;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1985
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/chips/a/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    return-object v0
.end method

.method protected final mQ()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3107
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    invoke-virtual {v0}, Lcom/android/ex/chips/a;->ml()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mR()Lcom/android/ex/chips/a;
    .locals 1

    .prologue
    .line 3113
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a;

    return-object v0
.end method

.method public final mz()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->f(Lcom/android/ex/chips/a/b;)V

    .line 2316
    :cond_0
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->eG()V

    .line 2317
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1990
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onAttachedToWindow()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeR:Z

    .line 351
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getDropDownAnchor()I

    move-result v0

    .line 352
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aet:Landroid/view/View;

    .line 355
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3100
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3102
    const-string v1, ""

    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeN:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3103
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3104
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2007
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 376
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    .line 377
    and-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_0

    .line 379
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 381
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 383
    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 384
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 387
    :cond_1
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 393
    return-object v1

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/ex/chips/D;->adE:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 1995
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onDetachedFromWindow()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeR:Z

    .line 343
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->eG()V

    .line 344
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 3094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeN:Ljava/lang/String;

    .line 3095
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2925
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3015
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3026
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3018
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3020
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->requestFocus()Z

    goto :goto_0

    .line 3023
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Landroid/content/ClipData;)V

    goto :goto_0

    .line 3015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 359
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 360
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mJ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v1, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    goto :goto_0

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 2931
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 489
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 490
    if-nez p1, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mE()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeI:Z

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setMaxLines(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeA:Lcom/android/ex/chips/a/d;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/ex/chips/aa;

    invoke-direct {v0, p0, v3}, Lcom/android/ex/chips/aa;-><init>(Lcom/android/ex/chips/RecipientEditTextView;B)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v7, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeJ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->ng()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v6, -0x1

    if-eq v2, v6, :cond_5

    const/16 v6, 0x21

    invoke-interface {v4, v0, v2, v1, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1908
    if-gez p3, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/ex/chips/RecipientEditTextView;->bu(I)I

    move-result v0

    .line 1913
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeW:Lcom/android/ex/chips/Z;

    if-eqz v1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeW:Lcom/android/ex/chips/Z;

    invoke-interface {v1, v0, p3}, Lcom/android/ex/chips/Z;->H(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1544
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v1, :cond_1

    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1548
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-direct {p0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->f(Lcom/android/ex/chips/a/b;)V

    .line 1551
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1568
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_3
    :goto_0
    return v0

    .line 1554
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1555
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mJ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1558
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v1, :cond_4

    .line 1559
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    goto :goto_0

    .line 1561
    :cond_4
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mI()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1551
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1331
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_0

    .line 1332
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 1333
    const/4 v0, 0x1

    .line 1335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1348
    packed-switch p1, :pswitch_data_0

    .line 1359
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1350
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_1

    .line 1352
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    goto :goto_0

    .line 1354
    :cond_1
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mJ()Z

    goto :goto_0

    .line 1348
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 309
    invoke-super/range {p0 .. p5}, Landroid/widget/MultiAutoCompleteTextView;->onLayout(ZIIII)V

    .line 311
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 313
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeC:Z

    .line 314
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2936
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_1

    .line 2952
    :cond_0
    :goto_0
    return-void

    .line 2939
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2941
    invoke-direct {p0, v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->h(FF)I

    move-result v0

    .line 2942
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v0

    .line 2943
    if-eqz v0, :cond_0

    .line 2944
    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeQ:Z

    if-eqz v1, :cond_2

    .line 2946
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    new-instance v2, Lcom/android/ex/chips/Y;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/chips/Y;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/a/b;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->f(Lcom/android/ex/chips/a/b;)V

    goto :goto_0

    .line 2949
    :cond_2
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeR:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    sget v1, Lcom/android/ex/chips/C;->adB:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/ex/chips/D;->adG:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeM:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_3
    sget v1, Lcom/android/ex/chips/D;->adF:I

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 448
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 3078
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mC()Lcom/android/ex/chips/a/b;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 432
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 433
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 3084
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3089
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .prologue
    .line 1034
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MultiAutoCompleteTextView;->onSizeChanged(IIII)V

    .line 1035
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1036
    iget v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeF:I

    if-lez v0, :cond_1

    .line 1037
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mG()V

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeP:Z

    if-nez v0, :cond_5

    .line 1044
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1045
    :goto_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_3

    .line 1046
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1039
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/android/ex/chips/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v5

    if-lez v5, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    invoke-interface {v3}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    :cond_3
    if-eqz v0, :cond_4

    .line 1049
    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeO:Landroid/widget/ScrollView;

    .line 1051
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeP:Z

    .line 1053
    :cond_5
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    .prologue
    .line 2598
    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 2599
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2601
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Landroid/content/ClipData;)V

    .line 2602
    const/4 v0, 0x1

    .line 2604
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1646
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1648
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1683
    :cond_0
    :goto_0
    return v0

    .line 1650
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1652
    const/4 v0, 0x0

    .line 1653
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-nez v4, :cond_2

    .line 1654
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeL:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1656
    :cond_2
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeN:Ljava/lang/String;

    if-nez v4, :cond_7

    if-ne v3, v2, :cond_7

    .line 1657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1659
    invoke-direct {p0, v4, v5}, Lcom/android/ex/chips/RecipientEditTextView;->h(FF)I

    move-result v4

    .line 1660
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->bt(I)Lcom/android/ex/chips/a/b;

    move-result-object v4

    .line 1661
    if-eqz v4, :cond_6

    .line 1662
    if-ne v3, v2, :cond_3

    .line 1663
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eq v0, v4, :cond_4

    .line 1664
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    .line 1665
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/a/b;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    :cond_3
    :goto_1
    move v1, v2

    move v0, v2

    .line 1680
    :goto_2
    if-ne v3, v2, :cond_0

    if-nez v1, :cond_0

    .line 1681
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    goto :goto_0

    .line 1666
    :cond_4
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-nez v0, :cond_5

    .line 1667
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 1668
    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mJ()Z

    .line 1669
    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->c(Lcom/android/ex/chips/a/b;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    goto :goto_1

    .line 1671
    :cond_5
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/ex/chips/RecipientEditTextView;->mM()V

    goto :goto_1

    .line 1676
    :cond_6
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView;->aey:Lcom/android/ex/chips/a/b;

    invoke-direct {p0, v4}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/a/b;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    move v1, v2

    .line 1677
    goto :goto_2

    :cond_7
    move v6, v0

    move v0, v1

    move v1, v6

    goto :goto_2
.end method

.method public final p(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2530
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2531
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2532
    if-eq v0, v2, :cond_3

    .line 2533
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2537
    :goto_1
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 2530
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2535
    :cond_3
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->o(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1594
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    .line 1596
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v1, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1599
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1600
    const-class v3, Lcom/android/ex/chips/a/b;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 1601
    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1602
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    .line 1610
    :goto_0
    return-void

    .line 1605
    :cond_0
    if-eqz v0, :cond_1

    .line 1606
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView;->dismissDropDown()V

    goto :goto_0

    .line 1609
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aes:Landroid/text/TextWatcher;

    .line 2412
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2413
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1323
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    check-cast p1, Lcom/android/ex/chips/a;

    .line 501
    new-instance v0, Lcom/android/ex/chips/O;

    invoke-direct {v0, p0}, Lcom/android/ex/chips/O;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/h;)V

    .line 525
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->acb:Lcom/android/ex/chips/DropdownChipLayouter;

    invoke-virtual {p1, v0}, Lcom/android/ex/chips/a;->a(Lcom/android/ex/chips/DropdownChipLayouter;)V

    .line 526
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1307
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView;->aeq:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1308
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView;->aer:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1313
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1314
    return-void
.end method
