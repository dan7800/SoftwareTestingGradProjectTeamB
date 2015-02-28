.class public abstract Lcom/android/mail/providers/y;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aBH:Lcom/android/mail/ui/cM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/y;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/cM;)Lcom/android/mail/ui/cN;
    .locals 3

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object v0, Lcom/android/mail/providers/y;->mW:Ljava/lang/String;

    const-string v1, "RecentFolderObserver initialized with null controller!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/android/mail/providers/y;->aBH:Lcom/android/mail/ui/cM;

    .line 64
    iget-object v0, p0, Lcom/android/mail/providers/y;->aBH:Lcom/android/mail/ui/cM;

    invoke-interface {v0, p0}, Lcom/android/mail/ui/cM;->k(Landroid/database/DataSetObserver;)V

    .line 65
    iget-object v0, p0, Lcom/android/mail/providers/y;->aBH:Lcom/android/mail/ui/cM;

    invoke-interface {v0}, Lcom/android/mail/ui/cM;->vR()Lcom/android/mail/ui/cN;

    move-result-object v0

    return-object v0
.end method

.method public final um()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mail/providers/y;->aBH:Lcom/android/mail/ui/cM;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/y;->aBH:Lcom/android/mail/ui/cM;

    invoke-interface {v0, p0}, Lcom/android/mail/ui/cM;->l(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
