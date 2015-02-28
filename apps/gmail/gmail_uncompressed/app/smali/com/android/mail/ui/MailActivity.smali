.class public Lcom/android/mail/ui/MailActivity;
.super Lcom/android/mail/ui/N;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/as;


# static fields
.field protected static aLb:Ljava/lang/String;


# instance fields
.field private KD:Landroid/view/accessibility/AccessibilityManager;

.field private aDb:Lcom/android/mail/ui/dD;

.field private aKY:Lcom/android/mail/ui/ToastBarOperation;

.field private aKZ:Z

.field protected aLa:Lcom/android/mail/ui/aF;

.field private aLc:Lcom/android/a/a;

.field private aLd:Lcom/android/mail/ui/CustomViewToolbar;

.field private final aLe:Lcom/android/mail/ui/co;

.field private aqm:Lcom/android/mail/ui/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/ui/MailActivity;->aLb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/mail/ui/N;-><init>()V

    .line 128
    new-instance v0, Lcom/android/mail/ui/co;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mail/ui/co;-><init>(B)V

    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLe:Lcom/android/mail/ui/co;

    .line 132
    new-instance v0, Lcom/android/mail/ui/aF;

    invoke-direct {v0}, Lcom/android/mail/ui/aF;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLa:Lcom/android/mail/ui/aF;

    .line 133
    return-void
.end method

.method public static cp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    sput-object p0, Lcom/android/mail/ui/MailActivity;->aLb:Ljava/lang/String;

    .line 247
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;Lcom/android/a/a;)Lcom/android/mail/b/j;
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/android/mail/b/j;

    invoke-direct {v0, p1, p2}, Lcom/android/mail/b/j;-><init>(Landroid/content/ContentResolver;Lcom/android/a/a;)V

    return-object v0
.end method

.method public final a(Landroid/support/v7/c/a;)V
    .locals 1

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->a(Landroid/support/v7/c/a;)V

    .line 501
    const v0, 0x7f0a00cc

    invoke-static {p0, v0}, Lcom/android/mail/utils/al;->a(Landroid/app/Activity;I)V

    .line 502
    return-void
.end method

.method public a(Lcom/android/mail/providers/Account;I)V
    .locals 1

    .prologue
    .line 488
    invoke-static {p2}, Lcom/android/mail/ui/dD;->dl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090064

    .line 491
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/Context;Lcom/android/mail/providers/Account;Ljava/lang/String;)V

    .line 492
    return-void

    .line 488
    :cond_0
    const v0, 0x7f090063

    goto :goto_0
.end method

