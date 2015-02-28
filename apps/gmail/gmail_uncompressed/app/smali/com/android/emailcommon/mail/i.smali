.class public final Lcom/android/emailcommon/mail/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Xv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Rj:Ljava/lang/String;

.field private Xu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/emailcommon/mail/i;->Xv:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/mail/i;->Rj:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/i;->Xu:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 59
    iget-object v0, p0, Lcom/android/emailcommon/mail/i;->Xu:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 60
    iget-object v6, p0, Lcom/android/emailcommon/mail/i;->Rj:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/emailcommon/mail/i;->Xv:Ljava/util/HashMap;

    :goto_0
    iput-object v0, p0, Lcom/android/emailcommon/mail/i;->Xu:Ljava/util/HashMap;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/emailcommon/mail/i;->Xu:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 60
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v7, :cond_6

    move v4, v5

    :goto_2
    if-eq v2, v7, :cond_3

    if-gt v4, v2, :cond_4

    :cond_3
    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_0

    :cond_6
    move v4, v0

    goto :goto_2
.end method
