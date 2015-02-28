.class public final Lcom/google/android/gm/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spanned;


# static fields
.field private static final bpD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final bpE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bcb:Landroid/content/Context;

.field private final bpA:Landroid/text/SpannedString;

.field private final bpB:Ljava/lang/String;

.field private final bpC:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f0200b8

    const v4, 0x7f0200b7

    const v3, 0x7f0200af

    .line 53
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "application/pdf"

    const v2, 0x7f0200ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "text/plain"

    const v2, 0x7f0200b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.document"

    const v2, 0x7f0200a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.spreadsheet"

    const v2, 0x7f0200b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.presentation"

    const v2, 0x7f0200b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/msword"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.ms-excel"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ui/e;->bpD:Ljava/util/Map;

    .line 71
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "application/pdf"

    const-string v2, "icon_10_pdf_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "text/plain"

    const-string v2, "icon_10_text_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.document"

    const-string v2, "icon_11_document_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.spreadsheet"

    const-string v2, "icon_11_spreadsheet_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.presentation"

    const-string v2, "icon_11_presentation_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v2, "icon_10_word_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v2, "icon_10_excel_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v2, "icon_10_powerpoint_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/msword"

    const-string v2, "icon_10_word_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "icon_10_excel_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "icon_10_powerpoint_list.png"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ui/e;->bpE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 90
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/ui/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/gm/ui/e;->bcb:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/google/android/gm/ui/e;->name:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/google/android/gm/ui/e;->bpB:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/google/android/gm/ui/e;->mimeType:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lcom/google/android/gm/ui/e;->bpC:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v1, Lcom/google/android/gm/ui/g;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ui/g;-><init>(Lcom/google/android/gm/ui/e;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 109
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    .line 110
    return-void
.end method

.method static synthetic Io()Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gm/ui/e;->bpD:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/ui/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bcb:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/text/Spanned;Lcom/google/android/gm/ui/i;)Lcom/android/mail/compose/z;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 120
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 121
    new-instance v5, Lcom/google/android/gm/ui/f;

    invoke-direct {v5, p1}, Lcom/google/android/gm/ui/f;-><init>(Lcom/google/android/gm/ui/i;)V

    .line 124
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v6

    move v1, v2

    .line 125
    :goto_0
    if-ge v1, v6, :cond_3

    .line 126
    const-class v0, Lcom/google/android/gm/ui/g;

    invoke-interface {p0, v1, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 127
    const-class v0, Lcom/google/android/gm/ui/g;

    invoke-interface {p0, v1, v3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/ui/g;

    .line 128
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 129
    :cond_0
    invoke-virtual {v4, p0, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    :goto_1
    move v1, v3

    .line 125
    goto :goto_0

    .line 130
    :cond_1
    array-length v1, v0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 132
    aget-object v0, v0, v2

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gm/ui/g;->Iq()Lcom/google/android/gm/ui/e;

    move-result-object v0

    .line 135
    invoke-static {v5}, Lcom/google/android/gm/ui/f;->a(Lcom/google/android/gm/ui/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, v0, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 139
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected span count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_3
    new-instance v0, Lcom/android/mail/compose/z;

    invoke-direct {v0, v4, v5}, Lcom/android/mail/compose/z;-><init>(Landroid/text/Spanned;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 147
    check-cast p1, Lcom/google/android/gm/ui/f;

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    invoke-static {p1}, Lcom/google/android/gm/ui/f;->a(Lcom/google/android/gm/ui/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gm/ui/e;

    .line 152
    iget-object v0, v6, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 153
    if-gez v9, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chip not found:\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\nmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/ui/f;->b(Lcom/google/android/gm/ui/f;)Lcom/google/android/gm/ui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ui/i;->reset()V

    iget-object v1, v6, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    iget-object v2, v6, Lcom/google/android/gm/ui/e;->name:Ljava/lang/String;

    iget-object v3, v6, Lcom/google/android/gm/ui/e;->bpB:Ljava/lang/String;

    iget-object v4, v6, Lcom/google/android/gm/ui/e;->mimeType:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gm/ui/e;->bpC:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gm/ui/i;->xf()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, v6, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7, v9, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v9

    move v1, v0

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1}, Landroid/text/SpannedString;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1}, Landroid/text/SpannedString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0}, Landroid/text/SpannedString;->length()I

    move-result v0

    return v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannedString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0, p1, p2}, Landroid/text/SpannedString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gm/ui/e;->bpA:Landroid/text/SpannedString;

    invoke-virtual {v0}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
