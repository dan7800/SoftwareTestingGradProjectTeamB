.class public final Lcom/google/android/gm/ui/n;
.super Lcom/android/mail/ui/aF;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/mail/ui/aF;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;
    .locals 5
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
    const/4 v4, 0x0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/aF;->a(Landroid/content/Context;Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;

    move-result-object v1

    .line 25
    const-string v0, "com.google"

    invoke-virtual {p3}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 29
    const v0, 0x7f0400aa

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/SectionedInboxTeaserView;

    .line 31
    invoke-interface {p2}, Lcom/android/mail/ui/as;->xZ()Lcom/android/mail/ui/bV;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Lcom/google/android/gm/ui/SectionedInboxTeaserView;->a(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bV;)V

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const v0, 0x7f040035

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ads/AdTeaserView;

    .line 36
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gm/ads/AdTeaserView;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;)V

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lcom/google/android/gm/ui/a;

    invoke-direct {v0, p1}, Lcom/google/android/gm/ui/a;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, p3}, Lcom/google/android/gm/ui/a;->z(Lcom/android/mail/providers/Account;)V

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    return-object v1
.end method
