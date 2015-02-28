.class final Lcom/android/mail/compose/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;

.field final synthetic awp:Landroid/text/Spanned;

.field final synthetic awq:Lcom/android/mail/compose/v;

.field final synthetic awr:Z

.field final synthetic aws:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;Landroid/text/Spanned;Lcom/android/mail/compose/v;ZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3424
    iput-object p1, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iput-object p2, p0, Lcom/android/mail/compose/m;->awp:Landroid/text/Spanned;

    iput-object p3, p0, Lcom/android/mail/compose/m;->awq:Lcom/android/mail/compose/v;

    iput-boolean p4, p0, Lcom/android/mail/compose/m;->awr:Z

    iput-object p5, p0, Lcom/android/mail/compose/m;->aws:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v1, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v1, v1, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v2, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v2, v2, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v3, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    invoke-static {v3}, Lcom/android/mail/compose/g;->g(Lcom/android/mail/compose/g;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mail/compose/m;->awp:Landroid/text/Spanned;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;ILandroid/text/Spanned;)Lcom/android/mail/providers/Message;

    move-result-object v5

    .line 3428
    iget-object v0, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v1, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v2, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    invoke-static {v2}, Lcom/android/mail/compose/g;->h(Lcom/android/mail/compose/g;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v3, v3, Lcom/android/mail/compose/g;->avx:Lcom/android/mail/providers/ReplyFromAccount;

    iget-object v4, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    invoke-static {v4}, Lcom/android/mail/compose/g;->i(Lcom/android/mail/compose/g;)Lcom/android/mail/providers/ReplyFromAccount;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget-object v6, v6, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v7, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    invoke-static {v7}, Lcom/android/mail/compose/g;->j(Lcom/android/mail/compose/g;)Lcom/android/mail/compose/QuotedTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mail/compose/QuotedTextView;->sT()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mail/compose/m;->awq:Lcom/android/mail/compose/v;

    iget-boolean v9, p0, Lcom/android/mail/compose/m;->awr:Z

    iget-object v10, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    iget v10, v10, Lcom/android/mail/compose/g;->avC:I

    iget-object v11, p0, Lcom/android/mail/compose/m;->awi:Lcom/android/mail/compose/g;

    invoke-static {v11}, Lcom/android/mail/compose/g;->k(Lcom/android/mail/compose/g;)Landroid/content/ContentValues;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mail/compose/m;->aws:Landroid/os/Bundle;

    invoke-static/range {v0 .. v12}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;Landroid/content/Context;ILcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/ReplyFromAccount;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Message;Ljava/lang/CharSequence;Lcom/android/mail/compose/v;ZILandroid/content/ContentValues;Landroid/os/Bundle;)V

    .line 3431
    return-void
.end method
