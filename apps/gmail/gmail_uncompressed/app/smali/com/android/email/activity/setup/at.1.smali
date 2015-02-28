.class final Lcom/android/email/activity/setup/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic OQ:Lcom/android/email/activity/setup/aq;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aq;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/email/activity/setup/at;->OQ:Lcom/android/email/activity/setup/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/email/activity/setup/at;->OQ:Lcom/android/email/activity/setup/aq;

    invoke-static {v0}, Lcom/android/email/activity/setup/aq;->c(Lcom/android/email/activity/setup/aq;)V

    .line 152
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
