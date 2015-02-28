.class public final Lcom/android/mail/ui/bl;
.super Lcom/android/mail/ui/ConversationTipView;
.source "SourceFile"


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aHs:Lcom/android/mail/i/a;

.field private aIN:Lcom/android/mail/ui/bV;

.field private aIO:Lcom/android/mail/providers/Folder;

.field private aIP:I

.field private final aIQ:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private aqI:Landroid/app/LoaderManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/bl;->Nc:Lcom/android/mail/providers/Account;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/bl;->aIP:I

    .line 86
    new-instance v0, Lcom/android/mail/ui/bn;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bn;-><init>(Lcom/android/mail/ui/bl;)V

    iput-object v0, p0, Lcom/android/mail/ui/bl;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/bl;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/ui/bl;->aIO:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/bl;Lcom/android/mail/providers/Folder;)Lcom/android/mail/providers/Folder;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mail/ui/bl;->aIO:Lcom/android/mail/providers/Folder;

    return-object p1
.end method

.method static synthetic a(Lcom/android/mail/ui/bl;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 43
    iget v0, p0, Lcom/android/mail/ui/bl;->aIP:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/mail/ui/bl;->aIP:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mail/ui/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bl;->aIO:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    const v2, 0x7f090196

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/mail/ui/bl;->aIP:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/mail/ui/bl;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801a9

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/bl;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/bl;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v0, v6}, Lcom/android/mail/i/a;->cr(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/bl;)Lcom/android/mail/ui/bV;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/ui/bl;->aIN:Lcom/android/mail/ui/bV;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/ui/bl;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/ui/bl;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/mail/ui/bl;->aqI:Landroid/app/LoaderManager;

    .line 153
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mail/ui/bl;->Nc:Lcom/android/mail/providers/Account;

    .line 60
    invoke-virtual {p0}, Lcom/android/mail/ui/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mail/i/a;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;)Lcom/android/mail/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bl;->aHs:Lcom/android/mail/i/a;

    .line 61
    iput-object p2, p0, Lcom/android/mail/ui/bl;->aIN:Lcom/android/mail/ui/bV;

    .line 62
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mail/ui/bl;->aqI:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 79
    iget v0, p1, Lcom/android/mail/providers/Folder;->type:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/bl;->aqI:Landroid/app/LoaderManager;

    const/16 v1, 0x44c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mail/ui/bl;->aIQ:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 84
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mail/ui/bl;->aHs:Lcom/android/mail/i/a;

    iget v1, p0, Lcom/android/mail/ui/bl;->aIP:I

    invoke-virtual {v0, v1}, Lcom/android/mail/i/a;->cr(I)V

    .line 165
    invoke-super {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 166
    return-void
.end method

.method public final yE()Z
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/android/mail/ui/bl;->aIP:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/bl;->aIP:I

    iget-object v1, p0, Lcom/android/mail/ui/bl;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v1}, Lcom/android/mail/i/a;->ts()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final yN()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/mail/ui/bm;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bm;-><init>(Lcom/android/mail/ui/bl;)V

    return-object v0
.end method
