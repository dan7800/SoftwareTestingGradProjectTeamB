.class public final Lcom/android/email/activity/setup/ao;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"


# instance fields
.field private OH:Landroid/widget/Spinner;

.field private OI:Landroid/widget/Spinner;

.field private OJ:Landroid/view/View;

.field private OK:Landroid/widget/CheckBox;

.field private OL:Landroid/widget/CheckBox;

.field private OM:Landroid/widget/CheckBox;

.field private ON:Landroid/widget/CheckBox;

.field private OO:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    .line 47
    return-void
.end method

.method public static il()Lcom/android/email/activity/setup/ao;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/email/activity/setup/ao;

    invoke-direct {v0}, Lcom/android/email/activity/setup/ao;-><init>()V

    return-object v0
.end method

.method private k(Lcom/android/emailcommon/provider/Account;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OJ:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 143
    array-length v0, v4

    .line 144
    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    .line 145
    if-eqz v1, :cond_0

    .line 146
    iget v1, v1, Lcom/android/emailcommon/provider/Policy;->aac:I

    .line 147
    if-eqz v1, :cond_0

    .line 152
    add-int/lit8 v0, v1, 0x1

    .line 157
    :cond_0
    new-array v5, v0, [Lcom/android/email/activity/setup/bd;

    .line 158
    const/4 v1, -0x1

    .line 159
    :goto_0
    if-ge v2, v0, :cond_2

    .line 160
    aget-object v6, v3, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 161
    new-instance v7, Lcom/android/email/activity/setup/bd;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v5, v2

    .line 162
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v1, v2

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 170
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    iget-object v2, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->lz()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/bd;->a(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 175
    if-ltz v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 178
    :cond_3
    return-void
.end method


# virtual methods
.method public final im()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OO:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final in()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OH:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final io()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bd;

    iget-object v0, v0, Lcom/android/email/activity/setup/bd;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final ip()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->ON:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final iq()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OM:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final ir()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OL:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final is()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OK:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getView()Landroid/view/View;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/bc;

    invoke-interface {v0}, Lcom/android/email/activity/setup/bc;->hN()Lcom/android/email/activity/setup/SetupDataFragment;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupDataFragment;->iB()Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 86
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/email/activity/setup/SetupDataFragment;->z(Landroid/content/Context;)Lcom/android/email/service/o;

    move-result-object v4

    .line 89
    iget-object v5, v4, Lcom/android/email/service/o;->UW:[Ljava/lang/CharSequence;

    .line 90
    iget-object v6, v4, Lcom/android/email/service/o;->UV:[Ljava/lang/CharSequence;

    .line 93
    array-length v0, v6

    new-array v7, v0, [Lcom/android/email/activity/setup/bd;

    move v0, v1

    .line 94
    :goto_0
    array-length v8, v6

    if-ge v0, v8, :cond_0

    .line 95
    new-instance v8, Lcom/android/email/activity/setup/bd;

    aget-object v9, v5, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v6, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/email/activity/setup/bd;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v7, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ao;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 101
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    iget-object v5, p0, Lcom/android/email/activity/setup/ao;->OH:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OH:Landroid/widget/Spinner;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->ly()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/email/activity/setup/bd;->a(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 106
    iget-boolean v0, v4, Lcom/android/email/service/o;->UP:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/ao;->k(Lcom/android/emailcommon/provider/Account;)V

    .line 110
    :cond_1
    iget-boolean v0, v4, Lcom/android/email/service/o;->US:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OL:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OL:Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    const v0, 0x7f0d00c6

    invoke-static {v2, v0, v1}, Lcom/android/email/activity/a;->e(Landroid/view/View;II)V

    .line 115
    :cond_2
    iget-boolean v0, v4, Lcom/android/email/service/o;->UT:Z

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OM:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OM:Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    const v0, 0x7f0d00c7

    invoke-static {v2, v0, v1}, Lcom/android/email/activity/a;->e(Landroid/view/View;II)V

    .line 121
    :cond_3
    iget-boolean v0, v4, Lcom/android/email/service/o;->UU:Z

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 123
    const v0, 0x7f0d00c8

    invoke-static {v2, v0, v12}, Lcom/android/email/activity/a;->e(Landroid/view/View;II)V

    .line 126
    :cond_4
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 58
    const v0, 0x7f040029

    const v1, 0x7f090252

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/ao;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 61
    const v0, 0x7f0d00be

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OH:Landroid/widget/Spinner;

    .line 62
    const v0, 0x7f0d00c0

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OI:Landroid/widget/Spinner;

    .line 63
    const v0, 0x7f0d00c1

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OK:Landroid/widget/CheckBox;

    .line 64
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OK:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    const v0, 0x7f0d00c2

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OL:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f0d00c3

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OM:Landroid/widget/CheckBox;

    .line 67
    const v0, 0x7f0d00c4

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->ON:Landroid/widget/CheckBox;

    .line 68
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->ON:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    const v0, 0x7f0d00c5

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OO:Landroid/widget/CheckBox;

    .line 70
    iget-object v0, p0, Lcom/android/email/activity/setup/ao;->OO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    const v0, 0x7f0d00bf

    invoke-static {v1, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/ao;->OJ:Landroid/view/View;

    .line 73
    return-object v1
.end method
