.class public final Lcom/google/android/gms/b/e;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field final synthetic bBF:Lcom/google/android/gms/b/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/d;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .prologue
    const/4 v1, 0x3

    .line 89
    const-string v0, "GmsRecipientAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "GmsRecipientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start filtering. constraint: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0}, Lcom/google/android/gms/b/d;->b(Lcom/google/android/gms/b/d;)V

    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    .line 103
    :cond_2
    new-instance v0, Lcom/google/android/gms/people/c;

    invoke-direct {v0}, Lcom/google/android/gms/people/c;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-virtual {v2}, Lcom/google/android/gms/b/d;->mr()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/c;->gy(Ljava/lang/String;)Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UK()Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UL()Lcom/google/android/gms/people/b;

    move-result-object v0

    .line 109
    sget-object v2, Lcom/google/android/gms/people/q;->cgM:Lcom/google/android/gms/people/a;

    iget-object v3, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v3}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;)Lcom/google/android/gms/common/api/n;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/gms/people/a;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    .line 112
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/d;

    .line 115
    invoke-interface {v0}, Lcom/google/android/gms/people/d;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    .line 117
    const-string v3, "GmsRecipientAdapter"

    const-string v4, "Autocomplete query timed out."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/people/d;->Sb()Lcom/google/android/gms/people/model/a;

    move-result-object v3

    .line 121
    :try_start_0
    const-string v0, "GmsRecipientAdapter"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const-string v0, "GmsRecipientAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Autocomplete list loaded: status="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_7

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0}, Lcom/google/android/gms/b/d;->c(Lcom/google/android/gms/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/b;->close()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    .line 135
    :cond_7
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-virtual {v0}, Lcom/google/android/gms/b/d;->mm()Lcom/android/ex/chips/q;

    move-result-object v5

    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/b;

    .line 139
    invoke-interface {v0}, Lcom/google/android/gms/people/model/b;->RV()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 142
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v7, Lcom/google/android/gms/b/g;

    invoke-direct {v7, v0}, Lcom/google/android/gms/b/g;-><init>(Lcom/google/android/gms/people/model/b;)V

    .line 148
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-interface {v5, v7, v0}, Lcom/android/ex/chips/q;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_9

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/b;->close()V

    :cond_9
    throw v0

    .line 152
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0, v4}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 155
    new-instance v5, Lcom/google/android/gms/b/f;

    iget-object v6, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-direct {v5, v6, v2, v4, v0}, Lcom/google/android/gms/b/f;-><init>(Lcom/google/android/gms/b/d;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    if-eqz v3, :cond_b

    .line 161
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/b;->close()V

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v0}, Lcom/google/android/gms/b/d;->d(Lcom/google/android/gms/b/d;)V

    .line 174
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/f;

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    iget-object v2, v0, Lcom/google/android/gms/b/f;->acn:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;Ljava/util/List;)Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    iget-object v2, v0, Lcom/google/android/gms/b/f;->acq:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/d;->b(Lcom/google/android/gms/b/d;Ljava/util/Set;)Ljava/util/Set;

    .line 179
    iget-object v2, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    iget-object v1, v0, Lcom/google/android/gms/b/f;->acn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v1, v0, Lcom/google/android/gms/b/f;->acr:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;II)V

    .line 183
    iget-object v1, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    iget-object v2, v0, Lcom/google/android/gms/b/f;->acn:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/d;->b(Lcom/google/android/gms/b/d;Ljava/util/List;)V

    .line 186
    iget-object v1, v0, Lcom/google/android/gms/b/f;->acr:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {v1}, Lcom/google/android/gms/b/d;->e(Lcom/google/android/gms/b/d;)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/b/f;->acq:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    iget-object v0, v0, Lcom/google/android/gms/b/f;->acr:Ljava/util/List;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/d;Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 179
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/b/f;->acr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/e;->bBF:Lcom/google/android/gms/b/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/d;->c(Lcom/google/android/gms/b/d;Ljava/util/List;)V

    goto :goto_1
.end method
