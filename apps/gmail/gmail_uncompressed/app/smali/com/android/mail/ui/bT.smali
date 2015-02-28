.class public abstract Lcom/android/mail/ui/bT;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field protected Nc:Lcom/android/mail/providers/Account;

.field protected TE:Lcom/android/mail/ui/cX;

.field protected aEs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field protected aKo:Z

.field protected aKp:Lcom/android/mail/providers/Folder;

.field protected aKq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/bT;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/mail/providers/Account;Ljava/util/Collection;ZLcom/android/mail/providers/Folder;Z)Lcom/android/mail/ui/bT;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/providers/Account;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z",
            "Lcom/android/mail/providers/Folder;",
            "Z)",
            "Lcom/android/mail/ui/bT;"
        }
    .end annotation

    .prologue
    .line 62
    if-nez p4, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Lcom/android/mail/ui/cY;

    invoke-direct {v0}, Lcom/android/mail/ui/cY;-><init>()V

    move-object v1, v0

    .line 68
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 69
    const-string v0, "folder"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v0, "account"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    const-string v0, "batch"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v3, "target"

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/mail/providers/Conversation;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 73
    invoke-virtual {v1, v2}, Lcom/android/mail/ui/bT;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1

    .line 66
    :cond_1
    new-instance v0, Lcom/android/mail/ui/cC;

    invoke-direct {v0}, Lcom/android/mail/ui/cC;-><init>()V

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract db(I)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Lcom/android/mail/ui/cX;

    invoke-direct {v0}, Lcom/android/mail/ui/cX;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bT;->TE:Lcom/android/mail/ui/cX;

    .line 84
    invoke-virtual {p0}, Lcom/android/mail/ui/bT;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    const-string v0, "folder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/bT;->aKp:Lcom/android/mail/providers/Folder;

    .line 87
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/bT;->Nc:Lcom/android/mail/providers/Account;

    .line 88
    const-string v0, "batch"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/bT;->aKo:Z

    .line 89
    const-string v0, "target"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/providers/Conversation;

    check-cast v0, [Lcom/android/mail/providers/Conversation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bT;->aEs:Ljava/util/Collection;

    .line 90
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mail/ui/bT;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09012c

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bT;->TE:Lcom/android/mail/ui/cX;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/mail/ui/bT;->aKq:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/mail/ui/bU;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/bU;-><init>(Lcom/android/mail/ui/bT;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    return-object v0
.end method

.method protected final ya()Lcom/android/mail/ui/aP;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/mail/ui/bT;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update conversations while fragment is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/bT;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/as;

    .line 115
    invoke-interface {v0}, Lcom/android/mail/ui/as;->ya()Lcom/android/mail/ui/aP;

    move-result-object v0

    return-object v0
.end method