.method public final a(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 382
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ae;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->a(Lcom/android/mail/ui/ae;)V

    .line 412
    return-void
.end method

.method public final b(Landroid/support/v7/c/a;)V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->b(Landroid/support/v7/c/a;)V

    .line 507
    const v0, 0x7f0a00ca

    invoke-static {p0, v0}, Lcom/android/mail/utils/al;->a(Landroid/app/Activity;I)V

    .line 508
    return-void
.end method

.method public final b(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/mail/ui/MailActivity;->aKY:Lcom/android/mail/ui/ToastBarOperation;

    .line 402
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 138
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final e(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->e(Lcom/android/mail/providers/Folder;)V

    .line 437
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/mail/ui/ac;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->cM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0}, Lcom/android/mail/ui/N;->onBackPressed()V

    .line 159
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->cU()V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "cold_start_to_list"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->yl()V

    .line 172
    new-instance v0, Lcom/android/mail/ui/dD;

    invoke-direct {v0}, Lcom/android/mail/ui/dD;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->aDb:Lcom/android/mail/ui/dD;

    .line 173
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aDb:Lcom/android/mail/ui/dD;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/mail/ui/dt;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/dt;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V

    :goto_0
    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    .line 176
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->xr()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->setContentView(I)V

    .line 178
    const v0, 0x7f0d01cb

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 179
    instance-of v1, v0, Lcom/android/mail/ui/CustomViewToolbar;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 181
    check-cast v1, Lcom/android/mail/ui/CustomViewToolbar;

    iput-object v1, p0, Lcom/android/mail/ui/MailActivity;->aLd:Lcom/android/mail/ui/CustomViewToolbar;

    .line 182
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aLd:Lcom/android/mail/ui/CustomViewToolbar;

    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    iget-object v3, p0, Lcom/android/mail/ui/MailActivity;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/mail/ui/CustomViewToolbar;->a(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ac;Lcom/android/mail/ui/dD;)V

    .line 183
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->aLd:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ac;->a(Lcom/android/mail/ui/dy;)V

    .line 186
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 187
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v1}, Lcom/android/mail/ui/ac;->wG()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0}, Landroid/support/v7/app/a;->cx()V

    .line 193
    invoke-virtual {v0}, Landroid/support/v7/app/a;->cz()V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->KD:Landroid/view/accessibility/AccessibilityManager;

    .line 201
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->KD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailActivity;->aKZ:Z

    .line 202
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_3

    .line 204
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aLe:Lcom/android/mail/ui/co;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 209
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 210
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "configuration"

    const-string v2, "keyboard"

    const-string v3, "use_hardware_keyboard"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 216
    :goto_1
    return-void

    .line 174
    :cond_4
    new-instance v0, Lcom/android/mail/ui/cK;

    invoke-direct {v0, p0, v1}, Lcom/android/mail/ui/cK;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/dD;)V

    goto/16 :goto_0

    .line 213
    :cond_5
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "configuration"

    const-string v2, "keyboard"

    const-string v3, "do_not_use_hardware_keyboard"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/N;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/mail/ui/N;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLd:Lcom/android/mail/ui/CustomViewToolbar;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLd:Lcom/android/mail/ui/CustomViewToolbar;

    invoke-virtual {v0}, Lcom/android/mail/ui/CustomViewToolbar;->onDestroy()V

    .line 338
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/N;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/mail/ui/N;->onPause()V

    .line 279
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onPause()V

    .line 280
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onPostCreate(Landroid/os/Bundle;)V

    .line 222
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->vW()V

    .line 223
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/N;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    .line 286
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 291
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/mail/ui/N;->onRestart()V

    .line 234
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onRestart()V

    .line 235
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 252
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/mail/ui/N;->onResume()V

    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->KD:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 299
    iget-boolean v1, p0, Lcom/android/mail/ui/MailActivity;->aKZ:Z

    if-eq v0, v1, :cond_0

    .line 300
    iput-boolean v0, p0, Lcom/android/mail/ui/MailActivity;->aKZ:Z

    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wx()V

    .line 303
    :cond_0
    invoke-static {p0}, Lcom/android/mail/utils/aa;->aE(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wu()V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/mail/ui/N;->onStart()V

    .line 315
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onStart()V

    .line 316
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/mail/ui/N;->onStop()V

    .line 327
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->onStop()V

    .line 328
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/android/mail/ui/N;->onWindowFocusChanged(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0, p1}, Lcom/android/mail/ui/ac;->onWindowFocusChanged(Z)V

    .line 344
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v1, "{ViewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aDb:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, " controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, " current_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vU()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->vU()Lcom/android/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public final wC()Lcom/android/mail/ui/bs;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wC()Lcom/android/mail/ui/bs;

    move-result-object v0

    return-object v0
.end method

.method public final wq()Lcom/android/mail/ui/ConversationCheckedSet;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wq()Lcom/android/mail/ui/ConversationCheckedSet;

    move-result-object v0

    return-object v0
.end method

.method public final xX()Lcom/android/mail/ui/dD;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aDb:Lcom/android/mail/ui/dD;

    return-object v0
.end method

.method public final xY()Lcom/android/mail/ui/av;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final xZ()Lcom/android/mail/ui/bV;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final ya()Lcom/android/mail/ui/aP;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final yb()Lcom/android/mail/ui/bx;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final yc()Lcom/android/mail/ui/by;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final yd()Lcom/android/mail/ui/O;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final ye()Lcom/android/mail/ui/cM;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final yf()Lcom/android/mail/ui/ck;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public final yg()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/mail/ui/MailActivity;->aKZ:Z

    return v0
.end method

.method public final yh()Lcom/android/mail/ui/aF;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLa:Lcom/android/mail/ui/aF;

    return-object v0
.end method

.method public final yi()Lcom/android/mail/ui/bZ;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aqm:Lcom/android/mail/ui/ac;

    return-object v0
.end method

.method public yj()Lcom/android/mail/ui/ar;
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/android/mail/ui/ar;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/ar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final yk()Lcom/android/a/a;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aLc:Lcom/android/a/a;

    return-object v0
.end method

.method public final yl()V
    .locals 2

    .prologue
    .line 476
    new-instance v1, Lcom/android/a/k;

    invoke-static {p0}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/a/k;-><init>(I)V

    iput-object v1, p0, Lcom/android/mail/ui/MailActivity;->aLc:Lcom/android/a/a;

    .line 477
    return-void

    .line 476
    :cond_0
    const v0, 0x54c00

    goto :goto_0
.end method

.method public zJ()Lcom/android/mail/providers/z;
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lcom/android/mail/providers/C;

    invoke-direct {v0, p0}, Lcom/android/mail/providers/C;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final zy()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->aKY:Lcom/android/mail/ui/ToastBarOperation;

    return-object v0
.end method
