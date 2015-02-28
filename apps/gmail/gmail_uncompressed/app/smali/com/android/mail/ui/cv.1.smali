.class final Lcom/android/mail/ui/cv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mail/ui/cw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/mail/ui/cv;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;B)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cv;-><init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)V

    return-void
.end method

.method private varargs t([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/cw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    aget-object v0, p1, v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 127
    :cond_0
    const/4 v1, 0x0

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/mail/ui/cv;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v3}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->a(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Lcom/android/mail/providers/z;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/mail/providers/z;->cc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "suggest_intent_query"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    const-string v3, "suggest_icon_1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 136
    :cond_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 138
    new-instance v6, Lcom/android/mail/ui/cw;

    invoke-direct {v6, v4, v5}, Lcom/android/mail/ui/cw;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 144
    :cond_2
    if-eqz v1, :cond_3

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_3
    :goto_0
    return-object v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    invoke-static {}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->km()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception in QuerySuggestionsTask"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v1, :cond_3

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/mail/ui/cv;->t([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 119
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/mail/ui/cv;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cv;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/mail/ui/cv;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/mail/ui/cv;->aLQ:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->c(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Lcom/android/mail/ui/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/cu;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
