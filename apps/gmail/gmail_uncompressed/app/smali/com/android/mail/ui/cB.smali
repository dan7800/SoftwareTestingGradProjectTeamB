.class final Lcom/android/mail/ui/cB;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic aMf:Lcom/android/mail/ui/MiniDrawerView;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/MiniDrawerView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mail/ui/cB;->aMf:Lcom/android/mail/ui/MiniDrawerView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/MiniDrawerView;B)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cB;-><init>(Lcom/android/mail/ui/MiniDrawerView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mail/ui/cB;->aMf:Lcom/android/mail/ui/MiniDrawerView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MiniDrawerView;->refresh()V

    .line 94
    return-void
.end method
