.class final Lcom/google/android/gm/welcome/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;
.implements Lcom/google/android/gms/people/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/google/android/gms/common/api/u",
        "<",
        "Lcom/google/android/gms/people/h;",
        ">;",
        "Lcom/google/android/gms/people/p;"
    }
.end annotation


# instance fields
.field private akh:Lcom/android/mail/b/j;

.field private final bbm:Lcom/google/android/gms/common/api/n;

.field private final bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

.field private final brO:Landroid/view/LayoutInflater;

.field private final brP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private final brQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation
.end field

.field private final brR:Lcom/android/mail/b/e;

.field private final brS:Lcom/android/mail/b/e;

.field private brT:Landroid/view/View$OnClickListener;

.field private brU:Lcom/android/mail/ui/cj;

.field private final lR:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->brO:Landroid/view/LayoutInflater;

    .line 88
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/people/accountswitcherview/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    .line 90
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    .line 91
    iput-object p3, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    .line 92
    iput-object p4, p0, Lcom/google/android/gm/welcome/a;->brT:Landroid/view/View$OnClickListener;

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    const v1, 0x7f0c0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    new-instance v1, Lcom/android/mail/ui/cj;

    invoke-direct {v1, v0, v0}, Lcom/android/mail/ui/cj;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/gm/welcome/a;->brU:Lcom/android/mail/ui/cj;

    .line 95
    new-instance v0, Lcom/android/mail/b/j;

    invoke-direct {v0, v2, v2}, Lcom/android/mail/b/j;-><init>(Landroid/content/ContentResolver;Lcom/android/a/a;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->akh:Lcom/android/mail/b/j;

    .line 96
    new-instance v0, Lcom/android/mail/b/n;

    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/mail/b/n;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->brR:Lcom/android/mail/b/e;

    .line 97
    new-instance v0, Lcom/google/android/gm/ui/E;

    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/google/android/gm/ui/E;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/a;->brS:Lcom/android/mail/b/e;

    .line 98
    iput-object p2, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    .line 99
    return-void
.end method

.method private eh(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    goto :goto_0
.end method


# virtual methods
.method public final IO()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/t;)V
    .locals 5

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/gms/people/h;

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/people/h;->Sa()Lcom/google/android/gms/people/model/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/people/model/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Ix()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/people/q;->cgQ:Lcom/google/android/gms/people/o;

    iget-object v3, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v3, p0}, Lcom/google/android/gms/people/o;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/p;)Lcom/google/android/gms/common/api/r;

    sget-object v1, Lcom/google/android/gms/people/q;->cgL:Lcom/google/android/gms/people/A;

    iget-object v3, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iv()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v4, v0}, Lcom/google/android/gms/people/A;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/r;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/people/q;->cgQ:Lcom/google/android/gms/people/o;

    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/people/o;->b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/p;)Lcom/google/android/gms/common/api/r;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final ai(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    return-void
.end method

.method public final ei(I)V
    .locals 3

    .prologue
    .line 248
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/google/android/gms/people/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/g;->UN()Lcom/google/android/gms/people/g;

    move-result-object v0

    .line 253
    sget-object v1, Lcom/google/android/gms/people/q;->cgI:Lcom/google/android/gms/people/f;

    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/people/f;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/g;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 255
    :cond_0
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/a;->eh(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 104
    if-nez p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brO:Landroid/view/LayoutInflater;

    const v1, 0x7f0400b0

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/a;->eh(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brP:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    const v1, 0x7f0d0092

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0096

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0d0091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v5, Lcom/android/mail/b/g;

    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    invoke-direct {v5, v2}, Lcom/android/mail/b/g;-><init>(Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->akh:Lcom/android/mail/b/j;

    invoke-virtual {v5, v2}, Lcom/android/mail/b/g;->a(Lcom/android/mail/b/j;)V

    const-string v2, "com.google"

    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v6

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->brS:Lcom/android/mail/b/e;

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/mail/b/g;->a(Lcom/android/mail/b/e;)V

    if-eqz v6, :cond_6

    const-string v2, " "

    :goto_3
    invoke-virtual {v5, v2, v4}, Lcom/android/mail/b/g;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->bpZ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v4, v0}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const v0, 0x7f0d020f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->IZ()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0903d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 109
    :goto_4
    return-object p2

    .line 108
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gm/welcome/a;->brR:Lcom/android/mail/b/e;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Ja()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0903d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/google/android/gm/welcome/a;->lR:Landroid/content/res/Resources;

    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/a;->brT:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_4
.end method
