.class final Lcom/android/mail/compose/q;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/text/Spanned;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;


# direct methods
.method private constructor <init>(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 4032
    iput-object p1, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/compose/g;B)V
    .locals 0

    .prologue
    .line 4032
    invoke-direct {p0, p1}, Lcom/android/mail/compose/q;-><init>(Lcom/android/mail/compose/g;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4032
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    invoke-static {v1}, Lcom/android/mail/compose/g;->m(Lcom/android/mail/compose/g;)Lcom/google/android/mail/common/html/parser/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/utils/x;->a(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/t;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 4032
    check-cast p1, Landroid/text/Spanned;

    iget-object v0, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    iget-object v0, v0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    invoke-static {v0}, Lcom/android/mail/compose/g;->n(Lcom/android/mail/compose/g;)Z

    iget-object v0, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    iget-object v0, v0, Lcom/android/mail/compose/g;->avF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mail/compose/q;->awi:Lcom/android/mail/compose/g;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
