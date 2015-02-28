.class final Lcom/android/mail/ui/cs;
.super Landroid/widget/SimpleCursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aLp:Lcom/android/mail/ui/MailboxSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/mail/ui/cs;->aLp:Lcom/android/mail/ui/MailboxSelectionActivity;

    const v2, 0x7f040093

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 259
    const v0, 0x7f0d01cf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-virtual {p0, p1}, Lcom/android/mail/ui/cs;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-object v2
.end method
