.class final Lcom/android/email/activity/setup/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic NV:Lcom/android/email/activity/setup/U;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/U;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/email/activity/setup/W;->NV:Lcom/android/email/activity/setup/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/U;B)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/W;-><init>(Lcom/android/email/activity/setup/U;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/W;->NV:Lcom/android/email/activity/setup/U;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/U;->hS()V

    .line 159
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
