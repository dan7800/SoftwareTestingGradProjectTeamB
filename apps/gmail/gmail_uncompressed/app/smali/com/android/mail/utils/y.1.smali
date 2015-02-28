.class public Lcom/android/mail/utils/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/mail/common/html/parser/s",
        "<",
        "Landroid/text/Spanned;",
        ">;"
    }
.end annotation


# instance fields
.field private aPA:I

.field protected final aPx:Landroid/text/SpannableStringBuilder;

.field private final aPy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/mail/utils/z;",
            ">;"
        }
    .end annotation
.end field

.field private final aPz:Lcom/google/android/mail/common/html/parser/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/y;->aPy:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Lcom/google/android/mail/common/html/parser/u;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/u;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/y;->aPz:Lcom/google/android/mail/common/html/parser/u;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/utils/y;->aPA:I

    .line 215
    return-void
.end method

.method private a(Lcom/android/mail/utils/z;)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/16 v8, 0x21

    .line 171
    iget v1, p1, Lcom/android/mail/utils/z;->aPC:I

    .line 172
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 175
    iget-object v0, p1, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->csm:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v0, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 178
    if-eq v0, v6, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x1000000

    or-int/2addr v0, v5

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v4, v1, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    :cond_0
    iget-object v0, p1, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->ctH:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v0, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    if-eq v0, v6, :cond_1

    .line 189
    iget-object v3, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    mul-int/lit8 v0, v0, 0x6

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v3, v4, v1, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    :cond_1
    iget-object v0, p1, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->csz:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v0, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 199
    iget-object v6, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    new-instance v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v1, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    return-void
.end method


# virtual methods
.method public final AS()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPy:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/mail/utils/z;

    iget-object v2, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/android/mail/utils/z;-><init>(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/z;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    :cond_1
    if-nez v0, :cond_3

    .line 165
    :cond_2
    :goto_0
    return-void

    .line 133
    :cond_3
    const/4 v1, 0x0

    .line 134
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqf:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 160
    :cond_4
    :goto_1
    iget v0, v0, Lcom/android/mail/utils/z;->aPC:I

    .line 161
    iget-object v2, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 162
    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 137
    :cond_5
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqQ:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 139
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_1

    .line 140
    :cond_6
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crJ:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto :goto_1

    .line 143
    :cond_7
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cpZ:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 145
    iget-object v1, v0, Lcom/android/mail/utils/z;->aPB:Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->csF:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_2

    .line 150
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_8
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqk:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 153
    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    goto :goto_1

    .line 154
    :cond_9
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqD:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    invoke-direct {p0, v0}, Lcom/android/mail/utils/y;->a(Lcom/android/mail/utils/z;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/mail/common/html/parser/i;II)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPz:Lcom/google/android/mail/common/html/parser/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/u;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    .line 93
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v0, :cond_2

    .line 94
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    invoke-virtual {p0, p1}, Lcom/android/mail/utils/y;->a(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPz:Lcom/google/android/mail/common/html/parser/u;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/u;->Wo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/android/mail/utils/y;->aPA:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Lcom/android/mail/utils/y;->aPA:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/mail/utils/y;->aPA:I

    .line 99
    :cond_1
    return-void

    .line 95
    :cond_2
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/g;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/google/android/mail/common/html/parser/g;

    invoke-virtual {p0, p1}, Lcom/android/mail/utils/y;->a(Lcom/google/android/mail/common/html/parser/g;)V

    goto :goto_0
.end method

.method public final bridge synthetic getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mail/utils/y;->aPx:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
