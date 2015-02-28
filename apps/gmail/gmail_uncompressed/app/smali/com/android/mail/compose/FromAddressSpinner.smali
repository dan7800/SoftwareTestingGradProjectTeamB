.class public Lcom/android/mail/compose/FromAddressSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private awE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private awF:Lcom/android/mail/providers/ReplyFromAccount;

.field private final awG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation
.end field

.field private awH:Lcom/android/mail/compose/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/compose/FromAddressSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    .line 48
    return-void
.end method

.method private sO()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 61
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v3, v3, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mail/compose/FromAddressSpinner;->setSelection(IZ)V

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 67
    goto :goto_1
.end method

.method private sQ()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v1, Lcom/android/mail/compose/y;

    invoke-virtual {p0}, Lcom/android/mail/compose/FromAddressSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/mail/compose/y;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 131
    iget-object v3, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/mail/compose/y;->q(Ljava/util/List;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/mail/compose/FromAddressSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    invoke-direct {p0}, Lcom/android/mail/compose/FromAddressSpinner;->sO()V

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/mail/compose/FromAddressSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/android/mail/providers/Account;[Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Message;)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 97
    iput-object v1, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    .line 114
    :goto_2
    invoke-direct {p0}, Lcom/android/mail/compose/FromAddressSpinner;->sQ()V

    .line 115
    return-void

    .line 102
    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p4, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    .line 106
    iget-object v2, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/mail/providers/Message;->azj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p2, v0

    .line 112
    :cond_4
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->aE(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awE:Ljava/util/List;

    goto :goto_2
.end method

.method public final a(Lcom/android/mail/compose/x;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/mail/compose/FromAddressSpinner;->awH:Lcom/android/mail/compose/x;

    .line 146
    return-void
.end method

.method public final b(Lcom/android/mail/providers/ReplyFromAccount;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    .line 52
    invoke-direct {p0}, Lcom/android/mail/compose/FromAddressSpinner;->sO()V

    .line 53
    return-void
.end method

.method public final bx(Ljava/lang/String;)Lcom/android/mail/providers/ReplyFromAccount;
    .locals 3

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 73
    iget-object v2, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 150
    invoke-virtual {p0, p3}, Lcom/android/mail/compose/FromAddressSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ReplyFromAccount;

    .line 151
    iget-object v1, v0, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v2, v2, Lcom/android/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iput-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    .line 153
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awH:Lcom/android/mail/compose/x;

    invoke-interface {v0}, Lcom/android/mail/compose/x;->sD()V

    .line 155
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public final sP()Lcom/android/mail/providers/ReplyFromAccount;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awF:Lcom/android/mail/providers/ReplyFromAccount;

    return-object v0
.end method

.method public final sR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/ReplyFromAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mail/compose/FromAddressSpinner;->awG:Ljava/util/List;

    return-object v0
.end method
