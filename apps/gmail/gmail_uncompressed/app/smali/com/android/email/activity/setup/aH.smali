.class public Lcom/android/email/activity/setup/aH;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private Pk:Lcom/android/email/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aH;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/b;->l(Landroid/content/Context;)V

    .line 109
    return-void

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    invoke-virtual {v0, p2}, Lcom/android/email/r;->R(Z)V

    .line 92
    sput-boolean p2, Lcom/android/email/b;->DEBUG:Z

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    invoke-virtual {v0, p2}, Lcom/android/email/r;->S(Z)V

    .line 96
    sput-boolean p2, Lcom/android/email/b;->Lv:Z

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    invoke-virtual {v0, p2}, Lcom/android/email/r;->T(Z)V

    .line 100
    sput-boolean p2, Lcom/android/email/b;->Lw:Z

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    invoke-virtual {v0, p2}, Lcom/android/email/r;->U(Z)V

    .line 104
    invoke-static {p2}, Lcom/android/email/b;->Q(Z)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0d018e
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 115
    :pswitch_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/aH;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Cleard WebView cache."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    throw v0

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aH;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mail/i/g;->cw(I)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0191
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 49
    sget-boolean v0, Lcom/android/emailcommon/b;->VL:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "DebugFragment onCreateView"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    :cond_0
    const v0, 0x7f04006e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lcom/android/email/activity/setup/aH;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    .line 57
    const v0, 0x7f0d018e

    invoke-static {v3, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 58
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    const v1, 0x7f0d018f

    invoke-static {v3, v1}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 61
    const v2, 0x7f0d0190

    invoke-static {v3, v2}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-static {v4}, Lcom/android/email/service/n;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget-boolean v0, Lcom/android/email/b;->Lv:Z

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    sget-boolean v0, Lcom/android/email/b;->Lw:Z

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    :goto_0
    const v0, 0x7f0d0191

    invoke-static {v3, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0d0192

    invoke-static {v3, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0d0194

    invoke-static {v3, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 81
    iget-object v1, p0, Lcom/android/email/activity/setup/aH;->Pk:Lcom/android/email/r;

    invoke-virtual {v1}, Lcom/android/email/r;->gW()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    return-object v3

    .line 72
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 73
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
