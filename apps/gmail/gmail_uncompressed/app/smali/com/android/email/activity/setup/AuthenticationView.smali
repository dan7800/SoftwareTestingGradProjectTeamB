.class public Lcom/android/email/activity/setup/AuthenticationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private NQ:Z

.field private OT:Landroid/widget/TextView;

.field private OU:Landroid/view/View;

.field private OV:Landroid/view/View;

.field private OW:Landroid/widget/TextView;

.field private OX:Landroid/widget/EditText;

.field private OY:Landroid/widget/TextView;

.field private OZ:Landroid/view/View;

.field private Pa:Landroid/view/View;

.field private Pb:Landroid/view/View;

.field private Pc:Z

.field private Pd:Ljava/lang/String;

.field private Pe:Z

.field private Pf:Lcom/android/email/activity/setup/ax;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/setup/AuthenticationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AuthenticationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/android/email/activity/setup/AuthenticationView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->hP()V

    return-void
.end method

.method private hP()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->iv()Z

    move-result v0

    .line 134
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pe:Z

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pf:Lcom/android/email/activity/setup/ax;

    invoke-interface {v1}, Lcom/android/email/activity/setup/ax;->ih()V

    .line 136
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pe:Z

    .line 138
    :cond_0
    return-void
.end method

.method private ix()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 171
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OU:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OW:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OW:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OV:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OU:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OZ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OV:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OU:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OV:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OU:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OZ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OW:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OW:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/email/activity/setup/ax;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pf:Lcom/android/email/activity/setup/ax;

    .line 109
    return-void
.end method

.method public final a(ZLcom/android/emailcommon/provider/HostAuth;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/emailcommon/provider/HostAuth;->af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 147
    iput-boolean v4, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    .line 148
    iget-object v0, v0, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    iget-object v1, p2, Lcom/android/emailcommon/provider/HostAuth;->Qd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/N;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->OY:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090222

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->label:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->ix()V

    .line 167
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->hP()V

    .line 168
    return-void

    .line 150
    :cond_1
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    goto :goto_0

    .line 154
    :cond_2
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    goto :goto_0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final iv()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final iw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OZ:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->ix()V

    .line 257
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->hP()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pa:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    .line 260
    iput-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->ix()V

    .line 262
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->hP()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pf:Lcom/android/email/activity/setup/ax;

    invoke-interface {v0}, Lcom/android/email/activity/setup/ax;->ii()V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f0d00f4

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OU:Landroid/view/View;

    .line 75
    const v0, 0x7f0d00f8

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OV:Landroid/view/View;

    .line 76
    const v0, 0x7f0d00f6

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    .line 77
    const v0, 0x7f0d00f9

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OY:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0d00f7

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OZ:Landroid/view/View;

    .line 79
    const v0, 0x7f0d00fa

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pa:Landroid/view/View;

    .line 80
    const v0, 0x7f0d00f3

    invoke-static {p0, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    .line 83
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AuthenticationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OW:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AuthenticationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OT:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->OZ:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pa:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pb:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Lcom/android/email/activity/setup/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/ay;-><init>(Lcom/android/email/activity/setup/AuthenticationView;B)V

    .line 91
    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 231
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 232
    check-cast p1, Landroid/os/Bundle;

    .line 233
    const-string v0, "super_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    const-string v0, "save_offer_oauth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    .line 235
    const-string v0, "save_use_oauth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    .line 236
    const-string v0, "save_oauth_provider"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    .line 238
    const-string v0, "save_password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->OX:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/N;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/email/activity/setup/AuthenticationView;->OY:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090222

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->label:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AuthenticationView;->ix()V

    .line 250
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v1, "super_state"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    const-string v1, "save_offer_oauth"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->NQ:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    const-string v1, "save_use_oauth"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pc:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v1, "save_password"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AuthenticationView;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "save_oauth_provider"

    iget-object v2, p0, Lcom/android/email/activity/setup/AuthenticationView;->Pd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-object v0
.end method
