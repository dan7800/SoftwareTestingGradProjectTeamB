.class final Lcom/android/email/mail/store/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final LP:Ljava/io/InputStream;

.field final synthetic QM:Lcom/android/email/mail/store/Pop3Store;

.field private QW:Z

.field private vn:Z


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/email/mail/store/h;->QM:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/h;->QW:Z

    .line 810
    iput-object p2, p0, Lcom/android/email/mail/store/h;->LP:Ljava/io/InputStream;

    .line 811
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 815
    iget-boolean v2, p0, Lcom/android/email/mail/store/h;->vn:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 830
    :goto_0
    return v0

    .line 818
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/h;->LP:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 819
    iget-boolean v3, p0, Lcom/android/email/mail/store/h;->QW:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 820
    iget-object v2, p0, Lcom/android/email/mail/store/h;->LP:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 821
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 822
    iput-boolean v0, p0, Lcom/android/email/mail/store/h;->vn:Z

    .line 823
    iget-object v0, p0, Lcom/android/email/mail/store/h;->LP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move v0, v1

    .line 824
    goto :goto_0

    :cond_1
    move v1, v2

    .line 828
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/mail/store/h;->QW:Z

    move v0, v1

    .line 830
    goto :goto_0

    .line 828
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
