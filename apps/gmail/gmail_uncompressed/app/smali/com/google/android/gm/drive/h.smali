.class public final Lcom/google/android/gm/drive/h;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private awy:Z

.field private baA:Landroid/widget/RadioButton;

.field private baB:Landroid/view/View;

.field private baC:Landroid/widget/Spinner;

.field private baD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field

.field private baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

.field private baj:I

.field private bap:Z

.field private bav:Landroid/widget/RadioGroup;

.field private baw:Landroid/widget/Spinner;

.field private bax:Landroid/view/View;

.field private bay:Landroid/view/View;

.field private baz:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/drive/h;->bap:Z

    .line 75
    return-void
.end method

.method private Dp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bax:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baA:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baB:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/drive/h;->bap:Z

    .line 308
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 213
    if-eqz p3, :cond_2

    .line 214
    const v1, 0x7f0d019c

    .line 215
    const v0, 0x7f0d019d

    move v8, v0

    move v0, v1

    move v1, v8

    .line 222
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 223
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->Dq()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 227
    const-string v4, "ADD_COLLABORATORS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    const v2, 0x7f0903aa

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    const v2, 0x7f0903b2

    .line 239
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 243
    const v0, 0x7f0d01a5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 244
    new-instance v1, Lcom/google/android/gm/drive/i;

    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->Dt()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/google/android/gm/drive/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 261
    const v6, 0x1090009

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    invoke-virtual {v0, p4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 266
    if-eqz v2, :cond_0

    .line 267
    const v1, 0x7f0d01a6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->Du()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    const v1, 0x7f0d01a7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    const v2, 0x7f11001f

    invoke-virtual {v5, v2, p5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :cond_1
    return-object v0

    .line 217
    :cond_2
    const v1, 0x7f0d01a0

    .line 218
    const v0, 0x7f0d01a1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    .line 230
    :cond_3
    const-string v4, "INCREASE_PUBLIC_VISIBILITY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    const v2, 0x7f0903ab

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    const v2, 0x7f0903b3

    goto :goto_1

    .line 234
    :cond_4
    const v2, 0x7f0903ac

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/android/gm/drive/PotentialFix;->Dv()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v5, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object v4, v2

    move v2, v3

    .line 237
    goto/16 :goto_1
.end method

.method public static b(Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)Lcom/google/android/gm/drive/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;IZ)",
            "Lcom/google/android/gm/drive/h;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v6, Lcom/google/android/gm/drive/h;

    invoke-direct {v6}, Lcom/google/android/gm/drive/h;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 82
    const-string v1, "dialogState"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    const-string v1, "potentialFixes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    const-string v1, "numFiles"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "showToast"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v6, v0}, Lcom/google/android/gm/drive/h;->setArguments(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    if-nez p0, :cond_0

    const-string v3, "shown"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    return-object v6

    .line 88
    :cond_0
    const-string v3, "re_shown"

    goto :goto_0
.end method

.method static synthetic dF(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 34
    const-string v0, "READER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0903af

    :goto_0
    return v0

    :cond_0
    const-string v0, "COMMENTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0903b0

    goto :goto_0

    :cond_1
    const-string v0, "WRITER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0903b1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    const v0, 0x7f0d019c

    if-ne p2, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    const v0, 0x7f0d01a0

    if-ne p2, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .prologue
    .line 327
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 330
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 335
    const v0, 0x7f0d019c

    if-ne v4, v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    .line 337
    iget-object v1, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    const-string v3, "0"

    .line 339
    const/4 v2, 0x0

    move v7, v2

    move-object v8, v3

    move-object v2, v1

    move-object v1, v0

    .line 352
    :goto_0
    new-instance v3, Lcom/google/android/gm/drive/FixPermissionDialogState;

    iget-boolean v0, p0, Lcom/google/android/gm/drive/h;->bap:Z

    invoke-direct {v3, v0, v4, v9, v10}, Lcom/google/android/gm/drive/FixPermissionDialogState;-><init>(ZIII)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gm/drive/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ComposeActivityGmail;

    iget-object v4, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    iget v5, p0, Lcom/google/android/gm/drive/h;->baj:I

    iget-boolean v6, p0, Lcom/google/android/gm/drive/h;->awy:Z

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/ComposeActivityGmail;->a(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;IZ)V

    .line 356
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "fix_selected"

    int-to-long v4, v7

    move-object v3, v8

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 358
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    const-string v3, "first_spinner_position"

    int-to-long v4, v9

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 361
    iget-boolean v0, p0, Lcom/google/android/gm/drive/h;->bap:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    const-string v3, "second_spinner_position"

    int-to-long v4, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 365
    :cond_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    const-string v3, "confirm"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 371
    :cond_1
    :goto_1
    return-void

    .line 340
    :cond_2
    const v0, 0x7f0d01a0

    if-ne v4, v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    .line 342
    iget-object v1, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    const-string v3, "1"

    .line 344
    const/4 v2, 0x1

    move v7, v2

    move-object v8, v3

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 346
    :cond_3
    const/4 v3, 0x0

    .line 347
    const/4 v2, 0x0

    .line 348
    const-string v1, "2"

    .line 349
    const/4 v0, 0x2

    move v7, v0

    move-object v8, v1

    move-object v1, v3

    goto :goto_0

    .line 367
    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 368
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 314
    const v1, 0x7f0d019e

    if-ne v0, v1, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/google/android/gm/drive/h;->Dp()V

    .line 316
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "acl_fixer"

    const-string v2, "acl_fixer_dialog"

    const-string v3, "more_options_clicked"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const v1, 0x7f0d01a4

    if-ne v0, v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/google/android/gm/drive/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->bd(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const v11, 0x7f0d000f

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 96
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gm/drive/h;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 101
    const-string v1, "dialogState"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/drive/FixPermissionDialogState;

    iput-object v1, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 102
    const-string v1, "potentialFixes"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    .line 103
    const-string v1, "numFiles"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/drive/h;->baj:I

    .line 104
    const-string v1, "showToast"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/drive/h;->awy:Z

    .line 109
    if-eqz p1, :cond_2

    .line 110
    const-string v1, "secondOptionShown"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/drive/h;->bap:Z

    .line 112
    iput-object v9, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 118
    :cond_0
    :goto_0
    const v1, 0x7f040075

    invoke-virtual {v2, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 119
    const v1, 0x7f0d01a4

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x7f040074

    invoke-virtual {v2, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    const v2, 0x7f0d019b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    .line 124
    iget-object v2, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v4}, Lcom/google/android/gm/drive/FixPermissionDialogState;->getCheckedRadioButtonId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/drive/PotentialFix;

    iget-object v4, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v4}, Lcom/google/android/gm/drive/FixPermissionDialogState;->Dn()I

    move-result v4

    :goto_1
    iget v5, p0, Lcom/google/android/gm/drive/h;->baj:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/drive/h;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/h;->baw:Landroid/widget/Spinner;

    .line 135
    const v2, 0x7f0d01a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/h;->baB:Landroid/view/View;

    .line 136
    iget-object v2, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 137
    const v2, 0x7f0d019e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/drive/h;->bay:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/google/android/gm/drive/h;->baD:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/drive/PotentialFix;

    iget-object v3, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v3}, Lcom/google/android/gm/drive/FixPermissionDialogState;->Do()I

    move-result v4

    :goto_2
    iget v5, p0, Lcom/google/android/gm/drive/h;->baj:I

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/drive/h;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gm/drive/PotentialFix;ZII)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    .line 143
    const v0, 0x7f0d019f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/h;->baz:Landroid/view/View;

    .line 144
    const v0, 0x7f0d01a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/gm/drive/h;->baA:Landroid/widget/RadioButton;

    .line 145
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baB:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v0, 0x7f0d019d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d01a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/h;->bax:Landroid/view/View;

    .line 154
    iget-boolean v0, p0, Lcom/google/android/gm/drive/h;->bap:Z

    if-eqz v0, :cond_5

    .line 155
    invoke-direct {p0}, Lcom/google/android/gm/drive/h;->Dp()V

    .line 171
    :goto_3
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setId(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/google/android/gm/drive/h;->bav:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/drive/h;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 181
    const v0, 0x7f0d01a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 182
    const v2, 0x7f0903ad

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 185
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09009b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/android/gm/drive/h;->baE:Lcom/google/android/gm/drive/FixPermissionDialogState;

    invoke-virtual {v1}, Lcom/google/android/gm/drive/FixPermissionDialogState;->Dm()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/drive/h;->bap:Z

    goto/16 :goto_0

    :cond_3
    move v4, v6

    .line 129
    goto/16 :goto_1

    :cond_4
    move v4, v6

    .line 139
    goto/16 :goto_2

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bax:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bay:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->bay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baB:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baB:Landroid/view/View;

    const v2, 0x7f0d01a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/drive/h;->baC:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setId(I)V

    goto :goto_3
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string v0, "secondOptionShown"

    iget-boolean v1, p0, Lcom/google/android/gm/drive/h;->bap:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    return-void
.end method
