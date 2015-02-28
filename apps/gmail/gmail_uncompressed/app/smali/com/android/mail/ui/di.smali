.class public final Lcom/android/mail/ui/di;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aU:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/mail/ui/di;->aU:Landroid/view/View;

    .line 48
    return-void
.end method

.method public static aE(Landroid/view/View;)Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 42
    new-instance v0, Lcom/android/mail/ui/di;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/di;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mail/ui/di;->aU:Landroid/view/View;

    return-object v0
.end method
