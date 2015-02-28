.class final Lcom/android/email/activity/setup/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic ND:Lcom/android/email/activity/setup/R;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/R;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/email/activity/setup/S;->ND:Lcom/android/email/activity/setup/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/activity/setup/S;->ND:Lcom/android/email/activity/setup/R;

    invoke-static {v0}, Lcom/android/email/activity/setup/R;->a(Lcom/android/email/activity/setup/R;)V

    .line 66
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
