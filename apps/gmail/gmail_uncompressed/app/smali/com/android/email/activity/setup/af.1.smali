.class final Lcom/android/email/activity/setup/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic OA:Lcom/android/email/activity/setup/ad;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/ad;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/email/activity/setup/af;->OA:Lcom/android/email/activity/setup/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/activity/setup/af;->OA:Lcom/android/email/activity/setup/ad;

    invoke-static {v0}, Lcom/android/email/activity/setup/ad;->b(Lcom/android/email/activity/setup/ad;)V

    .line 167
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
