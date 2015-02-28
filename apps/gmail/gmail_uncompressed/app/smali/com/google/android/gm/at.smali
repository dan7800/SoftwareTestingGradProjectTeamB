.class public final Lcom/google/android/gm/at;
.super Lcom/android/mail/utils/G;
.source "SourceFile"


# instance fields
.field final synthetic aYW:Lcom/google/android/gm/as;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/as;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/gm/at;->aYW:Lcom/google/android/gm/as;

    .line 70
    invoke-direct {p0, p2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/gm/at;
    .locals 11

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    .line 82
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 84
    if-eqz p2, :cond_a

    .line 85
    const v2, 0x7f0200cd

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v4, v8, v1

    const/4 v1, 0x2

    aput-object v6, v8, v1

    const/4 v1, 0x3

    aput-object v7, v8, v1

    invoke-virtual {p0, v8}, Lcom/google/android/gm/at;->addRow([Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    .line 98
    :cond_1
    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :cond_2
    new-instance v2, Lcom/google/android/gm/au;

    invoke-direct {v2, v4, v6, v7}, Lcom/google/android/gm/au;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 106
    :goto_1
    invoke-static {}, Lcom/google/android/gm/provider/MailProvider;->Hh()Lcom/google/android/gm/provider/f;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/google/android/gm/provider/GmailProvider;->EH()Ljava/lang/String;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gm/provider/f;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/SuggestionResults;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/appdatasearch/SuggestionResults;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/m;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/m;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/m;->Js()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-nez v0, :cond_4

    move-object v0, v3

    .line 119
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v0, v7, v2

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gm/at;->aYW:Lcom/google/android/gm/as;

    invoke-static {v2}, Lcom/google/android/gm/as;->a(Lcom/google/android/gm/as;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-virtual {p0, v7}, Lcom/google/android/gm/at;->addRow([Ljava/lang/Object;)V

    move v0, v4

    :goto_3
    move v2, v0

    .line 122
    goto :goto_2

    :cond_5
    move v0, v2

    .line 127
    :cond_6
    if-eqz v1, :cond_7

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/au;

    .line 129
    iget-object v2, v0, Lcom/google/android/gm/au;->aYX:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 130
    iget-object v2, v0, Lcom/google/android/gm/au;->aYX:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x1

    iget-object v6, v0, Lcom/google/android/gm/au;->aYX:Ljava/lang/String;

    aput-object v6, v4, v1

    const/4 v1, 0x2

    iget-object v6, v0, Lcom/google/android/gm/au;->aYY:Ljava/lang/String;

    aput-object v6, v4, v1

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/google/android/gm/au;->aYZ:Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {p0, v4}, Lcom/google/android/gm/at;->addRow([Ljava/lang/Object;)V

    move v0, v2

    :goto_5
    move v1, v0

    .line 134
    goto :goto_4

    .line 137
    :cond_7
    return-object p0

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto/16 :goto_1
.end method
