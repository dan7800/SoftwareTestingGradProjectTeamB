.class Lcom/android/mail/compose/QuotedTextView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final awL:I

.field private static awT:Ljava/lang/String;


# instance fields
.field private awM:Ljava/lang/CharSequence;

.field private awN:Landroid/webkit/WebView;

.field private awO:Lcom/android/mail/compose/B;

.field private awP:Landroid/widget/CheckBox;

.field private awQ:Z

.field private awR:Landroid/widget/Button;

.field private awS:Lcom/android/mail/compose/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x17

    sput v0, Lcom/android/mail/compose/QuotedTextView;->awL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/compose/QuotedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v2, p0, Lcom/android/mail/compose/QuotedTextView;->awQ:Z

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    const v1, 0x7f0400a6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    const v0, 0x7f0d01ef

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awN:Landroid/webkit/WebView;

    .line 84
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awN:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->a(Landroid/webkit/WebView;)V

    .line 85
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awN:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 88
    const v0, 0x7f0d01ec

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    .line 89
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/compose/QuotedTextView;->awT:Ljava/lang/String;

    .line 94
    const v0, 0x7f0d01ed

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method private aS(Z)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 114
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static bz(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 348
    const-string v0, "<br type=\'attribution\'>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/android/mail/compose/QuotedTextView;->awL:I

    add-int/2addr v0, v1

    return v0
.end method

.method private s(Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 320
    iput-object p1, p0, Lcom/android/mail/compose/QuotedTextView;->awM:Ljava/lang/CharSequence;

    .line 321
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<head><style type=\"text/css\">* body { color: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; }</style></head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mail/compose/QuotedTextView;->awM:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awN:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private sS()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public static t(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, -0x1

    .line 361
    :goto_0
    return v0

    .line 360
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/android/mail/compose/QuotedTextView;->awT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/android/mail/providers/Message;Z)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 242
    invoke-virtual {p0, v9}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 243
    iget-object v0, p2, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/mail/providers/Message;->aBg:Ljava/lang/String;

    .line 244
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-static {v10, v11}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 246
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p2, Lcom/android/mail/providers/Message;->aBf:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 247
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 248
    if-eqz p1, :cond_0

    if-ne p1, v8, :cond_4

    .line 249
    :cond_0
    sget-object v5, Lcom/android/mail/compose/QuotedTextView;->awT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/mail/utils/ag;->j(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, "<br type=\'attribution\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v2, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "</blockquote>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/mail/compose/QuotedTextView;->s(Ljava/lang/CharSequence;)V

    .line 280
    invoke-direct {p0, p3}, Lcom/android/mail/compose/QuotedTextView;->aS(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/mail/compose/QuotedTextView;->sS()V

    .line 284
    return-void

    .line 243
    :cond_2
    iget-object v0, p2, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/text/SpannedString;

    iget-object v1, p2, Lcom/android/mail/providers/Message;->aBh:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 261
    :cond_4
    if-ne p1, v10, :cond_1

    .line 262
    sget-object v5, Lcom/android/mail/compose/QuotedTextView;->awT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/mail/utils/ag;->j(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    iget-object v2, p2, Lcom/android/mail/providers/Message;->ayV:Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/android/mail/utils/ag;->j(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/mail/utils/ag;->j(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->getCc()Ljava/lang/String;

    move-result-object v2

    .line 271
    const v3, 0x7f09008d

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v8}, Lcom/android/mail/utils/ag;->j(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v2, "<br type=\'attribution\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v0, "</blockquote>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public final a(Lcom/android/mail/compose/A;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mail/compose/QuotedTextView;->awS:Lcom/android/mail/compose/A;

    .line 158
    return-void
.end method

.method public final aT(Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->awN:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/android/mail/compose/QuotedTextView;->awQ:Z

    .line 179
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awO:Lcom/android/mail/compose/B;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awO:Lcom/android/mail/compose/B;

    .line 182
    :cond_0
    return-void

    .line 178
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final aU(Z)V
    .locals 2

    .prologue
    .line 365
    const v0, 0x7f0d01ea

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 367
    return-void

    .line 365
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c(Ljava/lang/CharSequence;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 288
    invoke-direct {p0, p1}, Lcom/android/mail/compose/QuotedTextView;->s(Ljava/lang/CharSequence;)V

    .line 289
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->aS(Z)V

    .line 292
    invoke-direct {p0}, Lcom/android/mail/compose/QuotedTextView;->sS()V

    .line 293
    return-void
.end method

.method public final d(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/mail/compose/QuotedTextView;->setVisibility(I)V

    .line 297
    if-eqz p2, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-virtual {p0}, Lcom/android/mail/compose/QuotedTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 300
    sget-object v2, Lcom/android/mail/compose/QuotedTextView;->awT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "<br type=\'attribution\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "</blockquote>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->s(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    const v0, 0x7f0d01ee

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v0, 0x7f0d01eb

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-void

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mail/compose/QuotedTextView;->s(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 164
    const v1, 0x7f0d01ed

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awM:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->awS:Lcom/android/mail/compose/A;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/compose/QuotedTextView;->awS:Lcom/android/mail/compose/A;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/mail/compose/A;->bu(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->aT(Z)V

    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awR:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0d01e9

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    const v1, 0x7f0d01ec

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awP:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/compose/QuotedTextView;->aT(Z)V

    goto :goto_0
.end method

.method public final sT()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/mail/compose/QuotedTextView;->awQ:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awM:Ljava/lang/CharSequence;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sU()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mail/compose/QuotedTextView;->awM:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final sV()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/mail/compose/QuotedTextView;->awQ:Z

    return v0
.end method
