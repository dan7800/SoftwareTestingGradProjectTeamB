.class public final Lcom/android/ex/editstyledtext/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Mf:I

.field private afN:Lcom/android/ex/editstyledtext/i;

.field private afQ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ex/editstyledtext/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private bz(I)Lcom/android/ex/editstyledtext/b;
    .locals 2

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/ex/editstyledtext/a;->afQ:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/android/ex/editstyledtext/a;->afQ:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/editstyledtext/b;

    .line 2879
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bA(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2888
    const-string v0, "EditModeActions"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--- do the next action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/a;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/i;->nx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/a;->bz(I)Lcom/android/ex/editstyledtext/b;

    move-result-object v0

    .line 2891
    if-nez v0, :cond_1

    .line 2892
    const-string v0, "EditModeActions"

    const-string v1, "--- invalid action error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 2895
    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/a;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2903
    :pswitch_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/a;->afN:Lcom/android/ex/editstyledtext/i;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/i;->nw()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final by(I)V
    .locals 2

    .prologue
    .line 2868
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/a;->bz(I)Lcom/android/ex/editstyledtext/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/b;->c([Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/ex/editstyledtext/a;->Mf:I

    invoke-virtual {p0, p1}, Lcom/android/ex/editstyledtext/a;->bA(I)Z

    .line 2869
    return-void
.end method

.method public final no()V
    .locals 1

    .prologue
    .line 2872
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/a;->bA(I)Z

    .line 2873
    return-void
.end method
