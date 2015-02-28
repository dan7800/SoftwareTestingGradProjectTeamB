.class public final Lcom/android/mail/ui/aM;
.super Lcom/android/mail/ui/ConversationTipView;
.source "SourceFile"


# static fields
.field public static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aHo:Lcom/android/mail/i/g;

.field private aHs:Lcom/android/mail/i/a;

.field private aHt:I

.field private aqp:Lcom/android/mail/providers/Folder;

.field private pe:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/aM;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v0, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    .line 51
    iput-object v0, p0, Lcom/android/mail/ui/aM;->aqp:Lcom/android/mail/providers/Folder;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    .line 70
    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aM;->aHo:Lcom/android/mail/i/g;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/aM;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    return v0
.end method

.method static synthetic b(Lcom/android/mail/ui/aM;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/ui/aM;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/ui/aM;->pe:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/as;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    .line 91
    invoke-virtual {p0}, Lcom/android/mail/ui/aM;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mail/i/a;->c(Landroid/content/Context;Lcom/android/mail/providers/Account;)Lcom/android/mail/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/aM;->aHs:Lcom/android/mail/i/a;

    .line 92
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mail/ui/aM;->pe:Landroid/app/Activity;

    .line 93
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/mail/ui/aM;->aqp:Lcom/android/mail/providers/Folder;

    .line 98
    return-void
.end method

.method public final dismiss()V
    .locals 6

    .prologue
    .line 179
    iget v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v3, 0x0

    .line 192
    :goto_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "sync_disabled_tip"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 193
    invoke-super {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 194
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tL()V

    .line 182
    const-string v3, "auto_sync_off"

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v0}, Lcom/android/mail/i/a;->tr()V

    .line 186
    const-string v3, "account_sync_off"

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final yE()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/aM;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAb:I

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aHo:Lcom/android/mail/i/g;

    iget-object v3, p0, Lcom/android/mail/ui/aM;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, p0, Lcom/android/mail/ui/aM;->aHs:Lcom/android/mail/i/a;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/mail/i/a;->tq()V

    sget-object v0, Lcom/android/mail/ui/aM;->mW:Ljava/lang/String;

    const-string v3, "getMasterSyncAutomatically() return false"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/android/mail/ui/aM;->aHt:I

    if-eq v3, v0, :cond_2

    iput v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    invoke-virtual {p0}, Lcom/android/mail/ui/aM;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/android/mail/ui/aM;->aHt:I

    packed-switch v3, :pswitch_data_0

    .line 113
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    if-eqz v0, :cond_3

    .line 114
    sget-object v0, Lcom/android/mail/ui/aM;->mW:Ljava/lang/String;

    const-string v3, "Sync is off with reason %d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/mail/ui/aM;->aHt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :cond_3
    iget v0, p0, Lcom/android/mail/ui/aM;->aHt:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aHo:Lcom/android/mail/i/g;

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tJ()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {v0}, Lcom/android/mail/i/g;->tK()V

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    iget-object v5, v3, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v3, v3, Lcom/android/mail/providers/Account;->ayC:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/android/mail/i/a;->tq()V

    move v0, v2

    goto :goto_1

    :pswitch_1
    const v3, 0x7f090194

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/aM;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f090195

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/mail/utils/ac;->a(Landroid/text/Spannable;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/mail/ui/aM;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    :pswitch_3
    iget-object v0, p0, Lcom/android/mail/ui/aM;->aHs:Lcom/android/mail/i/a;

    invoke-virtual {v0}, Lcom/android/mail/i/a;->tp()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final yN()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/mail/ui/aN;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/aN;-><init>(Lcom/android/mail/ui/aM;)V

    return-object v0
.end method
