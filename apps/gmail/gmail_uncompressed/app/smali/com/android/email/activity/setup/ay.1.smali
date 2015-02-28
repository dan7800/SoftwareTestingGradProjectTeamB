.class final Lcom/android/email/activity/setup/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic Pg:Lcom/android/email/activity/setup/AuthenticationView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AuthenticationView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/email/activity/setup/ay;->Pg:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AuthenticationView;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/ay;-><init>(Lcom/android/email/activity/setup/AuthenticationView;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/setup/ay;->Pg:Lcom/android/email/activity/setup/AuthenticationView;

    invoke-static {v0}, Lcom/android/email/activity/setup/AuthenticationView;->a(Lcom/android/email/activity/setup/AuthenticationView;)V

    .line 99
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
