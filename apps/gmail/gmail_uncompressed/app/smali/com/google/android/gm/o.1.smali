.class public abstract Lcom/google/android/gm/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/Y;


# instance fields
.field protected final aWQ:Lcom/google/android/gm/Z;

.field private final aWR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/X;",
            ">;"
        }
    .end annotation
.end field

.field protected final aWS:Landroid/app/ActionBar;

.field protected aWT:Ljava/lang/String;

.field aWU:Lcom/google/android/gm/provider/Gmail$Settings;

.field private aWV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aWW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aWX:I

.field private aWY:Z

.field protected aWZ:Z

.field protected mAccount:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/Z;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/o;->aWY:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/o;->aWZ:Z

    .line 50
    iput-object p1, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/o;->aWR:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->aWS:Landroid/app/ActionBar;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/o;->aWV:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/o;->aWW:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final Cs()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/gm/p;

    invoke-direct {v0, p0}, Lcom/google/android/gm/p;-><init>(Lcom/google/android/gm/o;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method public final Ct()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/gm/o;->aWS:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/o;->aWZ:Z

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/android/gm/o;->bO(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->invalidateOptionsMenu()V

    .line 105
    return v2
.end method

.method public final Cu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gm/o;->aWV:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final Cv()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/gm/o;->aWW:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final Cw()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/gm/o;->aWX:I

    return v0
.end method

.method protected abstract Cx()V
.end method

.method public final a(Lcom/google/android/gm/X;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gm/o;->aWR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public final b(Lcom/google/android/gm/X;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gm/o;->aWR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method protected final bO(Z)V
    .locals 1

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/google/android/gm/o;->aWY:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 196
    return-void
.end method

.method public final du(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/google/android/gm/Z;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/gm/o;->dv(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected abstract dv(Ljava/lang/String;)V
.end method

.method public final g(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 111
    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/gm/o;->aWV:Ljava/util/List;

    .line 182
    return-void
.end method

.method public final j(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/gm/o;->aWW:Ljava/util/List;

    .line 187
    return-void
.end method

.method public final l(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gm/m;->a(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/android/mail/providers/Account;Lcom/google/android/gm/n;)Z

    move-result v0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gm/o;->aWY:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->onBackPressed()V

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyChanged()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gm/o;->aWR:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/X;

    .line 160
    invoke-interface {v0}, Lcom/google/android/gm/X;->onChanged()V

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    const-string v0, "label-list-visible"

    iget-boolean v1, p0, Lcom/google/android/gm/o;->aWZ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    const-string v1, "account_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    .line 60
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->aWT:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/google/android/gm/a;

    iget-object v1, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-direct {v0, v1}, Lcom/google/android/gm/a;-><init>(Lcom/google/android/gm/an;)V

    iget-object v1, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/a;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/gm/o;->aWQ:Lcom/google/android/gm/Z;

    invoke-interface {v0}, Lcom/google/android/gm/Z;->finish()V

    .line 77
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/o;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/Gmail;->P(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 71
    iget-object v0, p0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EA()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->aWV:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->EB()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/o;->aWW:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/o;->aWU:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->Ey()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gm/o;->aWX:I

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/o;->aWS:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/gm/o;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/o;->bO(Z)V

    goto :goto_0
.end method
