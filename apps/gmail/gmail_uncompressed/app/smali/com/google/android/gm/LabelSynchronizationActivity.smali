.class public Lcom/google/android/gm/LabelSynchronizationActivity;
.super Lcom/google/android/gm/A;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private Tz:Ljava/lang/String;

.field private aIX:I

.field private aRj:Landroid/net/Uri;

.field private aRk:Landroid/net/Uri;

.field private aRl:Ljava/lang/String;

.field private aWU:Lcom/google/android/gm/provider/Gmail$Settings;

.field private aYA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aYB:Ljava/lang/String;

.field private aYC:Ljava/lang/String;

.field private aYD:Ljava/lang/String;

.field private aYE:Ljava/lang/String;

.field private aYw:Z

.field private aYx:I

.field private aYy:Ljava/lang/String;

.field private aYz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gm/A;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYx:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/google/android/gm/A;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    const-string v0, "perform-actions-internally"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYw:Z

    .line 82
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "update-widgetid-on-sync-change"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "update-widgetid-on-sync-change"

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYx:I

    .line 84
    const-string v0, "folder-type"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aIX:I

    .line 86
    const-string v0, "folder-uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRj:Landroid/net/Uri;

    .line 87
    const-string v0, "folder-conversation-list-uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRk:Landroid/net/Uri;

    .line 89
    const-string v0, "folder-display-name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRl:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRj:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    .line 92
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Nc:Lcom/android/mail/providers/Account;

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    .line 99
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYw:Z

    if-nez v0, :cond_1

    .line 100
    const-string v0, "included-labels"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    .line 101
    const-string v0, "partial-labels"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    .line 102
    const-string v0, "num-of-sync-days"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/google/android/gm/provider/Y;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/T;

    move-result-object v1

    .line 113
    if-nez v1, :cond_2

    .line 114
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "Unable to get label: %s for account: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-static {v0, v1, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 158
    :goto_2
    return-void

    .line 95
    :cond_0
    const-string v0, "folder"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    .line 96
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->Ey()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/LabelSynchronizationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    const v4, 0x7f09037a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYC:Ljava/lang/String;

    .line 123
    const v4, 0x7f110019

    invoke-static {p0, v4, v0}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYD:Ljava/lang/String;

    .line 125
    const v0, 0x7f090379

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYE:Ljava/lang/String;

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gm/provider/T;->Fc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYD:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYE:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 136
    :goto_3
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYE:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYB:Ljava/lang/String;

    :goto_4
    move v1, v2

    .line 144
    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 145
    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 151
    :goto_6
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04008d

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gm/LabelSynchronizationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 157
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 132
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYC:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYD:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYE:Ljava/lang/String;

    aput-object v1, v0, v6

    goto :goto_3

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYD:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYB:Ljava/lang/String;

    goto :goto_4

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYC:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYB:Ljava/lang/String;

    goto :goto_4

    .line 144
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYw:Z

    if-nez v0, :cond_4

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    const-string v1, "included-labels"

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    const-string v1, "partial-labels"

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    :goto_2
    iget v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYx:I

    if-eq v0, v3, :cond_2

    .line 191
    iget v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYx:I

    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Nc:Lcom/android/mail/providers/Account;

    iget v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aIX:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRj:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRk:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aRl:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/a;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->y(Ljava/util/Collection;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aYA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$Settings;->z(Ljava/util/Collection;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->Tz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;Landroid/content/ContentResolver;)V

    goto :goto_2
.end method
