.class final Lcom/android/mail/browse/aW;
.super Lcom/android/mail/ui/bz;
.source "SourceFile"


# instance fields
.field final synthetic auy:Lcom/android/mail/browse/SubjectAndFolderView;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/SubjectAndFolderView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    .line 177
    invoke-direct {p0, p2}, Lcom/android/mail/ui/bz;-><init>(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 204
    new-instance v0, Lcom/android/mail/text/b;

    iget-object v4, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    iget-object v1, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v1}, Lcom/android/mail/browse/SubjectAndFolderView;->f(Lcom/android/mail/browse/SubjectAndFolderView;)Landroid/support/v4/e/a;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/text/b;-><init>(Ljava/lang/String;IILcom/android/mail/ui/bA;Landroid/support/v4/e/a;Lcom/android/mail/text/c;)V

    .line 206
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 207
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/aW;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mail/browse/aW;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    iget v3, v3, Lcom/android/mail/ui/bA;->aJb:I

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Folder;->bx(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    iget v4, v4, Lcom/android/mail/ui/bA;->aJc:I

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cz(I)I

    move-result v0

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/mail/browse/aW;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/aW;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v0}, Lcom/android/mail/browse/SubjectAndFolderView;->c(Lcom/android/mail/browse/SubjectAndFolderView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v1}, Lcom/android/mail/browse/SubjectAndFolderView;->d(Lcom/android/mail/browse/SubjectAndFolderView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v2}, Lcom/android/mail/browse/SubjectAndFolderView;->e(Lcom/android/mail/browse/SubjectAndFolderView;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/mail/browse/aW;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final pR()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/mail/ui/bz;->pR()V

    .line 183
    iget-object v0, p0, Lcom/android/mail/browse/aW;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/mail/ui/bA;->aJe:I

    .line 185
    iget-object v1, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c0082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Lcom/android/mail/ui/bA;->aJf:I

    .line 187
    iget-object v1, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    const v2, 0x7f0c0083

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Lcom/android/mail/ui/bA;->aJh:I

    .line 189
    iget-object v0, p0, Lcom/android/mail/browse/aW;->aJa:Lcom/android/mail/ui/bA;

    iget-object v1, p0, Lcom/android/mail/browse/aW;->auy:Lcom/android/mail/browse/SubjectAndFolderView;

    invoke-static {v1}, Lcom/android/mail/browse/SubjectAndFolderView;->b(Lcom/android/mail/browse/SubjectAndFolderView;)I

    move-result v1

    iput v1, v0, Lcom/android/mail/ui/bA;->aJi:I

    .line 190
    return-void
.end method
