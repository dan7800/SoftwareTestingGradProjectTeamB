.class public abstract Lcom/android/mail/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final Nc:Lcom/android/mail/providers/Account;

.field protected final aob:Lcom/android/mail/ui/as;

.field public final aqp:Lcom/android/mail/providers/Folder;

.field public final axc:I

.field protected final wC:Landroid/view/LayoutInflater;


# direct methods
.method protected constructor <init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/mail/d/d;->aob:Lcom/android/mail/ui/as;

    .line 115
    iput-object p2, p0, Lcom/android/mail/d/d;->aqp:Lcom/android/mail/providers/Folder;

    .line 116
    iput p3, p0, Lcom/android/mail/d/d;->axc:I

    .line 117
    iput-object p4, p0, Lcom/android/mail/d/d;->Nc:Lcom/android/mail/providers/Account;

    .line 118
    invoke-interface {p1}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/d/d;->wC:Landroid/view/LayoutInflater;

    .line 119
    return-void
.end method

.method public static a(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/mail/d/b;

    invoke-direct {v0, p0}, Lcom/android/mail/d/b;-><init>(Lcom/android/mail/ui/as;)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/ui/as;I)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/mail/d/g;

    invoke-direct {v0, p0, p1}, Lcom/android/mail/d/g;-><init>(Lcom/android/mail/ui/as;I)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/android/mail/d/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/d/h;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)Lcom/android/mail/d/d;
    .locals 6

    .prologue
    .line 146
    new-instance v0, Lcom/android/mail/d/a;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/d/a;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)V

    return-object v0
.end method

.method public static a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/android/mail/d/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/d/e;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)V

    return-object v0
.end method

.method public static b(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/android/mail/d/c;

    invoke-direct {v0, p0}, Lcom/android/mail/d/c;-><init>(Lcom/android/mail/ui/as;)V

    return-object v0
.end method

.method public static b(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/android/mail/d/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/d/i;-><init>(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)V

    return-object v0
.end method

.method public static c(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/android/mail/d/j;

    invoke-direct {v0, p0}, Lcom/android/mail/d/j;-><init>(Lcom/android/mail/ui/as;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/mail/utils/p;I)Z
.end method

.method public abstract getType()I
.end method

.method public abstract getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public abstract ta()Z
.end method
