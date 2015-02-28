.class public Lcom/android/mail/ui/aF;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/ui/as;",
            "Lcom/android/mail/providers/Account;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/aL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lcom/android/mail/ui/aM;

    invoke-direct {v1, p1}, Lcom/android/mail/ui/aM;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1, p3, p2}, Lcom/android/mail/ui/aM;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/as;)V

    .line 45
    new-instance v2, Lcom/android/mail/ui/bl;

    invoke-direct {v2, p1}, Lcom/android/mail/ui/bl;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-interface {p2}, Lcom/android/mail/ui/as;->xZ()Lcom/android/mail/ui/bV;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lcom/android/mail/ui/bl;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V

    .line 50
    new-instance v3, Lcom/android/mail/ui/aH;

    invoke-direct {v3, p1}, Lcom/android/mail/ui/aH;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v4, Lcom/android/mail/ui/aG;

    invoke-direct {v4, p1}, Lcom/android/mail/ui/aG;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f04009b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/NestedFolderTeaserView;

    .line 60
    invoke-interface {p2}, Lcom/android/mail/ui/as;->xZ()Lcom/android/mail/ui/bV;

    move-result-object v5

    invoke-virtual {v0, p3, v5}, Lcom/android/mail/ui/NestedFolderTeaserView;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v5
.end method
