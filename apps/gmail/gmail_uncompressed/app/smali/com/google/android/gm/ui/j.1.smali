.class public final Lcom/google/android/gm/ui/j;
.super Lcom/android/mail/utils/y;
.source "SourceFile"


# instance fields
.field private bpT:I

.field private bpU:Z

.field private bpV:Ljava/lang/String;

.field private bpW:Ljava/lang/String;

.field private bpX:Ljava/lang/String;

.field private bpY:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/mail/utils/y;-><init>()V

    .line 32
    iput v0, p0, Lcom/google/android/gm/ui/j;->bpT:I

    .line 34
    iput-boolean v0, p0, Lcom/google/android/gm/ui/j;->bpU:Z

    .line 44
    iput-object p1, p0, Lcom/google/android/gm/ui/j;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqy:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 63
    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->csg:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {p1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmail_drive_chip"

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 66
    iput v0, p0, Lcom/google/android/gm/ui/j;->bpT:I

    .line 69
    iput-boolean v1, p0, Lcom/google/android/gm/ui/j;->bpU:Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpY:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpX:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpW:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpV:Ljava/lang/String;

    .line 109
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 110
    invoke-super {p0, p1}, Lcom/android/mail/utils/y;->a(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 112
    :cond_1
    return-void

    .line 64
    :cond_2
    const-string v4, " "

    invoke-static {v2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0

    .line 72
    :cond_5
    iget v2, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v2, :cond_6

    .line 73
    iget v1, p0, Lcom/google/android/gm/ui/j;->bpT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gm/ui/j;->bpT:I

    goto :goto_1

    :cond_6
    move v0, v1

    .line 77
    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v3, :cond_9

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cpZ:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 79
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->csF:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpW:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->ctx:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_8

    .line 86
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpV:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_8
    iget-object v1, p0, Lcom/google/android/gm/ui/j;->bpW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpV:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_9
    iget v3, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v3, :cond_a

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->cqS:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 98
    iget-object v1, p0, Lcom/google/android/gm/ui/j;->bpY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 99
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->ctJ:Lcom/google/android/mail/common/html/parser/a;

    invoke-virtual {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->a(Lcom/google/android/mail/common/html/parser/a;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/j;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ui/j;->bpY:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_a
    iget v3, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v3, :cond_b

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crt:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 105
    iput-boolean v0, p0, Lcom/google/android/gm/ui/j;->bpU:Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    .line 107
    goto/16 :goto_1
.end method

.method protected final a(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v1

    .line 117
    const/4 v7, 0x1

    .line 119
    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->cqy:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget v1, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v1, :cond_0

    .line 121
    iget v0, p0, Lcom/google/android/gm/ui/j;->bpT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ui/j;->bpT:I

    .line 122
    iget v0, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-nez v0, :cond_3

    .line 124
    iget-object v8, p0, Lcom/google/android/gm/ui/j;->aPx:Landroid/text/SpannableStringBuilder;

    new-instance v0, Lcom/google/android/gm/ui/e;

    iget-object v1, p0, Lcom/google/android/gm/ui/j;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/ui/j;->bpV:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ui/j;->bpX:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/ui/j;->bpW:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gm/ui/j;->bpY:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/ui/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v0, v7

    .line 136
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 137
    invoke-super {p0, p1}, Lcom/android/mail/utils/y;->a(Lcom/google/android/mail/common/html/parser/g;)V

    .line 139
    :cond_1
    return-void

    .line 130
    :cond_2
    iget v2, p0, Lcom/google/android/gm/ui/j;->bpT:I

    if-lez v2, :cond_0

    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->crt:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iput-boolean v0, p0, Lcom/google/android/gm/ui/j;->bpU:Z

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/i;II)V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/gm/ui/j;->bpU:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/k;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/google/android/mail/common/html/parser/k;

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/j;->bpX:Ljava/lang/String;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/utils/y;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    goto :goto_0
.end method
