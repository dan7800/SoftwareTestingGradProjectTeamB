.class final Lcom/android/mail/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 4461
    iput-object p1, p0, Lcom/android/mail/ui/A;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/a;B)V
    .locals 0

    .prologue
    .line 4461
    invoke-direct {p0, p1}, Lcom/android/mail/ui/A;-><init>(Lcom/android/mail/ui/a;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4464
    iget-object v0, p0, Lcom/android/mail/ui/A;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->wc()Z

    .line 4465
    return-void
.end method
