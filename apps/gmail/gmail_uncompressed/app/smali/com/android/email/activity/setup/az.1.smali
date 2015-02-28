.class public final Lcom/android/email/activity/setup/az;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/emailcommon/mail/MessagingException;)I
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->lr()I

    move-result v0

    .line 136
    sparse-switch v0, :sswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 152
    :goto_0
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->lr()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :pswitch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f090272

    .line 220
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 156
    :pswitch_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09026d

    goto :goto_1

    :cond_0
    const v0, 0x7f09026e

    goto :goto_1

    .line 161
    :pswitch_2
    const v0, 0x7f09026a

    .line 162
    goto :goto_1

    .line 164
    :pswitch_3
    const v0, 0x7f09026c

    .line 165
    goto :goto_1

    .line 167
    :pswitch_4
    const v0, 0x7f090271

    .line 168
    goto :goto_1

    .line 170
    :pswitch_5
    const v0, 0x7f090277

    .line 171
    goto :goto_1

    .line 173
    :pswitch_6
    const v0, 0x7f090274

    .line 174
    goto :goto_1

    .line 176
    :pswitch_7
    const v0, 0x7f090275

    .line 177
    goto :goto_1

    .line 179
    :pswitch_8
    const v3, 0x7f09027c

    .line 181
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->ls()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 182
    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v4, "No data for unsupported policies?"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    .line 184
    goto :goto_1

    .line 187
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    array-length v7, v0

    move v4, v2

    move v1, v5

    :goto_3
    if-ge v4, v7, :cond_3

    aget-object v8, v0, v4

    .line 190
    if-eqz v1, :cond_2

    move v1, v2

    .line 195
    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 193
    :cond_2
    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 197
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v3

    .line 198
    goto :goto_1

    .line 200
    :pswitch_9
    const v0, 0x7f090279

    .line 201
    goto :goto_1

    .line 203
    :pswitch_a
    const v0, 0x7f090278

    .line 204
    goto :goto_1

    .line 206
    :pswitch_b
    const v0, 0x7f090276

    .line 207
    goto :goto_1

    .line 209
    :pswitch_c
    const v0, 0x7f09026f

    .line 210
    goto :goto_1

    .line 212
    :pswitch_d
    const v0, 0x7f090270

    .line 213
    goto :goto_1

    .line 215
    :cond_4
    const v0, 0x7f090273

    goto/16 :goto_1

    .line 220
    :cond_5
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static b(ILjava/lang/String;)Lcom/android/email/activity/setup/az;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/android/email/activity/setup/az;

    invoke-direct {v0}, Lcom/android/email/activity/setup/az;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 64
    const-string v2, "CheckSettingsErrorDialog.Message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "CheckSettingsErrorDialog.ExceptionId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/az;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/setup/az;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/aD;

    .line 131
    invoke-interface {v0}, Lcom/android/email/activity/setup/aD;->hH()V

    .line 132
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/android/email/activity/setup/az;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/email/activity/setup/az;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    const-string v2, "CheckSettingsErrorDialog.Message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, "CheckSettingsErrorDialog.ExceptionId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/az;->setCancelable(Z)V

    .line 79
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 84
    if-ne v1, v4, :cond_0

    .line 85
    const v3, 0x7f09026b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    :goto_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 94
    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/email/activity/setup/aA;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/aA;-><init>(Lcom/android/email/activity/setup/az;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/aB;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/aB;-><init>(Lcom/android/email/activity/setup/az;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090260

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 115
    :cond_1
    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/aC;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/aC;-><init>(Lcom/android/email/activity/setup/az;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
