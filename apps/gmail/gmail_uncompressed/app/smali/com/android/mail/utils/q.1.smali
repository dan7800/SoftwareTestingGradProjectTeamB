.class public abstract Lcom/android/mail/utils/q;
.super Landroid/support/v4/view/U;
.source "SourceFile"


# instance fields
.field private aPl:Landroid/app/FragmentTransaction;

.field private aPm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private aPn:Landroid/support/v4/f/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/o",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private aPo:Landroid/app/Fragment;

.field private aPp:Z

.field private final c:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mail/utils/q;-><init>(Landroid/app/FragmentManager;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/support/v4/view/U;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/support/v4/f/o;

    invoke-direct {v0}, Landroid/support/v4/f/o;-><init>()V

    iput-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    .line 54
    iput-object v1, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    .line 63
    iput-object p1, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    .line 64
    iput-boolean p2, p0, Lcom/android/mail/utils/q;->aPp:Z

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 83
    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    .line 91
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/mail/utils/q;->cc(I)Landroid/app/Fragment;

    move-result-object v1

    .line 93
    iget-boolean v0, p0, Lcom/android/mail/utils/q;->aPp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment$SavedState;

    .line 95
    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    if-eq v1, v0, :cond_3

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/mail/utils/q;->c(Landroid/app/Fragment;Z)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/f/o;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-object v0, v1

    .line 105
    goto :goto_0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p1, :cond_3

    .line 180
    check-cast p1, Landroid/os/Bundle;

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 182
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->clear()V

    .line 183
    iget-boolean v0, p0, Lcom/android/mail/utils/q;->aPp:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 185
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    if-eqz v3, :cond_0

    move v1, v2

    .line 187
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    aget-object v0, v3, v1

    check-cast v0, Landroid/app/Fragment$SavedState;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    const-string v3, "f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 196
    iget-object v4, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v4, p1, v0}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 197
    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {p0, v4, v2}, Lcom/android/mail/utils/q;->c(Landroid/app/Fragment;Z)V

    .line 199
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/f/o;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 201
    :cond_2
    const-string v3, "FSPA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad fragment at key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 206
    :cond_3
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    check-cast p3, Landroid/app/Fragment;

    .line 112
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/mail/utils/q;->aPp:Z

    if-eqz v0, :cond_2

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/o;->delete(I)V

    .line 125
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 126
    return-void
.end method

.method public final aW()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/utils/q;->aPl:Landroid/app/FragmentTransaction;

    .line 147
    iget-object v0, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 149
    :cond_0
    return-void
.end method

.method public aY()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    iget-boolean v1, p0, Lcom/android/mail/utils/q;->aPp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Fragment$SavedState;

    .line 162
    iget-object v2, p0, Lcom/android/mail/utils/q;->aPm:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    const-string v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 165
    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/o;->keyAt(I)I

    move-result v3

    .line 167
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/o;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 168
    if-nez v2, :cond_1

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 171
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/mail/utils/q;->c:Landroid/app/FragmentManager;

    invoke-virtual {v4, v2, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_2
    return-object v2
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 130
    check-cast p3, Landroid/app/Fragment;

    .line 131
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    if-eq p3, v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/utils/q;->c(Landroid/app/Fragment;Z)V

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/android/mail/utils/q;->c(Landroid/app/Fragment;Z)V

    .line 138
    :cond_1
    iput-object p3, p0, Lcom/android/mail/utils/q;->aPo:Landroid/app/Fragment;

    .line 140
    :cond_2
    return-void
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 153
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/app/Fragment;Z)V
    .locals 0

    .prologue
    .line 209
    invoke-static {p1, p2}, Landroid/support/v13/app/a;->a(Landroid/app/Fragment;Z)V

    .line 210
    invoke-static {p1, p2}, Landroid/support/v13/app/a;->b(Landroid/app/Fragment;Z)V

    .line 211
    return-void
.end method

.method public abstract cc(I)Landroid/app/Fragment;
.end method

.method public final dq(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 216
    new-instance v4, Landroid/support/v4/f/o;

    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    invoke-direct {v4, v0}, Landroid/support/v4/f/o;-><init>(I)V

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0}, Landroid/support/v4/f/o;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/o;->keyAt(I)I

    move-result v3

    .line 220
    iget-object v0, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/o;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/mail/utils/q;->f(Ljava/lang/Object;)I

    move-result v2

    .line 223
    const/4 v5, -0x2

    if-eq v2, v5, :cond_0

    .line 224
    if-ltz v2, :cond_1

    .line 225
    :goto_1
    invoke-virtual {v4, v2, v0}, Landroid/support/v4/f/o;->put(ILjava/lang/Object;)V

    .line 218
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 224
    goto :goto_1

    .line 228
    :cond_2
    iput-object v4, p0, Lcom/android/mail/utils/q;->aPn:Landroid/support/v4/f/o;

    .line 230
    invoke-super {p0}, Landroid/support/v4/view/U;->notifyDataSetChanged()V

    .line 231
    return-void
.end method
