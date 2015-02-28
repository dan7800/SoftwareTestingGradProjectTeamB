.class public final Lcom/google/android/gm/preference/f;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final bbv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private bbw:I

.field private bbx:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    return-void
.end method

.method public static DI()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/gm/preference/f;

    invoke-direct {v0}, Lcom/google/android/gm/preference/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 102
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/a;->a(Landroid/app/Activity;Lcom/google/android/gm/g;)V

    goto :goto_0

    .line 110
    :pswitch_2
    const v0, 0x7f0902e1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 113
    const-string v0, "FLOW_ACCOUNT_TYPE"

    const v2, 0x7f0902d8

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/preference/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iput p2, p0, Lcom/google/android/gm/preference/f;->bbw:I

    .line 127
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 128
    const-string v5, "option_selected"

    iget v3, p0, Lcom/google/android/gm/preference/f;->bbw:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 130
    goto :goto_1

    :cond_1
    move v3, v2

    .line 128
    goto :goto_2

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbx:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "EmailGmailDisambiguationDialog.SelectedProtocol"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    .line 54
    :cond_0
    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1, v6}, Landroid/support/v4/f/a;-><init>(B)V

    .line 55
    const-string v2, "option_selected"

    iget v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    if-nez v0, :cond_2

    move v0, v5

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "option_title"

    const v2, 0x7f0903ca

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "option_subtitle"

    const v2, 0x7f0903cb

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1, v6}, Landroid/support/v4/f/a;-><init>(B)V

    .line 61
    const-string v2, "option_selected"

    iget v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    if-ne v0, v5, :cond_3

    move v0, v5

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "option_title"

    const v2, 0x7f0903cc

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "option_subtitle"

    const v2, 0x7f0903cd

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {}, Lcom/google/android/gm/v;->CJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Landroid/support/v4/f/a;

    invoke-direct {v1, v6}, Landroid/support/v4/f/a;-><init>(B)V

    .line 70
    const-string v2, "option_selected"

    iget v0, p0, Lcom/google/android/gm/preference/f;->bbw:I

    if-ne v0, v8, :cond_4

    move v0, v5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "option_title"

    const v2, 0x7f0903ce

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "option_subtitle"

    const v2, 0x7f0903cf

    invoke-virtual {p0, v2}, Lcom/google/android/gm/preference/f;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/preference/f;->bbv:Ljava/util/List;

    const v3, 0x7f040072

    new-array v4, v9, [Ljava/lang/String;

    const-string v7, "option_selected"

    aput-object v7, v4, v6

    const-string v7, "option_title"

    aput-object v7, v4, v5

    const-string v5, "option_subtitle"

    aput-object v5, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/gm/preference/f;->bbx:Landroid/widget/BaseAdapter;

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/preference/f;->bbx:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-object v0

    :cond_2
    move v0, v6

    .line 55
    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 61
    goto/16 :goto_1

    :cond_4
    move v0, v6

    .line 70
    goto :goto_2

    .line 78
    nop

    :array_0
    .array-data 4
        0x7f0d0198
        0x7f0d0199
        0x7f0d019a
    .end array-data
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string v0, "EmailGmailDisambiguationDialog.SelectedProtocol"

    iget v1, p0, Lcom/google/android/gm/preference/f;->bbw:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    return-void
.end method
